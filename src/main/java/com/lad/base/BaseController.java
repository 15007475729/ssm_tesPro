package com.lad.base;

import com.alibaba.fastjson.JSON;
import com.lad.entity.Fuzzy;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BaseController<K> {

    //生成查询条件
//    public String where(Fuzzy fuzzy){
//        String where = "";
//        if(fuzzy.getVal()!=null&&fuzzy.getVal()!=""){
//            where = "where "+fuzzy.getTerm()+" like fuzz"
//        }
//        return "";
//    }

    //提交数据
    public void write(HttpServletResponse response, Object object) throws IOException {
        response.setContentType("text/html,charset=utf-8");
        response.setCharacterEncoding("utf-8");
        response.getWriter().write(JSON.toJSONString(object));
    }

    //设置默认值
    public int parseInt(String value, int defaultValue) {
        return value != null && value.length() > 0 ? Integer.parseInt(value) : defaultValue;
    }
}
