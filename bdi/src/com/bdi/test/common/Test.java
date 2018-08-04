package com.bdi.test.common;

public class Test {

	private static long sTime;
	private static long eTime;
	public static void start() {
		sTime = System.nanoTime();
	}
	public static void end() {
		eTime = System.nanoTime();
		System.out.println("execute time : " + (eTime-sTime));
	}
	public static void main(String[] args) {
		start();
		String str = "";
		for(int i=0;i<10000;i++) {
			str += i;
		}
		end();

		start();
		StringBuilder sb = new StringBuilder();
		for(int i=0;i<10000;i++) {
			sb.append(i);
		}
		end();
	}
}
