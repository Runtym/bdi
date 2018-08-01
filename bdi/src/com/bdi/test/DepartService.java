package com.bdi.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DepartService {

	private static DepartService ds;
	private List<Map<String,String>> departList;
	public static DepartService getDS() {
		if(ds==null) {
			ds = new DepartService();
		}
		return ds;
	}
	
	public List<Map<String,String>> getDepartList(){
		if(departList==null) {
			departList = new ArrayList<Map<String,String>>();
			for(int i=0;i<20;i++) {
				Map<String,String> depart = new HashMap<String,String>();
				depart.put("departName", "개발팀" + i);
				depart.put("departCode", "" + i);
				depart.put("departCnt", "" + i);
				depart.put("departEtc", "기타" + i);
				departList.add(depart);
			}
		}
		return departList;
	}
}
