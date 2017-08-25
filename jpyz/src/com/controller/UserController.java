package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map; 

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.model.Usertable;
import com.service.UsertableService;

@Controller
public class UserController {
	
	@Resource
	private UsertableService usertableService;
	
	@RequestMapping("find")
	@ResponseBody
	public ModelAndView findid(HttpServletRequest request) throws Exception{
		Usertable user=new Usertable();
		user.setUserid(1);
		user=usertableService.selectByPrimaryKey(user);
		if(user!=null){
			request.setAttribute("user", user);
			return new ModelAndView("index");
		}else{
			return null;
		}
	}
	@RequestMapping("user/login")
	@ResponseBody
	public Map<String,Object> login(String username,String password,HttpSession session) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();  
		Usertable user=new Usertable();
		user.setPassword(password);
		user.setUsername(username);
		Usertable user1=usertableService.selectByUser(user);
		if(user1!=null){
			session.setAttribute("user", user1);
			session.setAttribute("userid", user1.getUserid());
		}else{
			int count =usertableService.insertSelective(user);
			if(count>0){
				Usertable user2=usertableService.selectByUser(user);
				if(user2!=null){
					session.setAttribute("user", user2);
					session.setAttribute("userid", user2.getUserid());
				}
			}
		}
		map.put("message", "succ");
		return map;
	}
	@RequestMapping("user/loginout")
	@ResponseBody
	public Map<String,Object> loginout(HttpSession session) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();  
		session.invalidate();
		map.put("message", "succ");
		return map;
	}
	@RequestMapping("index")
	public ModelAndView toindex(){
		return new ModelAndView("admin/index");
	}
	@RequestMapping("findUserAll")
	public ModelAndView findUserAll(HttpServletRequest request) throws Exception{
		List<Usertable> luser=usertableService.selectByAll();
		request.setAttribute("luser", luser);
		return new ModelAndView("admin/usermanagement");
	}
	@RequestMapping("addUser")
	@ResponseBody
	public Integer addUser(Usertable user) throws Exception{
		int result =usertableService.insertSelective(user);
		return result;
	}
	@RequestMapping("delUserById")
	@ResponseBody
	public String delUserById(String ids) throws Exception{
		int result =usertableService.deleteByPrimaryKey(ids);
		System.out.println(result);
		return "1";
	}
	@RequestMapping("findById")
	@ResponseBody
	public String findById(Usertable user,HttpServletRequest request) throws Exception{
		user =usertableService.selectByPrimaryKey(user);
		request.setAttribute("user", user);
		return "1";
	}
}
