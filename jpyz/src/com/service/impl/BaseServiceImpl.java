package com.service.impl;

import com.dao.BaseDao;
import com.service.BaseService;
import com.ucg.base.framework.core.util.StringUtil;

public abstract class BaseServiceImpl implements BaseService{
	
	public abstract BaseDao getDao();

	public <T> int insert(T t){
		return getDao().insert(t);
	}
	
	public <T> int insertSelective(T t) throws Exception{
		return getDao().insertSelective(t);
	}
		
	public <T> int updateByPrimaryKey(T t) throws Exception{
		return getDao().updateByPrimaryKey(t);
	}
	
	public <T> int updateByPrimaryKeySelective(T t) throws Exception{
		return getDao().updateByPrimaryKeySelective(t);
	}
	
	public int deleteByPrimaryKey(String ids) throws Exception{
		if(StringUtil.isNotEmpty(ids)){
			String[] idArray = ids.split(",");
		for(String id : idArray){
		return getDao().deleteByPrimaryKey(id);
			}
		}
		return -1;
	}
	
	public <T> T selectByPrimaryKey(T t) throws Exception{
		return getDao().selectByPrimaryKey(t);
	}
}
