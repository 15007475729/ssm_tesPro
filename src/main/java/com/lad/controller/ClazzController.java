package com.lad.controller;

import com.lad.base.BaseController;
import com.lad.dao.ClassesMapper;
import com.lad.entity.Classes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping("clazz")
@Controller
public class ClazzController extends BaseController<Classes>{

    @Autowired
    ClassesMapper classesMapper;

//    select distinct name from table
    @RequestMapping("querydisclazz")
    public void queryAll(HttpServletResponse response) throws IOException {
        List<Classes> list = classesMapper.querydisClazz();
        for (Classes clazz : list){
            System.out.println(clazz.getCsn());
        }
        write(response,list);
    }



}
