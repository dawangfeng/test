package com.service;

import java.util.List;

import com.model.cart;
import com.util.Page;

public interface cartService {
	int insertSelective(cart record);
	
	List<cart> selectcartlistPage(Page page);
	
	Integer selectbycount(Integer userid);
	  
	int updateByPrimaryKeySelective(cart record);
	
	 int deleteByPrimaryKey(Integer id);
}	
