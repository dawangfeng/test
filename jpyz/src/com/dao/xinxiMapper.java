package com.dao;

import java.util.List;

import com.model.xinxi;
import com.util.Constants;
import com.util.Page;

public interface xinxiMapper {
    int deleteByPrimaryKey(Integer goodsid);

    int insert(xinxi record);

    int insertSelective(xinxi record);

    xinxi selectByPrimaryKey(Integer goodsid);

    int updateByPrimaryKeySelective(xinxi record);

    int updateByPrimaryKey(xinxi record);
    
    List<xinxi> selectlistPage(Page page);
    
    List<xinxi> selectbychicui(Constants con);
}