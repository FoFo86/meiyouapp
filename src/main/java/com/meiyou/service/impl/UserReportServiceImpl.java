package com.meiyou.service.impl;

import cn.hutool.core.date.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.meiyou.mapper.UserMapper;
import com.meiyou.mapper.UserReportMapper;
import com.meiyou.model.LayuiTableJson;
import com.meiyou.pojo.*;
import com.meiyou.service.UserReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * @author ：huangzhaoyang
 * @date ：Created in 2019/8/30 14:26
 * @description：用户举报业务实现层
 * @modified By：huangzhaoyang
 * @version: 1.0.0
 */
@Service
public class UserReportServiceImpl implements UserReportService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserReportMapper userReportMapper;

    /**
     * 获得所有用户举报信息
     *
     * @return
     */
    @Override
    public LayuiTableJson listUserReport(int page, int limit) {
        PageHelper.startPage(page, limit);
        List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
        UserReportExample example = new UserReportExample();
        example.setOrderByClause("id desc");
        //获得所有举报信息
        List<UserReport> userReportList = userReportMapper.selectByExample(example);
        if (userReportList == null || userReportList.isEmpty()) {
            return LayuiTableJson.fail();
        }
        //遍历举报表
        for (UserReport report : userReportList) {
            //查找举报人信息
            User reporter = userMapper.selectByPrimaryKey(report.getReporterId());
            if (reporter == null) {
                continue;
            }
            //查找被举报人信息
            User reportedPerson = userMapper.selectByPrimaryKey(report.getReportedPersonId());
            if (reportedPerson == null) {
                continue;
            }
            //举报人
            HashMap<String, Object> hashMap = new HashMap<String, Object>();
            //举报编号
            hashMap.put("report_id", report.getId());
            hashMap.put("reporter", "[" + reporter.getId() + "]" + reporter.getNickname());
            hashMap.put("reported", "[" + reportedPerson.getId() + "]" + reportedPerson.getNickname());
            hashMap.put("reportedBoolClose", reporter.getBoolClose());
            hashMap.put("type", report.getType());
            hashMap.put("content", report.getContent());
            hashMap.put("time", report.getCreateTime());
            list.add(hashMap);
        }
        if (list.isEmpty()) {
            HashMap<String, Object> hashMapNo = new HashMap<String, Object>();
            hashMapNo.put("report_id", 0);
            hashMapNo.put("reporter", "没有举报人");
            hashMapNo.put("reported", "没有被举报人");
            hashMapNo.put("reportedBoolClose", false);
            hashMapNo.put("type", "[无类型]");
            hashMapNo.put("content", "无举报内容");
            hashMapNo.put("time", "时间不存在");
            list.add(hashMapNo);
        }
        PageInfo pageInfo = new PageInfo(list);
        return LayuiTableJson.success().addCount(getUserReportTotolCount()).addData(pageInfo);
    }

    /**
     * 获得用户举报总条数
     *
     * @return
     */
    @Override
    public int getUserReportTotolCount() {
        int count = 0;
        //搜索用户举报表
        List<UserReport> userReportList = userReportMapper.selectByExample(null);
        if (userReportList == null) {
            return count;
        }
        for (UserReport userReport : userReportList) {
            //查找举报人是否存在
            User user = userMapper.selectByPrimaryKey(userReport.getReporterId());
            //查找被举报人是否存在
            User reported = userMapper.selectByPrimaryKey(userReport.getReporterId());
            if (user == null || reported == null) {
                continue;
            }
            count++;
        }
        return count;
    }
}
