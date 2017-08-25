package com.dao;

import java.util.List;

import com.model.cart;
import com.util.Page;

public interface cartMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(cart record);

    int insertSelective(cart record);

    cart selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(cart record);

    int updateByPrimaryKey(cart record);
    
    List<cart> selectcartlistPage(Page page);
    
    Integer selectbycount(Integer userid);
}