package com.lad.dao;

import com.lad.entity.Fuzzy;
import com.lad.entity.Student;

import java.util.List;

public interface StudentMapper {

    List<Student> queryAll(Fuzzy fuzzy);

    int getMaxGid(Integer cid);

    int getCount();

    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}