package com.ict.day12;

public class Ex12 {
		// 인스턴스 변수,상수는 생성자를 이용해서 변수의 초기값을 지정
	
		// static 초기화
		// static{
		// 		초기화 내용
		//	}
		int s1 = 100 ;
		static int s2 = 200;
		static int s3 ;
		
		static {
			// 인스턴스라서 접근 안됨
			// s1 = 5000;
			
			s2 = 5000;
			s3 = 3000;
			s4 = 4000;
			s5 = 6000;
		}
		
		static int s4 = 300;
		static int s5 ;
}
