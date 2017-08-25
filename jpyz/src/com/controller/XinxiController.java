package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.Constants;
import com.model.Usertable;
import com.model.cart;
import com.model.xinxi;
import com.service.cartService;
import com.service.xinxiService;
import com.util.Page;
import com.util.PageData;

@Controller
public class XinxiController {
	
	@Resource
	private xinxiService service;
	@Resource
	private cartService cartService;
	
	@RequestMapping("xinxi/index")
	@ResponseBody
	public Map<String, Object> index(HttpSession session,Page page,String liebieid,String chicui,String dalieid) throws Exception{
		Map<String, Object> map=new HashMap<String, Object>();
		PageData pd=new PageData();
		if(null != liebieid && !"".equals(liebieid)){
			pd.put("liebieid", liebieid.trim());
		}
		if(null != chicui && !"".equals(chicui)){
			pd.put("chicui", chicui.trim());
		}
		if(null != dalieid && !"".equals(dalieid)){
			pd.put("dalieid", dalieid.trim());
		}
		page.setPd(pd);
		List<xinxi> xinxi=service.selectlistPage(page);
		
		Integer userid=(Integer) session.getAttribute("userid");
		int count=cartService.selectbycount(userid);
		map.put("count", count);
		map.put("list", xinxi);
		map.put("page", page);
		return map;
	}
	@RequestMapping("xinxi/detail")
	@ResponseBody
	public String detail(HttpServletRequest request,String id) throws Exception{
		xinxi xinxi=service.selectByPrimaryKey(Integer.parseInt(id));
		Integer userid=(Integer) request.getSession().getAttribute("userid");
		int count=cartService.selectbycount(userid);
		if(xinxi!=null){
			request.getSession().setAttribute("xinxi", xinxi);
			request.getSession().setAttribute("count", count);
			return "1";
		}
		return "0";
	}
	@RequestMapping("xinxi/addcart")
	@ResponseBody
	public Map<String, Object> addcart(HttpServletRequest request,String id,String number) throws Exception{
		Map<String, Object> map=new HashMap<String, Object>();
		xinxi xinxi=service.selectByPrimaryKey(Integer.parseInt(id));
		if(xinxi!=null){
			cart cart=new cart();
			cart.setCreatetime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			cart.setDescription(xinxi.getDescription());
			cart.setGoodsno(xinxi.getGoodsno());
			cart.setGoodsrenderingimg(xinxi.getGoodsrenderingimg());
			cart.setGoodstemplateimg(xinxi.getGoodstemplateimg());
			cart.setSpecifications(xinxi.getSpecifications());
			cart.setGoodsapply(xinxi.getGoodsapply());
			Integer userid=(Integer) request.getSession().getAttribute("userid");
			cart.setUserid(userid);
			cart.setNumber(Integer.parseInt(number));
			int count=cartService.insertSelective(cart);
			if(count>0){
				map.put("message", "succ");
			}else{
				map.put("message", "err");
			}
		}
		return map;
	}
	@RequestMapping("xinxi/cartindex")
	@ResponseBody
	public Map<String, Object> cartindex(HttpServletRequest request,Page page) throws Exception{
		Map<String, Object> map=new HashMap<String, Object>();
		PageData pd=new PageData();
		Integer userid=(Integer) request.getSession().getAttribute("userid");
		pd.put("userid", userid);
		page.setPd(pd);
		List<cart> cart=cartService.selectcartlistPage(page);
		int count=cartService.selectbycount(110);
		map.put("count", count);
		map.put("list", cart);
		map.put("page", page);
		return map;
	}
	@RequestMapping("xinxi/updatecart")
	@ResponseBody
	public Map<String, Object> updatecart(String id) throws Exception{
		Map<String, Object> map=new HashMap<String, Object>();
		int count=cartService.deleteByPrimaryKey(Integer.parseInt(id));
		if(count>0){
			map.put("message", "succ");
		}else{
			map.put("message", "err");
		}
		return map;
	}
	@RequestMapping("xinxi/selectchicui")
	@ResponseBody
	public Map<String, Object> selectchicui(String id){
		Map<String, Object> map=new HashMap<String, Object>();
		PageData pd=new PageData();
		Constants con=new Constants();
		pd.put("lieid", id.trim());
		con.setPd(pd);
		List<String> list = new ArrayList<String>();
		List<xinxi> xinxi1=service.selectbychicui(con);
		for (xinxi xinxi : xinxi1) {
			list.add(xinxi.getSpecifications());
		}
		HashSet<String> hs = new HashSet<String>(list); 
		list.removeAll(list);
		for (String string : hs) {
			System.out.println(string);
			list.add(string);
		}
			map.put("message", list);
		return map;
	}
}	
