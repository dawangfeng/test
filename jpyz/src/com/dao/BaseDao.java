package com.dao;

public interface BaseDao {
	
	public <T> int insert(T t);
	
	public <T> int insertSelective(T t);
		
	public <T> int updateByPrimaryKey(T t);
	
	public <T> int updateByPrimaryKeySelective(T t); 	
	
	public int deleteByPrimaryKey(String id);
	
	public <T> T selectByPrimaryKey(T t);
}
