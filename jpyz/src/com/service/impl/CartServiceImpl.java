package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.cartMapper;
import com.model.cart;
import com.service.cartService;
import com.util.Page;

@Service("cartService")
public class CartServiceImpl implements cartService{

	@Resource
	private cartMapper mapper;
	
	@Override
	public int insertSelective(cart record) {
		return mapper.insertSelective(record);
	}

	@Override
	public List<cart> selectcartlistPage(Page page) {
		return mapper.selectcartlistPage(page);
	}

	@Override
	public Integer selectbycount(Integer userid) {
		return mapper.selectbycount(userid);
	}

	@Override
	public int updateByPrimaryKeySelective(cart record) {
		return mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return mapper.deleteByPrimaryKey(id);
	}

}
