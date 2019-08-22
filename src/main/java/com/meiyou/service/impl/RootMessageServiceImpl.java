package com.meiyou.service.impl;

import com.meiyou.mapper.RootMessageMapper;
import com.meiyou.pojo.RootMessage;
import com.meiyou.pojo.RootMessageExample;
import com.meiyou.service.RootMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: meiyouapp
 * @description:
 * @author: JK
 * @create: 2019-08-21 15:27
 **/
@Service
public class RootMessageServiceImpl implements RootMessageService {
    @Autowired
    private RootMessageMapper rootMessageMapper;

    /**
    * @Description: 查询所有动态数据
    * @Author: JK
    * @Date: 2019/8/22
    */
    @Override
    public List<RootMessage> select() {
        RootMessageExample rootMessageExample = new RootMessageExample();
        //设置查询条件，设置系统动态数据表中 name = sincerity_money
        rootMessageExample.createCriteria().andNameEqualTo("sincerity_money");
        List<RootMessage> list = rootMessageMapper.selectByExample(rootMessageExample);
        return list;
    }
}
