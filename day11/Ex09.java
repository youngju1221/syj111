package com.ict.day11;

public class Ex09 {
	private String name = "홍길동";
	private int age = 24 ;
	private boolean gender = true;
	
	// 변수 데이터를 변경하는 메서드 : setter
	public void setName(String name) {
		// 지역변수이름과 전역변수이름이 같으면 우선 순위는 지역변수이름
		// 전역변수 앞에 this.변수 을 붙이면 전역변수임을 뜻하는 것
		this.name = name ;
	}
	
	public void setAge(int age) {
		this.age = age ;
	}
	
	public void setGender(boolean gender) {
		this.gender = gender;
	}

	// 변수 데이터를 내보내는 메서드 : getter
	public String getName() {
		return name ;
	}
	
	public int getAge() {
		return age;
	}
	
	public boolean getGender() {
		return gender ;
	}
}
