package com.ict.day12;

public class Ex07 {
	private String name = "일지매";
	private int age = 24;
	
	// 다른 생성자 호출
	public Ex07() {
		this("태권브이", 34);
	}

	public Ex07(String name) {
		this("태권브이", 34);
		this.name = name;
		
	}
	public Ex07(int age ) {
		this("태권브이", 34);
		this.age = age;
	}
	public Ex07(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public void prn() {
		System.out.println("이름 : " + name);
		System.out.println("age : " + age);
	}
}
