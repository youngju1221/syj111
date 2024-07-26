package com.ict.day12;

public class Ex10 {
	// static : 객체 생성과 상관없이 미리 만들어진 필드와 메소드
	// 			클래스와 지역변수에 static 사용 못함
	//			static 메서드에서 전역변수를 사용하려면 전역변수가 static 이어야 한다.
	//			접근법 : 클래스이름.변수, 클래스이름.상수, 클래스이름.메소드()
	//			접근제한자가 private 이면 static 도 접근 할 수 없다.
	
	int su = 10;
	static int num = 10;
	private static int age = 32;
	
	public Ex10() {
		su++;
		num++;
		age++;
	}
	
	public void play() {
		int k = su + 1000;
		int k2 = num + 1000;
		int k3 = age + 1000;	
		System.out.println("인스턴스 메서드");
	}
	
	public static void play2() {
		// 전역변수가 instance 이므로 오류
		//int k = su + 1000;
		int k2 = num + 1000;
		int k3 = age + 1000;
		// 지역변수는 static 으로 못 만든다
		//static int k4 = 1000;
		System.out.println("static 메서드");
		
	}
	public static void play3() {
		// 전역변수가 instance 이므로 오류
		//int k = su + 1000;
		int k2 = num + 1000;
		int k3 = age + 1000;
		// 지역변수는 static 으로 못 만든다
		//static int k4 = 1000;
		System.out.println("private 메서드");
		
	}
}
