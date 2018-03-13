package com.lad.test;

import com.lad.dao.UsersMapper;
import com.lad.entity.Users;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

public class MybatisTest {

    @Test
    public void test(){
        try {
            SqlSessionFactory build = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("mybatis-config.xml"));
            SqlSession sqlSession = build.openSession();
            UsersMapper usersDao = sqlSession.getMapper(UsersMapper.class);
            List<Users> userEntities = usersDao.queryAll();
            for (Users userEntity : userEntities) {
                System.out.println(userEntity.getUname());
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
