package com.meiyou.service.impl;

import com.meiyou.mapper.AppointAskMapper;
import com.meiyou.mapper.AppointmentMapper;
import com.meiyou.mapper.UserMapper;
import com.meiyou.model.Coordinate;
import com.meiyou.pojo.*;
import com.meiyou.service.AppointmentService;
import com.meiyou.utils.AppointmentUtil;
import com.meiyou.utils.Constants;
import com.meiyou.utils.Msg;
import com.meiyou.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @program: meiyouapp
 * @description: 约会接口实现类
 * @author: JK
 * @create: 2019-08-21 14:12
 **/
@Service
public class AppointmentServiceImpl implements AppointmentService {
    @Autowired
    private AppointmentMapper appointmentMapper;
    @Autowired
    private AppointAskMapper appointAskMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private AppointmentUtil appointmentUtil;

    /**
     * @Description: 发布约会
     * @Author: JK
     * @Date: 2019/8/21
     */
    @Transactional
    @Override
    public Msg insert(Appointment appointment, String password, String token, double latitude, double longitude) {
        Msg msg = new Msg();
        boolean authToken = RedisUtil.authToken(appointment.getPublisherId().toString(), token);
        //判断是否登录
        if (!authToken) {
            return Msg.noLogin();
        }

        //根据发布者id查询出他所有信息
        User user = userMapper.selectByPrimaryKey(appointment.getPublisherId());
        //获取发布者账户余额
        Float money = user.getMoney();
        //获取发布金
        String publishMoneyName = "publish_money";
        int publishMoneyValue = appointmentUtil.getRootMessage(publishMoneyName);

        //判断用户输入密码是否正确
        if (!password.equals(user.getPayWord())) {
            msg.setCode(1001);
            msg.setMsg("支付密码错误");
            return msg;
        }

        //获取诚意金
        String sincerityMoneyName = "sincerity_money";
        int sincerityMoneyValue = appointmentUtil.getRootMessage(sincerityMoneyName);

        //选择平台担保扣款后剩余余额
        float balance = money - (publishMoneyValue + appointment.getReward());
        //选择线下付款扣款后剩余余额
        float balance1 = money - (publishMoneyValue + sincerityMoneyValue + appointment.getReward());

        //如果选择线下付款
        if (appointment.getPayType() == 1) {
            if (balance1 < 0) {
                msg.setCode(1002);
                msg.setMsg("余额不足");
                return msg;
            }
            user.setMoney(balance1);
        } else {
            if (balance < 0) {
                msg.setCode(1002);
                msg.setMsg("余额不足");
                return msg;
            }
            user.setMoney(balance);
        }

        UserExample userExample = new UserExample();
        userExample.createCriteria().andIdEqualTo(appointment.getPublisherId());
        //更新用户账户余额
        userMapper.updateByExample(user, userExample);

        int i = appointmentMapper.insertSelective(appointment);
        if (i == 1) {
            //获取发布时定位
            Coordinate coordinate = new Coordinate();
            coordinate.setLatitude(latitude);
            coordinate.setLongitude(longitude);
            coordinate.setKey(appointment.getId().toString());
            RedisUtil.addReo(coordinate, Constants.GEO_APPOINTMENT);
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    /**
     * @Description: 查询我的约会发布列表
     * @Author: JK
     * @Date: 2019/8/22
     */
    @Override
    public Msg selectAppointmentList(String uid, String token) {
        Msg msg = new Msg();
        boolean authToken = RedisUtil.authToken(uid, token);
        //判断是否登录
        if (!authToken) {
            Msg noLogin = Msg.noLogin();
            msg.add("noLogin", noLogin);
            return msg;
        }
        AppointmentExample example = new AppointmentExample();
        example.createCriteria().andPublisherIdEqualTo(Integer.parseInt(uid));
        List<Appointment> appointments = appointmentMapper.selectByExample(example);

        ArrayList<Object> arrayList = new ArrayList<>();

        int size = 0;
        for (Appointment appointment : appointments) {
            HashMap<String, Object> map = new HashMap<>();
            AppointAskExample appointAskExample = new AppointAskExample();
            appointAskExample.createCriteria().andAskStateEqualTo(1).andAppointIdEqualTo(appointment.getId());
            List<AppointAsk> list = appointAskMapper.selectByExample(appointAskExample);
            //获取报名的总人数
            size = list.size();
            map.put("size", size);
            appointment.getId();
            appointment.getPublisherId();
            appointment.getAppointAddress();
            appointment.getAppointTime();
            appointment.getAppointContext();
            appointment.getNeedNumber();
            appointment.getPayType();
            appointment.getAppointImgs();
            appointment.getReward();
            appointment.getState();
            appointment.getConfirmId();
            appointment.getCreateTime();
            appointment.getUpdateTime();

            map.put("appointment", appointment);
            arrayList.add(map);
        }

        if (appointments != null && appointments.size() != 0) {
            Msg success = Msg.success();
            msg.add("arrayList", arrayList);
            msg.add("success", success);
            return msg;
        }
        Msg fail = Msg.fail();
        msg.add("fail", fail);
        return msg;
    }

    /**
     * @Description: 取消发布约会订单
     * @Author: JK
     * @Date: 2019/8/22
     */
    @Transactional
    @Override
    public Msg deletePublish(Integer id, String token) {
        Appointment appointment = appointmentMapper.selectByPrimaryKey(id);
        boolean authToken = RedisUtil.authToken(appointment.getPublisherId().toString(), token);
        Msg msg = new Msg();
        //判断是否登录
        if (!authToken) {
            return Msg.noLogin();
        }
        //获取当前订单状态
        Integer state = appointment.getState();
        int i = 0;
        if (state == 1) {
            AppointmentExample example = new AppointmentExample();
            example.createCriteria().andIdEqualTo(id);
            appointment.setState(5);
            appointment.setUpdateTime(new Date());
            i = appointmentMapper.updateByExample(appointment, example);
            if (i == 1) {
                return Msg.success();
            }
            return Msg.fail();
        }
        msg.setCode(1005);
        msg.setMsg("不能取消订单");
        return msg;
    }

    /**
     * @Description: 从多个约会订单中选择一个进行报名
     * @Author: JK
     * @Date: 2019/8/22
     */
    @Transactional
    @Override
    public Msg startEnrollment(String uid, String password, Integer id, String token) {
        Msg msg = new Msg();
        boolean authToken = RedisUtil.authToken(uid, token);
        //判断是否登录
        if (!authToken) {
            return Msg.noLogin();
        }
        //根据报名者id查询出他所有信息
        User user = userMapper.selectByPrimaryKey(Integer.parseInt(uid));
        //获取报名者账户余额
        Float money = user.getMoney();

        //获取报名金的金额
        String askMoneyName = "ask_money";
        int askMoneyValue = appointmentUtil.getRootMessage(askMoneyName);


        //判断用户输入密码是否正确
        if (!password.equals(user.getPayWord())) {
            msg.setCode(1001);
            msg.setMsg("支付密码错误");
            return msg;
        }
        //报名扣款后剩余余额
        float balance = money - askMoneyValue;

        if (balance < 0) {
            msg.setCode(1002);
            msg.setMsg("余额不足");
            return msg;
        }
        user.setMoney(balance);

        UserExample userExample = new UserExample();
        userExample.createCriteria().andIdEqualTo(Integer.parseInt(uid));
        //更新报名者账户余额
        userMapper.updateByExample(user, userExample);

        AppointAsk appointAsk = new AppointAsk();
        appointAsk.setAskerId(Integer.parseInt(uid));
        appointAsk.setAppointId(id);
        appointAsk.setAskState(1);
        appointAsk.setCreateTime(new Date());
        appointAsk.setUpdateTime(new Date());
        //约会记录表中增加一条记录
        appointAskMapper.insertSelective(appointAsk);
        //根据约会订单表id查出该订单所有信息
        Appointment appointment = appointmentMapper.selectByPrimaryKey(id);
        AppointmentExample example = new AppointmentExample();
        example.createCriteria().andIdEqualTo(id);
        appointment.setState(2);
        appointment.setUpdateTime(new Date());
        //更改该订单状态
        int i = appointmentMapper.updateByExample(appointment, example);
        if (i == 1) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    /**
     * @Description: 取消报名, 退还美金
     * @Author: JK
     * @Date: 2019/8/23
     */
    @Override
    public Msg endEnrollment(String uid, Integer id, String token) {
        boolean authToken = RedisUtil.authToken(uid, token);
        //判断是否登录
        if (!authToken) {
            return Msg.noLogin();
        }
        AppointAskExample appointAskExample = new AppointAskExample();
        appointAskExample.createCriteria().andAppointIdEqualTo(id)
                .andAskerIdEqualTo(Integer.parseInt(uid))
                .andAskStateEqualTo(1);
        AppointAsk appointAsk = new AppointAsk();
        appointAsk.setAskState(0);
        appointAsk.setUpdateTime(new Date());


        //将报名人员从报名态改为未报名态
        int i = appointAskMapper.updateByExampleSelective(appointAsk, appointAskExample);

        AppointAskExample appointAskExample1 = new AppointAskExample();
        appointAskExample1.createCriteria().andAppointIdEqualTo(id)
                .andAskStateEqualTo(1);
        //获取当前约会订单报名人数
        List<AppointAsk> appointAsks = appointAskMapper.selectByExample(appointAskExample1);
        //当前约会订单报名人数为空并且为0，则修改该约会订单状态为1
        if (appointAsks == null || appointAsks.size() == 0){
            AppointmentExample appointmentExample = new AppointmentExample();
            appointmentExample.createCriteria().andIdEqualTo(id);
            Appointment appointment = new Appointment();
            appointment.setState(1);
            appointment.setUpdateTime(new Date());
            appointmentMapper.updateByExampleSelective(appointment,appointmentExample);
        }


        //根据报名者id查询出他所有信息
        User user = userMapper.selectByPrimaryKey(Integer.parseInt(uid));
        //获取发布者账户余额
        Float money = user.getMoney();
        //获取报名金的金额
        String askMoneyName = "ask_money";
        int askMoneyValue = appointmentUtil.getRootMessage(askMoneyName);
        //金额退还后账户余额
        float balance = money + askMoneyValue;

        UserExample userExample = new UserExample();
        userExample.createCriteria().andIdEqualTo(Integer.parseInt(uid));
        User user1 = new User();
        user1.setMoney(balance);
        int i1 = userMapper.updateByExampleSelective(user1, userExample);

        int i2 = i + i1;
        if (i2 == 2){
            return Msg.success();
        }
        return Msg.fail();
    }

    /**
     * @Description: 查询所有报名某个约会的人员信息
     * @Author: JK
     * @Date: 2019/8/22
     */
    @Override
    public Msg selectAppointAskList(String uid, Integer appointId, String token) {
        Msg msg = new Msg();
        boolean authToken = RedisUtil.authToken(uid, token);
        //判断是否登录
        if (!authToken) {
            Msg noLogin = Msg.noLogin();
            msg.add("noLogin", noLogin);
            return msg;
        }
        AppointAskExample example = new AppointAskExample();
        example.createCriteria().andAppointIdEqualTo(appointId);
        List<AppointAsk> appointAsks = appointAskMapper.selectByExample(example);

        if (appointAsks != null && appointAsks.size() != 0) {
            Msg success = Msg.success();
            msg.add("appointAsks", appointAsks);
            msg.add("success", success);
            return msg;
        }
        Msg fail = Msg.fail();
        msg.add("fail", fail);
        return msg;
    }

    /**
     * @Description: 从所有报名某个约会的人员信息中选择一个进行确认,
     * 没有被选中的人退还报名金
     * @Author: JK
     * @Date: 2019/8/22
     */
    @Transactional
    @Override
    public Msg confirmUserId(String uid, Integer askerId, Integer appointId, String token) {
        boolean authToken = RedisUtil.authToken(uid, token);
        //判断是否登录
        if (!authToken) {
            return Msg.noLogin();
        }
        Appointment appointment = appointmentMapper.selectByPrimaryKey(appointId);
        AppointmentExample example = new AppointmentExample();
        example.createCriteria().andIdEqualTo(appointId);
        appointment.setConfirmId(askerId);
        //在约会表中3是选中人员等待赴约状态
        appointment.setState(3);
        appointment.setUpdateTime(new Date());
        int i = appointmentMapper.updateByExample(appointment, example);


        AppointAsk appointAsk = new AppointAsk();
        AppointAskExample appointAskExample = new AppointAskExample();
        appointAskExample.createCriteria().andAskerIdEqualTo(askerId)
                .andAskStateEqualTo(1);

        //约会报名表中2是被选中状态
        appointAsk.setAskState(2);
        appointAsk.setUpdateTime(new Date());
        int i1 = appointAskMapper.updateByExampleSelective(appointAsk, appointAskExample);

        AppointAskExample appointAskExample1 = new AppointAskExample();
        appointAskExample1.createCriteria().andAskStateEqualTo(1)
                .andAskerIdNotEqualTo(askerId);

        List<AppointAsk> appointAsks = appointAskMapper.selectByExample(appointAskExample1);
        int i2 = 0;
        int i3 = 0;
        if (appointAsks != null && appointAsks.size() != 0) {
            for (AppointAsk ask : appointAsks) {
                AppointAsk appointAsk1 = new AppointAsk();
                //获取申请人ID
                Integer askerId1 = ask.getAskerId();
                //根据报名者id查询出他所有信息
                User user = userMapper.selectByPrimaryKey(askerId1);
                //获取发布者账户余额
                Float money = user.getMoney();
                //获取报名金的金额
                String askMoneyName = "ask_money";
                int askMoneyValue = appointmentUtil.getRootMessage(askMoneyName);
                //金额退还后账户余额
                float balance = money + askMoneyValue;

                //没有被选中状态改为3
                appointAsk1.setAskState(3);
                appointAsk1.setUpdateTime(new Date());
                i2 = appointAskMapper.updateByExampleSelective(appointAsk1, appointAskExample1);

                User user1 = new User();
                UserExample userExample = new UserExample();
                userExample.createCriteria().andIdEqualTo(askerId1);
                user1.setMoney(balance);
                user1.setUpdateTime(new Date());
                i3 = userMapper.updateByExampleSelective(user1, userExample);
            }
        }

        int i4 = i + i1 + i2 + i3;
        if (i4 == 4) {
            return Msg.success();
        }
        return Msg.fail();
    }

    /**
     * @Description: 对方取消赴约，重新发布，不退还报名金
     * @Author: JK
     * @Date: 2019/8/23
     */
    @Override
    public Msg endAppointment(String uid, Integer id, String token) {
        return null;
    }

    /**
     * @Description: 自己重新发布，退还报名金
     * @Author: JK
     * @Date: 2019/8/23
     */
    @Override
    public Msg againRelease(String uid, Integer id, String token) {
        return null;
    }

    /**
     * @Description: 报名人确认赴约
     * @Author: JK
     * @Date: 2019/8/23
     */
    @Override
    public Msg confirmAppointment(String uid, Integer id, String token) {
        return null;
    }

    /**
     * @Description: 确认报名人已到达
     * @Author: JK
     * @Date: 2019/8/23
     */
    @Override
    public Msg confirmArrive(String uid, Integer id, String token) {
        return null;
    }
}
