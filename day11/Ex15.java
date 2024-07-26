package com.ict.day11;

public class Ex15 {
	// 생성자 : 클래스를 객체로 만들 때 한번 호출된다.
	// 생성자의 목적 : 멤버필드(변수와상수)의 초기값 설정
	//              그러나 메서드 처럼 동작, 기능 등을 할 수 있다.
	
	// 생성자의 특징 : 메서드와 다른 점은 반환형이 없다.
	//              클래스이름 = 생성자이름 = 저장파일이름
	//              생성자도 오버로딩을 할 수 있다.
	//              한 클래스안에서 여러개의 생성자를 만들 수 있다.
	//              메서드가 다른 메서드를 호출 할 수 있는 것 처럼 
	//              생성자도 다른 생성자를 호출 할 수 있다.
	//              클래스에 생성자가 없으면 자동으로 기본 생성자로 객체 생성을 한다.
	//              기본생성자란 인자가 없는 생성자를 말한다.
	//              만약에 클래스에 생성자를 만들었으면 만들어진 생성자를 이용해서 
	//              객체를 생성해야 된다. 
	
	private String name = "둘리";
	private int age = 24 ;
	private double height = 179.6 ;
	
	// 기본생성자 : ctrl + space bar
	public Ex15() {
		name = "마이콜";
		age = 12 ;
		height = 159.12 ;
	}
	
	// 이외 생성자 만들 때 : source-
	public Ex15(String name) {
		this.name = name;
	}
	
	public Ex15(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	
	
	
}
