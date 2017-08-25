package com.dao;

import com.model.categorychild;

public interface categorychildMapper {
    int deleteByPrimaryKey(Integer categorychildid);

    int insert(categorychild record);

    int insertSelective(categorychild record);

    categorychild selectByPrimaryKey(Integer categorychildid);

    int updateByPrimaryKeySelective(categorychild record);

    int updateByPrimaryKey(categorychild record);
}