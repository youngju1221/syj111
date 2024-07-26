package com.ict.day03;

import java.util.Scanner;

public class Ex07 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
	
		// 1. 숫자를 받아서 해당 숫자가 홀수인지, 짝수인지 판별하자
		System.out.println("숫자입력 : ");
		int su = sc.nextInt();
		String str = (su%2 == 0) ? "짝수" : "홀수";
		System.out.println("결과 : "+ str);
		System.out.println();
		
		//2. 점수를 받아서 해당 점수가 80 이상이면 합격, 아니면 불합격
		System.out.println("점수입력 :");
		su = sc.nextInt();
		str = (su >= 80) ? "합격":"불합격";
		System.out.println("결과 : " + str);
		System.out.println();
		
		//3. 근무시간을 받아서 8시간이면 8시간까지는 9860이고
		//	8시간 초과한 시간은 1.5배를 더 지급한다.
		System.out.println("근무시간 : ");
		int time = sc.nextInt();
		int dan = 9860;
		int pay = (time > 8) ? (8 * dan) + (int)((time - 8)* dan * 1.5) : (time * dan);
		System.out.println("결과 : " + pay);
		
	}

}
