package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.dao.UsertableMapper;
import com.model.Usertable;
import com.service.UsertableService;
@Service("usertableservice")
public class UserServiceImpl extends BaseServiceImpl implements UsertableService{
	
	@Resource
	private UsertableMapper usertablemapper;
	
	@Override
	public BaseDao getDao() {
		// TODO Auto-generated method stub
		return usertablemapper;
	}

	@Override
	public Usertable selectByUser(Usertable user) {
		// TODO Auto-generated method stub
		return usertablemapper.selectByUser(user);
	}

	@Override
	public List<Usertable> selectByAll() {
		// TODO Auto-generated method stub
		return usertablemapper.selectByAll();
	}

}
