package com.ict.day09;

import java.math.MathContext;
import java.util.Random;

public class Ex04 {
	public static void main(String[] args) {
	    // Math 클래스: 수학에서 자주사용되는 상수들과  static 메서드들로 이루어진 클래스
		System.out.println(Math.PI);
		
	    // Math 클래스 객체 생성 할 수 없다.
	    // Math.메서드이름() 이용해서 사용해야 된다.
		
		// 1. random() : 0.0이상 1.0미만의 임의의 난수 발생 
		System.out.println(Math.random());   // 0.0 - 1.0 미만
		int k1 = (int)(Math.random());       // 무조건 0 
		int k2 = (int)(Math.random() * 10) ; // 0-9
		
		// 2. ceil() : 올림, round() : 반올림, floor : 버림
		System.out.println("ceil :  큰 정수 찾기");
		System.out.println(Math.ceil(10.1));  // 11.0
		System.out.println(Math.ceil(10.6));  // 11.0
		System.out.println(Math.ceil(-10.1)); // -10.0
		System.out.println(Math.ceil(-10.6)); // -10.0
		
		System.out.println("floor :  작은 정수 찾기");
		System.out.println(Math.floor(10.1));  // 10.0
		System.out.println(Math.floor(10.6));  // 10.0
		System.out.println(Math.floor(-10.1)); // -11.0
		System.out.println(Math.floor(-10.6)); // -11.0
		
		System.out.println("round : 반올림(소수점 첫째자리기준");
		System.out.println(Math.round(10.1));  // 10
		System.out.println(Math.round(10.5));  // 11
		System.out.println(Math.round(-10.1)); // -10
		System.out.println(Math.round(-10.5)); // -10
		
		// abs() : 절대값( 양수 -> 양수, 음수 -> 양수)
		System.out.println("abs : 절대값");
		System.out.println(Math.abs(10));      // 10
		System.out.println(Math.abs(10.567));  // 10.567
		System.out.println(Math.abs(-10));     // 10
		System.out.println(Math.abs(-10.567)); // 10.567
		
		//  max(수1, 수2) : 큰값, min(수1, 수2) : 작은 값
		System.out.println(Math.max(15, 27));   // 27
		System.out.println(Math.min(15, 27));   // 15
		
		// API에서 제공하지만 개발자가 객체를 생성해서 사용해야 된다.
		Random  ran = new Random();
		System.out.println(ran.nextBoolean());
		System.out.println(ran.nextDouble()); // 0.0이상 ~ 0.1 미만
		System.out.println(ran.nextInt());    // 정수 (양수, 음수)
		
		System.out.println(ran.nextInt(10));              // 0-9
		System.out.println((int)(ran.nextDouble() * 10)); // 0-9
	}
}





