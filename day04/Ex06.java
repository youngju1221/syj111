package com.ict.day04;

public class Ex06 {
	
	public static void main(String[] args) {
		// for 문 : 정해진 규칙에 따라 실행문을 반복처리
		//			조건식이 참일 실행, 거짓이면 실행 하지 않음
		// for (초기식 ; 조건식 ; 증감식 ;){
		//		조건식이 참일때 실행 할 문장 ;
		//		조건식이 참일때 실행 할 문장 ;
		//		조건식이 참일때 실행 할 문장 ;
		// }
		
		// 진행 순서
		// 1. 	for 문을 만나서 무조건 초기식으로 간다.
		// 2. 	초기식에서 조건식으로 간다.
		// 3. 	조건식이 참이면 for 문을 실행 한다.
		//		조건식이 거짓이면 for 문을 실행하지 않는다.
		// 4. 	for 문 의 끝을 만나면 증감식으로 
		// 5. 	증감을 한 후 조건식으로 간다.
	
		// 3. 	조건식이 참이면 for 문을 실행 한다.
		//		조건식이 거짓이면 for 문을 실행하지 않는다.
		
		// 자바에서는 블록({}) 안에서 만든 변수는 블록 밖에서는 사용 불가
		
		for (int i = 0; i < 5; i++) {
			System.out.println(i);
			System.out.println("안녕하세요");
			System.out.println("----------------------");			
		}
		System.out.println();
		
		// 10~20까지 출력하자
		for (int i = 10; i < 21; i++) {
			System.out.print(i+" ");
		}	
		System.out.println();
		
		// 10~20까지 짝수만출력하자
		for (int i = 10; i <= 21; i=i+2) {
        	System.out.print(i+" ");
        }
		System.out.println();
		
		// 10~20까지 홀수만출력하자
		for (int i = 11; i < 20; i=i+2 ) {    
        	System.out.print(i+" ");
		}
		System.out.println();
		
		// 10~ 20까지 짝수만 출력 (if문 , 하나씩 검사)
		for (int i = 10; i < 21; i++) {
			if (i % 2 == 0) {
				System.out.print(i + " ");
			}	
		}
		System.out.println();
		
		// 10~ 20까지  홀수만 출력 (if문 , 하나씩 검사)
		for (int i = 10; i < 21; i++) {
			if (i % 2 == 1) {
				System.out.print(i + " ");
			}	
		}
		System.out.println();
		
		// 1~100까지 7의 배수만 출력
		for (int i = 1; i < 101; i++) {
			if (i % 7 == 0) {
				System.out.print(i + " ");
			}
		}
		System.out.println();
		
		// 5단 출력
			for (int i = 1; i < 9; i++) {
			System.out.println(5 + " * " + i + " = " + (5 * i));
			}
			System.out.println();
			
			// 0 0 0 0	
			// 0 0 0 0	
			// 0 0 0 0	
			// 0 0 0 0	
			
			for (int i = 0; i < 4; i++) {
				System.out.println("0 0 0 0");
			}
			System.out.println();
				
			for (int i = 1; i < 17; i++) {
				System.out.print("0 ");
				
				if (i % 4 == 0) {
				System.out.println();
				}
			} 
				
			// 누적합 : 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
			int sum = 0; // 이전값을 기억하는 변수
			for (int i = 1; i < 11; i++) {
				sum = sum + i ; // 변수 = 이전 변수 + i
				
			}
			System.out.println("결과 : " + sum);
			
			// 1~ 10 까지 홀수의 합과 짝수의 합을 각각 구하자
			int even = 0; // 짝수의 합 저장 변수
			int odd = 0; // 홀수의 합 저장 변수
			for (int i = 1; i < 11; i++) {
				if (i % 2 == 0 ) {
					even = even + i ;
				} 
				else {
					odd = odd +i ;
				}
			}
			System.out.println("짝수의 합 : " + even);
			System.out.println("홀수의 합 : " + odd);		
			
			// 7!(7 * 6 * 5 * 4 * 3 * 2 * 1)
			
	        int total = 1 ;

	        for (int i = 7; i > 0; i--) {
	                total = total * i;
	        }
	        System.out.println("7! = " + total);
			
	}
}