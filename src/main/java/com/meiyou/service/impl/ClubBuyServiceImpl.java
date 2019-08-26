package com.meiyou.service.impl;

import com.meiyou.mapper.ClubBuyMapper;
import com.meiyou.mapper.ClubMapper;
import com.meiyou.mapper.ClubStarMapper;
import com.meiyou.mapper.UserMapper;
import com.meiyou.pojo.*;
import com.meiyou.service.ClubBuyService;
import com.meiyou.utils.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @description: 会所购买业务层接口实现类
 * @author: Mr.Z
 * @create: 2019-08-21 15:38
 **/
@Service
public class ClubBuyServiceImpl extends BaseServiceImpl implements ClubBuyService {

    @Autowired
    ClubBuyMapper clubBuyMapper;

    @Autowired
    UserMapper userMapper;

    @Autowired
    ClubMapper clubMapper;

    @Autowired
    ClubStarMapper clubStarMapper;

    /**
     * 生成购买会所记录
     * @param clubBuy
     * @return
     */
    @Transactional
    @Override
    public Msg addBuyClub(ClubBuy clubBuy,String token,Integer password) {
//        if(!RedisUtil.authToken(clubBuy.getBuyerId().toString(),token)){
//            return Msg.noLogin();
//        }
        Msg msg = new Msg();
        clubBuy.setCreateTime(new Date());
        clubBuy.setUpdateTime(new Date());

        //从系统数据表获取报名费用
        String ask_money = getRootMessage("ask_money");

        //获取购买者的支付密码,余额及需要支付的费用(报名缴费+会所项目缴费)
        User result = getUserByUid(clubBuy.getBuyerId());
        String payWord = result.getPayWord();
        Float money = result.getMoney();
        Integer price = clubMapper.selectByPrimaryKey(clubBuy.getClubId()).getProjectPrice()
                +Integer.valueOf(ask_money);

        if(payWord.equals("")){
            msg.setMsg("请设置支付密码!");
            msg.setCode(1000);
            return msg;
        }
        if(!payWord.equals(password.toString())){
            msg.setMsg("支付密码错误!");
            msg.setCode(1001);
            return msg;
        }
        if(money < price){
            msg.setMsg("发布失败,账户余额不足!");
            msg.setCode(1002);
            return msg;
        }else {
            clubBuyMapper.insertSelective(clubBuy);
            System.out.println(clubBuy.getId());

            //计算剩余金额
            User user = new User();
            money = money - Float.valueOf(price);
            user.setMoney(money);
            Date date = new Date();
            user.setUpdateTime(date);

            //执行扣钱的操作
            UserExample userExample = new UserExample();
            userExample.createCriteria().andIdEqualTo(clubBuy.getBuyerId());
            userMapper.updateByExampleSelective(user, userExample);

            return Msg.success();
        }
    }

    /**
     * 取消购买(退款全部)
     * @param uid
     * @param cid
     * @param token
     * @return
     */
    @Transactional
    @Override
    public Msg updateBuyClub(Integer uid,Integer cid,String token) {
//        if(!RedisUtil.authToken(uid.toString(),token)){
//            return Msg.noLogin();
//        }

        //从系统数据表获取置顶费用
        String ask_money = getRootMessage("ask_money");

        //获取项目金额
        Integer projectPrice = clubMapper.selectByPrimaryKey(cid).getProjectPrice();

        //修改购买表状态
        ClubBuy clubBuy = new ClubBuy();
        clubBuy.setState(2);
        clubBuy.setUpdateTime(new Date());

        ClubBuyExample clubBuyExample = new ClubBuyExample();
        clubBuyExample.createCriteria().andBuyerIdEqualTo(uid).andClubIdEqualTo(cid);
        clubBuyMapper.updateByExampleSelective(clubBuy,clubBuyExample);

        //退钱操作
        Float money = Float.valueOf(ask_money)+Float.valueOf(projectPrice);
        User user = getUserByUid(uid);
        user.setMoney(user.getMoney()+money);
        user.setUpdateTime(new Date());

        UserExample userExample = new UserExample();
        userExample.createCriteria().andIdEqualTo(uid);
        userMapper.updateByExampleSelective(user,userExample);

        return Msg.success();
    }

    @Override
    public Msg updateClubBuy(Integer uid, Integer cid, String token) {
        return null;
    }

    /**
     * 查找指定用户的会所购买记录
     * @param uid
     * @return
     */
    @Override
    @Cacheable(cacheNames = "buy")
    public List<ClubBuy> selectByUid(Integer uid,String token) {
//        if(!RedisUtil.authToken(clubBuy.getBuyerId().toString(),token)){
//            return Msg.noLogin();
//        }

        Msg msg = new Msg();
        //查找购买按摩会所的记录
        ClubBuyExample clubBuyExample = new ClubBuyExample();
        //购买者id为uid的购买记录
        clubBuyExample.createCriteria().andBuyerIdEqualTo(uid);

        List<ClubBuy> result = clubBuyMapper.selectByExample(clubBuyExample);

        return result;
    }


    /**
     * 查找指定的会所购买记录
     * @param uid
     * @param cid
     * @param token
     * @return
     */
    @Override
    public Msg selectByCid(Integer uid, Integer cid, String token) {
//        if(!RedisUtil.authToken(uid.toString(),token)){
//            return Msg.noLogin();
//        }

        ClubBuyExample clubBuyExample = new ClubBuyExample();
        clubBuyExample.createCriteria().andClubIdEqualTo(cid).andBuyerIdEqualTo(uid);
        List<ClubBuy> result = clubBuyMapper.selectByExample(clubBuyExample);
        Msg msg = new Msg();
        if(result == null){
            msg.setCode(404);
            msg.setMsg("找不到指定的会所购买记录");
            return msg;
        }
        msg.add("clubBuy", result.get(0));
        msg.setMsg("成功");
        msg.setCode(100);
        return msg;
    }

    /**
     * 评星
     * @param uid
     * @param token
     * @param cid
     * @param star
     * @return
     */
    @Override
    public Msg addClubStar(Integer uid, String token, Integer cid,Integer star) {
//        if(!RedisUtil.authToken(uid.toString(),token)){
//            return Msg.noLogin();
//        }

        ClubBuyExample clubBuyExample = new ClubBuyExample();
        clubBuyExample.createCriteria().andClubIdEqualTo(cid).andBuyerIdEqualTo(uid);
        List<ClubBuy> result = clubBuyMapper.selectByExample(clubBuyExample);
        Msg msg = new Msg();
        if(result == null){
            msg.setCode(404);
            msg.setMsg("找不到指定的会所购买记录");
            return msg;
        }
        //判断订单状态是否完成(完成了才可以评星)
        if(result.get(0).getState() != 1){
            return Msg.fail();
        }
        ClubStar clubStar = new ClubStar();
        clubStar.setClubId(cid);
        clubStar.setEvaluationId(uid);
        clubStar.setStar(star);
        clubStar.setCreateTime(new Date());
        clubStar.setUpdateTime(new Date());
        int i = clubStarMapper.insertSelective(clubStar);
        if(i != 1){
            return Msg.fail();
        }
        return Msg.success();
    }

}
