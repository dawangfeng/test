package com.util;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;


public class sendsms {
	
	
	public static void main(String [] args) throws UnsupportedEncodingException, IOException {
		
		 HttpClient client = new HttpClient();  
	        PostMethod post = new PostMethod("http://sms.webchinese.cn/web_api/");  
	        post.addRequestHeader("Content-Type",  
	                "application/x-www-form-urlencoded;charset=gbk");// 在头文件中设置转码  
	        NameValuePair[] data = { new NameValuePair("Uid", "mrhuang1"), // 注册的用户名  
	                new NameValuePair("Key", "hcaicyx1314"), // 注册成功后,登录网站使用的密钥  
	                new NameValuePair("smsMob", "15118762591"), // 手机号码  
	                new NameValuePair("smsText", "我们时刻等待您的好消息") };//设置短信内容  
	        post.setRequestBody(data);  
	        
	        client.executeMethod(post);  
	        Header[] headers = post.getResponseHeaders();  
	        int statusCode = post.getStatusCode();  
	        System.out.println("statusCode:" + statusCode);  
	        for (Header h : headers) {  
	            System.out.println(h.toString());  
	        }  
	        String result = new String(post.getResponseBodyAsString().getBytes(  
	                "gbk"));  
	        System.out.println(result);  
	        post.releaseConnection();  
	    }  
	}
	
