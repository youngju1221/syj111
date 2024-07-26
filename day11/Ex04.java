package com.ict.day11;

public class Ex04 {

	public static void main(String[] args) {
		Ex03 t = new Ex03();
		double s1 = t.plus(10, 15);
		System.out.println(s1);
		
		double s2 = t.plus("10", "15");
		System.out.println(s2);
	}

}
