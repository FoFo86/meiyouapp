package com.meiyou.controller;

import com.meiyou.pojo.Shop;
import com.meiyou.service.AdminShopManagementService;
import com.meiyou.utils.Msg;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @description:
 * @author: Mr.Z
 * @create: 2019-08-28 11:10
 **/
@RestController
@Api(value = "管理员同城导游控制器",tags = "用来查看整个同城导游情况")
public class AdminShopManagementController {

    @Autowired
    AdminShopManagementService service;

    @PostMapping("/findAllShop")
    @ApiOperation(value = "查找全部同城导游",notes = "查找")
    public Msg findAllShop(){
        Msg msg = new Msg();
        List<Shop> shops = service.selectAll();
        if(shops == null && shops.size() == 0){
            return Msg.fail();
        }
        msg.setCode(100);
        msg.setMsg("已找到");
        msg.add("shops",shops);
        return msg;
    }

    @GetMapping("/findBySid")
    @ApiOperation(value = "查找指定的景点商家",notes = "查找")
    public Msg findBySid(@RequestParam("sid") Integer sid){
        Msg msg = new Msg();
        Shop shop = service.selectBySid(sid);
        if(shop == null){
            msg.setMsg("没有找到");
            msg.setCode(404);
            return msg;
        }
        msg.setCode(100);
        msg.setMsg("成功");
        msg.add("shop",shop);
        return msg;
    }

    /**
    * @Description: 分页查询所有的导游
    * @Author: JK
    * @Date: 2019/8/29
    */
    @ApiOperation(value = "分页查询所有的导游", notes = "分页查询所有的导游", httpMethod = "POST")
    @RequestMapping(value = "selectAllShopByPage")
    public Map<String,Object> selectAllShopByPage(Integer page, Integer limit, Integer publisherId, Integer state){
        return service.selectAllShopByPage(page,limit,publisherId,state);
    }
}
