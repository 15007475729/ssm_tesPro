package com.lad.dao;

import com.lad.entity.Stustate;

public interface StustateMapper {
    int insert(Stustate record);

    int insertSelective(Stustate record);
}