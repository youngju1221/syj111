package com.ict.day12;

public class Ex14 {
	public static void main(String[] args) {
		String s1 = "홍길동";
		String s2 = "홍길동";
		
		// 기본 자료형일 때 == 는 같냐
		// 배열이나 객체 == : 주소가 같냐
		System.out.println(1);
		if (s1 == s2.trim()) {
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
		
		// s1, s2, s3 는 같은 주소를 가지고 있음
		String s3 = "홍길동";
		String s4 = " 홍길동 ";
		System.out.println(2);
		if (s3 == s4.trim()) {
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
		
		// String 내용이 같냐? : equals
		System.out.println(3);
		if (s3.equals(s4.trim())) {
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
		
		String s5 = new String("홍길동");
		String s6 = new String("홍길동");
		System.out.println(4);
		if (s5 == s6) {
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}	
	}
}
