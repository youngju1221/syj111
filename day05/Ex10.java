package com.ict.day05;

import java.util.Scanner;

public class Ex10 {
	public static void main(String[] args) {
		// 전체 횟수, 짝수가 나온 퍼센트를 구하자.
		Scanner scan = new Scanner(System.in);
		int cnt = 0;       // 전체 횟수
		int even = 0;      // 짝수 횟수
		double per = 0.0 ; // 짝수 퍼센트
		
		esc: while (true) {
			cnt++ ;
			System.out.print("숫자 입력 : ");
			int su = scan.nextInt();
			String str = "";
			
			if(su % 2 == 0) {
				even ++;
				str = "짝수";
			}else {
				str = "홀수";
			}
			System.out.println(su + "는 " + str + " 입니다.");
			while (true) {
				System.out.print("계속할까요?(1.yes, 2.no) >> ");
				int res = scan.nextInt();
				if(res == 1) {
					continue esc;	
				}else if(res == 2) {
					break esc;
				}else {
					System.out.println("1 또는 2만 입력하세요 ");
					continue ;
				}
			}
		}
		System.out.println("전체횟수 : "  + cnt);
		System.out.println("짝수횟수 : "  + even);
		per = (even/(cnt * 1.0)) * 100 ;
		System.out.println("짝수 나온 퍼센트 : " + per + "%");
		
		System.out.println("수고하셨습니다.");

	}
}
