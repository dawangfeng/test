package com.service;

import java.util.List;

import com.model.Usertable;

public interface UsertableService extends BaseService{ 
	
	public Usertable selectByUser(Usertable user);
	public List<Usertable> selectByAll();
	
	
}
