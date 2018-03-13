package com.lad.dao;

import com.lad.entity.Classes;

import java.util.List;

public interface ClassesMapper {

    List<Classes> querydisClazz();


    int deleteByPrimaryKey(Integer id);

    int insert(Classes record);

    int insertSelective(Classes record);

    Classes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Classes record);

    int updateByPrimaryKey(Classes record);
}