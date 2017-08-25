package com.service;

import java.util.List;

import com.model.xinxi;
import com.util.Constants;
import com.util.Page;

public interface xinxiService {
	
	 List<xinxi> selectlistPage(Page page);
	 
	 xinxi selectByPrimaryKey(Integer goodsid);
	 
	  List<xinxi> selectbychicui(Constants con);
}
