package com.lad.dao;

import com.lad.entity.Answer;

public interface AnswerMapper {
    int insert(Answer record);

    int insertSelective(Answer record);
}