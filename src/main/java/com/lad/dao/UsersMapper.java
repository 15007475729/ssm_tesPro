package com.lad.dao;

import com.lad.entity.Users;

import java.util.List;

public interface UsersMapper {

    List<Users> queryAll();

    Users login(Users user);

    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
}