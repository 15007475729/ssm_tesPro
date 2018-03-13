package com.lad.controller;

import com.lad.dao.UsersMapper;
import com.lad.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @Autowired
    UsersMapper usersMapper;

//    @RequestMapping("add.action")
//    public String index(UserEntity userEntity) {
//        System.out.println(userEntity.getUname());
//        List<UserEntity> userEntities = usersDao.queryAll();
//        System.out.println(userEntities.size());
//        return "index";
//    }

//    step over     单步跳过
//    step into     单步跳入
//    step out      单步跳出
//    resume program

    //    当一个bean没有配置在上下文当中，但他又想访问spring中的一个bean
//    通过中间类rediscacheTransfer，解决redistemplate静态注入
    @RequestMapping("login")
    public String login(Users userEntity) {
        Users entity = usersMapper.login(userEntity);
        String html = "index";
        try {
            System.out.println(entity.getUname());
        } catch (NullPointerException e) {
            html = "login";
        }
        return html;
    }




}
