package com.meiyou.service.impl;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipaySystemOauthTokenRequest;
import com.alipay.api.request.AlipayUserInfoShareRequest;
import com.alipay.api.response.AlipaySystemOauthTokenResponse;
import com.alipay.api.response.AlipayUserInfoShareResponse;
import com.meiyou.mapper.AuthorizationMapper;
import com.meiyou.mapper.UserMapper;
import com.meiyou.model.AliPayInfo;
import com.meiyou.pojo.Authorization;
import com.meiyou.pojo.AuthorizationExample;
import com.meiyou.pojo.User;
import com.meiyou.service.TencentImService;
import com.meiyou.service.UserService;
import com.meiyou.utils.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;
    @Autowired
    AuthorizationMapper authMapper;
    @Autowired
    TencentImService imService;
    @Resource
    RedisTemplate redisTemplate;


    // 支付宝调用接口之前的初始化
    AlipayClient alipayClient = new DefaultAlipayClient(Constants.ALIURL, Constants.APP_ID,
            Constants.APP_PRIVATE_KEY, Constants.FORMAT, Constants.CHARSET, Constants.ALIPAY_PUBLIC_KEY,
            Constants.SIGN_TYPE);

    @Override
    @Transactional
    public Msg alipayLogin(String auth_code) {

        Msg msg;
        // 支付宝请求
        AlipaySystemOauthTokenRequest request = new AlipaySystemOauthTokenRequest();// 初始化请求
        request.setGrantType("authorization_code");// 值为authorization_code时，代表用code换取；值为refresh_token时，代表用refresh_token换取
        request.setCode(auth_code);// 参数为授权码

        try {
            AlipaySystemOauthTokenResponse response = alipayClient.execute(request);
            if(response.isSuccess()){
                String alipayUserId = response.getUserId();//获取用户id
                AuthorizationExample example = new AuthorizationExample();
                AuthorizationExample.Criteria criteria = example.createCriteria();
                criteria.andIdentityTypeEqualTo(2);//验证方式为支付宝
                criteria.andIdentifierEqualTo(alipayUserId);//唯一支付宝id
                List<Authorization> authorizations = authMapper.selectByExample(example);
                //是否存在该支付宝用户
                if(authorizations.size()>0){
                    Authorization authorization = authorizations.get(0);
                    User user = userMapper.selectByPrimaryKey(authorization.getUserId());//获取用户
                    //验证绑定手机
                    if(authorization.getBoolVerified()){
                        msg  = Msg.success();
                        msg.add("uid",user.getId());
                        msg.add("account",user.getAccount());
                        msg.add("nickName",user.getNickname());
                        msg.add("header",user.getHeader());
                        String token = UUID.randomUUID().toString();
                        //保存token
                        RedisUtil.setToken(String.valueOf(user.getId()),token,Constants.TOKEN_EXPIRES_SECOND);
                        msg.add("token",token);
                        return msg;
                    }else {
                       String account = user.getAccount();
                       msg = Msg.fail();
                       msg.setCode(1000);
                       msg.setMsg("未绑定手机");
                       msg.add("aliId",alipayUserId);
                       msg.add("aliToken",authorization.getCredential());//阿里token
                       return msg;
                    }
                }
                //不存在用户支付宝信息获取
                else{
                    String access_token = response.getAccessToken();// 访问令牌,通过该令牌调用需要用户信息授权的接口，如alipay.user.info.share
                    System.out.println("授权令牌：" + access_token);
                    AlipayUserInfoShareRequest infoShareRequest = new AlipayUserInfoShareRequest();
                    AlipayUserInfoShareResponse infoShareResponse = alipayClient.execute(infoShareRequest, access_token);
                    if (infoShareResponse.isSuccess()) {
                        Map<String, Object> map = new HashMap<>();
                        AliPayInfo alipayinfo = new AliPayInfo();
                        alipayinfo.setUserId(infoShareResponse.getUserId()); // 支付宝id
                        alipayinfo.setAvatar(infoShareResponse.getAvatar()); // 支付宝头像URL
                        alipayinfo.setGender(infoShareResponse.getGender()); // 支付宝性别
                        System.out.println("手机号" + infoShareResponse.getPhone());//
                        alipayinfo.setIs_certied(infoShareResponse.getIsCertified()); // 支付宝是否实名
                        alipayinfo.setNick_name(infoShareResponse.getNickName()); // 支付宝昵称


                        User user = new User();
                        String userAccount = UUID.randomUUID().toString();//UUID生成账号
                        user.setAccount(userAccount);
                        user.setBgPicture(Constants.USER_BAC_DEFAULT);//设置默认背景
                        user.setBindAlipay(false);//未绑定支付宝
                        user.setBirthday(Constants.USER_BIRTHDAY);//设置默认出生年月
                        user.setBoolClose(true);
                        user.setHeader(alipayinfo.getAvatar());//设置头像
                        user.setNickname(alipayinfo.getNick_name());//设置昵称
                        Date date = new Date();
                        user.setCreateTime(date);
                        user.setUpdateTime(date);
                        user.setMoney(0f);
                        user.setSignature(Constants.SIGNATURE);//设置默认签名
                        if(alipayinfo.getGender().equals("F")){
                            user.setSex(false);//女
                        }else {
                            user.setSex(true);//男
                        }
                        user.setShareCode(ShareCodeUtil.toSerialCode(2));//设置邀请码
                        if(userMapper.insert(user)==1){
                            int uid = user.getId();//获取插入的用户
                            Authorization authorization = new Authorization();
                            authorization.setBoolVerified(false);//设置为激活状态
                            authorization.setCreateTime(date);
                            authorization.setIdentifier(alipayUserId);
                            authorization.setUpdateTime(date);
                            authorization.setIdentityType(2);//设置支付宝方式
                            authorization.setCredential(access_token);//授权凭证
                            authorization.setUserId(uid);//设置用户id
                            if(authMapper.insert(authorization)==1){
                                if(imService.registTencent(user)){
                                    msg = Msg.success();
                                    msg.setCode(1000);//10001需要绑定手机
                                    msg.add("uid",user.getId());
                                    msg.add("account",user.getAccount());
                                    msg.add("nickName",user.getNickname());
                                    msg.add("header",user.getHeader());
                                    msg.add("aliId",authorization.getIdentifier());//阿里ID
                                    msg.add("token",authorization.getCredential());//授权凭证
                                    msg.add("aliId",alipayUserId);
                                    msg.add("aliToken",authorization.getCredential());
                                    return msg;
                                }else {
                                    msg = Msg.fail();
                                    msg.setMsg("腾讯云账号注册失败");
                                    return msg;
                                }
                            }
                            msg = Msg.fail();
                            return msg;
                        }
                    } else {
                        System.out.println("支付宝令牌授权失败");
                        System.out.println("错误码" + infoShareResponse.getCode());
                        System.out.println("明细错误码" + infoShareResponse.getSubCode());
                        System.out.println("调用失败!" + infoShareResponse.getMsg());
                    }
                }
            }
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }

        return Msg.fail();
    }

    @Override
    public Msg phoneLogin(String phone, String password) {

        AuthorizationExample example = new AuthorizationExample();
        AuthorizationExample.Criteria criteria = example.createCriteria();
        criteria.andIdentifierEqualTo(phone);//身份标识（手机）
        criteria.andIdentityTypeEqualTo(1);//授权类型未手机
        criteria.andCredentialEqualTo(password); //密码
        criteria.andBoolVerifiedEqualTo(true);//已激活
        List<Authorization> authorizations = authMapper.selectByExample(example);//查询用户
        if(authorizations.size()==1){   //授权通过e
            Authorization authorization  = authorizations.get(0);
            int uid = authorization.getUserId();//用户id
            User user = userMapper.selectByPrimaryKey(uid);//查询用户
            Msg msg = Msg.success();
            msg.add("uid",user.getId());
            msg.add("account",user.getAccount());
            msg.add("nickName",user.getNickname());
            msg.add("header",user.getHeader());
            String token = UUID.randomUUID().toString();//UUID生成token
            if(!RedisUtil.setToken(String.valueOf(user.getId()),token,Constants.TOKEN_EXPIRES_SECOND)){
                System.out.println("写入token失败");
            }
            msg.add("token",token);
            return msg;
        }else if(authorizations == null ||authorizations.size() == 0 ){
           Msg msg = Msg.fail();
           msg.setMsg("用户名或密码错误");
           return msg;
        }else{
            System.out.println("手机号用户重复！！！！！");
            return Msg.fail();
        }
    }


    @Override
    public Msg userRegist(String code, String phone, String password,  String nickname,
                          String birthday, boolean sex, String signature, MultipartFile img, HttpServletRequest req) {
        Msg msg;
        //校验验证码

        if(RedisUtil.authCode(phone,code)){
            //检测手机号
            AuthorizationExample example = new AuthorizationExample();
            AuthorizationExample.Criteria criteria = example.createCriteria();
            criteria.andIdentityTypeEqualTo(1);//手机号
            criteria.andIdentifierEqualTo(phone);
            if(authMapper.selectByExample(example).size()>0){
                msg = Msg.fail();
                msg.setCode(1001);//手机号被注册
                msg.setMsg("手机号已注册");
                return msg;
            }else{
                User user = new User();
                String account = UUID.randomUUID().toString();//用户账号
                String shareCode = ShareCodeUtil.toSerialCode(1);//邀请码生成
                user.setShareCode(shareCode);//邀请码
                user.setAccount(account);
                user.setSex(sex);
                user.setNickname(nickname);
                Date date = new Date();
                user.setSignature(signature);
                user.setMoney(0f);
                user.setCreateTime(date);
                user.setUpdateTime(date);
                user.setBindAlipay(false);
                user.setBirthday(birthday);
                user.setBoolClose(false);
                user.setBgPicture(Constants.USER_BAC_DEFAULT);

                //文件上传判断
                Msg fileMsg = FileUploadUtil.uploadUtil(img,"headers",req);
                if(fileMsg.getCode()==100){
                    user.setHeader((String) fileMsg.getExtend().get("path"));
                    if(userMapper.insert(user)==1){
                        int uid = user.getId();
                        Authorization authorization = new Authorization();
                        authorization.setUserId(uid);
                        authorization.setIdentityType(1);
                        authorization.setCredential(password);
                        authorization.setBoolVerified(true);
                        authorization.setUpdateTime(date);
                        authorization.setCreateTime(date);
                        authorization.setIdentifier(phone);
                        if(authMapper.insert(authorization)>0){
                            if(imService.registTencent(user)){
                                return Msg.success();
                            }else{
                                msg = Msg.fail();
                                msg.setMsg("腾讯云账号注册失败");
                                return msg;
                            }
                        }
                    }
                }else {
                    msg = Msg.fail();
                    msg.setCode(1003);
                    msg.setMsg("头像上传失败");
                    System.out.println(msg.toString());
                    return msg;
                }



            }
        }else {
            System.out.println("验证码错误");
            msg = Msg.fail();
            msg.setCode(1000);
            msg.setMsg("验证码错误");
            return msg;
        }
        return Msg.fail();
    }


}