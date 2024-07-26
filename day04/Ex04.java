package com.ict.day04;

import java.util.Scanner;

public class Ex04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		// 키보드로 나라 입력 받아서 해당 나라의 수도를 출력하자.
		// 데이터의 없는 나라는 데이터의 없는 나라라고 표시하자.
		// 한국 = 서울, 중국 = 베이징, 일본 = 도쿄, 미국은, 워싱턴
		// String k4 가 한국이면 서울, 중국이면 베이징, 일본 도쿄, 미국이면 워싱턴
				// 을 출력하자
			System.out.print("나라 입력 : ");
			String str = sc.next();
			String res ="";
			switch (str) {
				case "한국":
					res = "서울";
					break;
				case "중국":
					res = "베이징";
					break;
				case "일본":
					res = "도쿄";
					break;
				case "미국":
					res = "워싱턴";
					break;
				default:
					res = "데이터 없음";
					break;
			}
			System.out.println("결과 : " + res);
			sc.close();
		
				
	}

}
