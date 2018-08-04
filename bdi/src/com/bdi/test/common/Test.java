package com.bdi.test.common;

public class Test {

	public static void main(String[] args) {
		String s = new String("abc");
		
		try {
			Class clazz = Class.forName("java.lang.String");
			String s2 = (String)clazz.newInstance();
			s2 = "abc";
			System.out.println(s2);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	}
}
