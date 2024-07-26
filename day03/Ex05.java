package com.ict.day03;

import java.util.Scanner;

public class Ex05 {

	public static void main(String[] args) {
		// 초를 입력 받아서 시, 분 , 초로 출력하자
		Scanner sc = new Scanner(System.in);
		
		System.out.println("초를 입력하세요 :");
		int total = sc.nextInt();
		
		int h = 0;
		int m = 0;
		int s = 0;
		int res = 0;
		
		// 시간 구하기
		h = total / (60 *60);
		res = total % (60 * 60);
		
		// 분 구하기
		m = res / 60;
		
		// 초 구하기
		s = res % 60;
			  
		System.out.print(h + "시 : ");
		System.out.print(m + "분 : ");
		System.out.println(s + "초 : " );
	}

}
