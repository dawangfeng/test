package com.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.ValidateCode;

@Controller
public class UtilController {

	@RequestMapping("getcode")
	@ResponseBody
	public void getcode(HttpServletRequest reqeust,HttpServletResponse response) throws IOException{
		// 设置响应的类型格式为图片格式   
        response.setContentType("image/jpeg");   
        //禁止图像缓存。   
        response.setHeader("Pragma", "no-cache");   
        response.setHeader("Cache-Control", "no-cache");   
        response.setDateHeader("Expires", 0);   
           
        HttpSession session = reqeust.getSession();   
           
        ValidateCode vCode = new ValidateCode(120,40,5,100);   
        session.setAttribute("code", vCode.getCode());   
        vCode.write(reqeust.getSession().getServletContext().getRealPath("/")+"admin/images/code.png");
	}
}
