package com.ict.day03;

public class Ex02 {

	public static void main(String[] args) {
		// 대입 연산자 : 데이터나 변수를 특정변수에 저장시킬 때 사용
		//				특정변수 = 데이터(값) 또는 변수
		// 참고로 오른쪽에 변수는 변수가 저장되는것이 아니라 변수가 가지고 있는값을 저장
	
		//	=, +=, -=, *=, /=, %= 
		// a = b => b 를 a 에 저장
		// a += b => a + b 의 결과를 a 에 저장 ,  a = a + b ;
		// a -= b => a - b 의 결과를 a 에 저장 ,  a = a - b ;
		// a *= b => a * b 의 결과를 a 에 저장 ,  a = a * b ;
		// a /= b => a / b 의 결과를 a 에 저장 ,  a = a / b ;
		// a %= b => a % b 의 결과를 a 에 저장 ,  a = a % b ;
		
		int su = 7 ;
		su += 4 ;
		System.out.println("결과 : " + su ); // 11
		
		su -= 4 ;
		System.out.println("결과 : " + su ); // 7
		
		su *= 4 ;
		System.out.println("결과 : " + su ); // 28
		
		su /= 4 ;
		System.out.println("결과 : " + su ); // 7
		
		su %= 4 ;
		System.out.println("결과 : " + su ); // 3
		
		
	
	
	}

}
