package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.xinxiMapper;
import com.model.xinxi;
import com.service.xinxiService;
import com.util.Constants;
import com.util.Page;

@Service("xinxiSerive")
public class XinxiSeriveImpl implements xinxiService{

	@Resource
	private xinxiMapper mapper;
	
	@Override
	public List<xinxi> selectlistPage(Page page) {
		return mapper.selectlistPage(page);
	}

	@Override
	public xinxi selectByPrimaryKey(Integer goodsid) {
		return mapper.selectByPrimaryKey(goodsid);
	}

	@Override
	public List<xinxi> selectbychicui(Constants con) {
		return mapper.selectbychicui(con);
	}
	
}
