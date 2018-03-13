package com.lad.test;

import com.lad.dao.UsersMapper;
import com.lad.entity.Users;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class SpringTest {

    @Test
    public void test(){
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("applicationcontext.xml");
        UsersMapper usersDao = classPathXmlApplicationContext.getBean(UsersMapper.class);
        List<Users> userEntities = usersDao.queryAll();
        for (Users userEntity : userEntities) {
            System.out.println(userEntity.getUname());
        }

    }
}
