package com.bdi.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserService {
	private static UserService us;
	private List<Map<String,String>> userList;
	
	public static UserService getUS() {
		if(us==null) {
			us = new UserService();
		}
		return us;
	}
	
	public List<Map<String,String>> getUserList(){
		if(userList==null) {
			userList = new ArrayList<Map<String,String>>();

			for(int i=1;i<=10;i++){
				Map<String,String> user = new HashMap<String,String>();
				int rNum = (int)(Math.random()*50);
				user.put("name","홍길동" + i);
				user.put("age","" + rNum);
				user.put("address","서울 영등포구 여의도동 " + rNum + "번지");
				user.put("id", "hong" + rNum);
				userList.add(user);
			}
		}
		return userList;
	}
	public List<Map<String,String>> getUserList(String search){
		if(userList==null) {
			getUserList();
		}
		if(search==null) {
			return getUserList();
		}
		List<Map<String,String>> userList = new ArrayList<Map<String,String>>();
		for(Map<String,String> user:this.userList) {
			if(user.get("address").indexOf(search)!=-1) {
				userList.add(user);
			}
		}
		return userList;
	}
}
