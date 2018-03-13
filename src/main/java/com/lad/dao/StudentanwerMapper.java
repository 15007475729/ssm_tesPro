package com.lad.dao;

import com.lad.entity.Studentanwer;

public interface StudentanwerMapper {
    int insert(Studentanwer record);

    int insertSelective(Studentanwer record);
}