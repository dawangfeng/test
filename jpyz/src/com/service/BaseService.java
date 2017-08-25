package com.service;

import com.dao.BaseDao;

public interface  BaseService{
	
	public abstract BaseDao getDao();

	
	public <T> int insert(T t);
	
	public <T> int insertSelective(T t) throws Exception;
		
	public <T> int updateByPrimaryKey(T t) throws Exception;
	
	public <T> int updateByPrimaryKeySelective(T t) throws Exception; 	
	
	public int deleteByPrimaryKey(String ids) throws Exception;
	
	public <T> T selectByPrimaryKey(T t) throws Exception;



}
