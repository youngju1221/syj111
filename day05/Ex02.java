package com.ict.day05;

public class Ex02 {

	public static void main(String[] args) {
		// while 문 : for 문과 같은 반복문
		// 형식1)
		//		초기식 또는 현재 변수
		//		while(조건식){
		//			조건식이 참일 때 실행하는 문장 ;
		//			조건식이 참일 때 실행하는 문장 ;
		//			조건식이 참일 때 실행하는 문장 ;
		//			증감식 ;
		//		}
		// while 문의 끝을 만나면 조건식으로 간다.
		for (int i = 1; i < 11; i++) {
			System.out.print(i);
		}
		System.out.println();
		
		int k = 1;
		while (k < 11) {
			System.out.print(k);
			k++;
		}
		System.out.println();
		
		// 1~20 까지 출력하자
		int k2 = 10;
        while (k2 < 21) {
			System.out.println(k2+" ");
        	k2++;
		}
		System.out.println();
				
		// 10~20까지 짝수만출력하자
		k2 = 10;
        while (k2 < 21) {
			if (k2 % 2 == 0) {
				System.out.println(k2+" ");
			}
			k2++;
        }
		System.out.println();
		
		// 5단 출력
		k2 = 5;
		while (k2 < 10) {
	            System.out.println(" 5 * " + k2 + " = " + (5 * k2));
	            k2++;
		}
		System.out.println();
		
		// 1~10 까지 홀수의 합과 짝수의 합을 각각 구하자
		int even = 0;
		int odd = 0;
		k2 = 1;
		while (k2<11) {
			if (k2 % 2 == 0) {
				even = even +k2;
			} else {
				odd = odd +k2;
			}
			
			k2++;
		}
		System.out.println("짝수의 합 : " + even);
		System.out.println("홀수의 합 : " + odd);
	}
}