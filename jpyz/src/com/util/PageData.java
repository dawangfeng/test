package com.util;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
/**
 * 参数封装MAP
 * @author wxl
 *
 */
@SuppressWarnings("rawtypes")
public class PageData extends HashMap implements Map{
	
	private static final long serialVersionUID = 1L;
	
	Map map = null;
	HttpServletRequest request;
	
	/**
	 * 构造方法
	 */
	@SuppressWarnings("unchecked")
	public PageData(HttpServletRequest request){
		this.request = request;
		
		Map properties = request.getParameterMap(); //获取提交的数据的集合（获取请求传过来的所有参数的集合）
		Map returnMap = new HashMap();     //获取到的参数经过遍历后，存放的位置
		/**
		 * Map类提供了一个称为entrySet()的方法，这个方法返回一个Map.Entry实例化后的对象集和。
		 * 接着，Map.Entry类提供了一个getKey()方法和一个getValue()方法， 通过这两个方法，
		 * 可以同时得到map的key/value里的值，而不用再获取到key之后，还要到map里面去获取值
		 * 
		 */
		Iterator entries = properties.entrySet().iterator();   //将map类型数据转换成集合set类型的。并迭代
		Map.Entry entry; 
		String name = "";  
		String value = "";  
		while (entries.hasNext()) {
			entry = (Map.Entry) entries.next(); 
			name = (String) entry.getKey(); 
			Object valueObj = entry.getValue(); 
			if(null == valueObj){   //如果值为空，返回空字符串
				value = ""; 
			}else if(valueObj instanceof String[]){    //如果是string 数组，循环拼接成一个字符串
				String[] values = (String[])valueObj;
				for(int i=0;i<values.length;i++){ 
					 value = values[i] + ",";
				}
				value = value.substring(0, value.length()-1); 
			}else{
				value = valueObj.toString(); 
			}
			returnMap.put(name, value); 
		}
		map = returnMap;
	}
	
	public PageData() {
		map = new HashMap();
	}
	
	/**
	 * 获取object  或者数组类型的值
	 * 获得后需要转型
	 */
	public Object get(Object key) {
		Object obj = null;
		if(map.get(key) instanceof Object[]) {
			//如果value是数组
			Object[] arr = (Object[])map.get(key);
			
			
			obj = request == null ? arr:(request.getParameter((String)key) == null ? arr:arr[0]);
		} else {
			obj = map.get(key);
		}
		return obj;
	}
	/**
	 * 获取string类型的值
	 * @param key
	 * @return
	 */
	public String getString(Object key) {
		return (String)get(key);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Object put(Object key, Object value) {
		return map.put(key, value);
	}
	
	@Override
	public Object remove(Object key) {
		return map.remove(key);
	}

	public void clear() {
		map.clear();
	}

	public boolean containsKey(Object key) {
		return map.containsKey(key);
	}

	public boolean containsValue(Object value) {
		return map.containsValue(value);
	}

	public Set entrySet() {
		return map.entrySet();
	}

	public boolean isEmpty() {
		return map.isEmpty();
	}

	public Set keySet() {
		return map.keySet();
	}

	@SuppressWarnings("unchecked")
	public void putAll(Map t) {
		map.putAll(t);
	}

	public int size() {
		return map.size();
	}

	public Collection values() {
		return map.values();
	}
	
}
