package com.ict.day04;

import java.util.Scanner;

public class Ex02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String drink = "";
		int menu = 0;
		int input = 0;	// 입금액
		int su = 0;
		int dan = 0;
		int sum = 0;	// 금액
		int vat = 0;	// 부가세
		int total = 0;	// 총 금액
		int charge = 0; // 잔 돈
		
		System.out.println("---------메뉴 --------");
		System.out.println("-- 1. 카페모카 (3500)--");	
		System.out.println("-- 2. 카페라떼 (4000)--");		
		System.out.println("-- 3. 아메리카노 (1500)--");		
		System.out.println("-- 4. 과일쥬스 (3000)--");		
		System.out.println("----------------------");
		
		System.out.println("메뉴를 선택하세요 >>> ");
		menu = sc.nextInt();
		
		System.out.println("수량을 입력하세요 >>> ");
		su = sc.nextInt();
		
		System.out.println("입금액을 입력하세요 >>> ");
		input = sc.nextInt();
		
		// 메뉴에 따라 dan, drink 선택된다.
		if (menu == 1) {
			drink = "카페모카";
			dan = 3500;
		}
		else if (menu == 2) {
			drink = "카페라떼";
			dan = 4000;
		}
		else if (menu == 3) {
			drink = "아메리카노";
			dan = 1500;
		}
		else if (menu == 4) {
			drink = "과일쥬스";
			dan = 3000;
		}
		// 금액 = 단가 * 수량
		sum = dan * su;
		
		// 부가세 = 금액의 10%
		vat = (int)(sum * 0.1);
		
		// 총금액 = 금액 + 부가세
		total = sum + vat;
		
		// 잔돈 = 입금액 - 총금액
		charge = input - total;
		
		System.out.println("지불 금액 : " + input);
        System.out.println("선택 음료 : " + drink);
        System.out.println("음료 단가 : " + dan);
        System.out.println("음료 개수 : " + su);
        System.out.println("금 액 : " + sum);
        System.out.println("총 금액 : " + total);
        System.out.println("잔 돈 : " + charge);
		
		
	}
}