package com.ict.day03;

public class Ex11 {

	public static void main(String[] args) {
		// if ~ else 문
		// 삼항연산자와 비슷하게 처리 하는 제어문
		// 즉, 조건식이 참일때 와 거짓일 때 각각 나눠서 처리한다.
		// 형식) if(조건식){  
		//			조건식이 참일 때 실행할 문장;
		//			조건식이 참일 때 실행할 문장;
		//			조건식이 참일 때 실행할 문장;
		//			}else{
		//			조건식이 참일 때 실행할 문장;
		//			조건식이 참일 때 실행할 문장;
		//			}
		
		// int k1 홀수인지 짝수인지 판별하자
		int k1 = 42;
		String res = "";
		if (k1 % 2 == 0) {
			res = "짝수";
		} 
		else {
			res = "홀수";
		}		
		System.out.println("결과 : " + res);

	
		// int k2가  60점이상이면 합격 아니면 불합격
		int k2 = 78;
		 	res = "불합격";
		if (k2 >= 60) {
			res = "합격";
		}
		else {
		}
		System.out.println("결과 : "+ res);
		
		// int k3가 1이면 가격에 10% 할인을 해준다. (가격 2500)
		int k3 = 1 ;
		int price = 2500 ;
		int result = 0 ;
		
		if (k3 == 1) {
				result = price - (int)(price * 0.1);
		} 
		else {
			result = price;
		}
		System.out.println("k3 : " + result);
		
		// char k4가 대문자인지, 대문자가 아닌지 판별
		char k4 = 'D';
		if (k4 >= 'A' && k4 <= 'Z') {
			res = "대문자";
		} 
		else {
			res = "대문자 아님";
		}
		System.out.println("k4 : " + res);		
		
		// 근무시간이 8시간 까지는 시간당 9860 이다.
		// 8시간 초과하면 초과한 시간만큼 1.5배 지급한다.
		// 현제 내가 근무한 시간이 10이면 얼마를 받아야 하냐? 
		int time = 10;
		int dan = 9860;
		
		if (time > 8 ) {

			result = (8 * dan) + (int)((time - 8) * dan * 1.5) ; 
		} 
		else { 
				result = time * dan ;
		}
			System.out.println("결과 : " + result);
	
	}
}
