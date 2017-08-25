package com.dao;

import java.util.List;

import com.model.Usertable;

public interface UsertableMapper extends BaseDao {
    
	public Usertable selectByUser(Usertable user);
	public List<Usertable> selectByAll();
	
}