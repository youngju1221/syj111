package com.ict.day04;

public class Ex03 {
	public static void main(String[] args) {
		// switch ~ case : 다중 if문 과 같은 조건문
		// if 문은 조건식 boolean 형 일 때 사용 (비교연선, 논리연산, 범위)
		// switch 문은 인자값이 int, char, String 일 때 사용 한다.
		// 순자라도  long, float, double 은 사용 불가
		/*
			swith(인자값){
				case 조건값1: 인자값이 원하는 조건값일 때 실행 ;
								인자값이 원하는 조건값일 때 실행 ; break;
				case 조건값2: 인자값이 원하는 조건값일 때 실행 ;
								인자값이 원하는 조건값일 때 실행 ; break;								
				case 조건값3: 인자값이 원하는 조건값일 때 실행 ;
								인자값이 원하는 조건값일 때 실행 ; break;
			default : 조건값1, 2, 3 모두 아닐때 (나머지)					
			} 
			
			** 주의 사항 : break 는 현재 실행 중인 범위({}블록)을 벗어나는 역할
							break 가 없으면 break 를 만날때까지 아래 실행문들을 
							실행한다.			 
		*/
		// int k1이 1이면 카페모카 2이면 카페라떼 3이면 아메리카노 4이면 과일쥬스
		
		int k1 = 1;
		String drink = "";
		switch (k1) {
			case 1:	System.out.println("카페모카"); 
					drink = "카페모카";
					break;
			case 2:	System.out.println("카페라떼"); 
					drink = "카페라떼";
					break;
			case 3:	System.out.println("아메리카노"); 
					drink = "아메리카노";
					break;
			case 4:	System.out.println("과일쥬스"); 
					drink = "과일쥬스";
					break;
		}		
		System.out.println("drink : " + drink);
		System.out.println("수고하셨습니다.");
		
		// char k2가 A이면 아프리카, B이면 브라질, C이면 캐나다 나머지 한국
		char k2 = 'A';
		String str = "";
		switch (k2) {
			case 'A':
				str = "아프리카";
				break;
			case 'B':
				str = "브라질";
				break;
			case 'C':
				str = "캐나다";
				break;
			default :
				str = "한국";


		}
		System.out.println("결과 : " + str);
		
		// char k3가 A 이거나 a 아프리카, B 이거나 b 브라질, C 이거나 c 캐나다 나머지 한국
		char k3 = 'A';

		// break 가 없으면 다음 break 을 만날때까지 실행한다.
		switch (k3) {
			case 'A': 
			case 'a': str = "아프리카"; break;
			case 'B': 
			case 'b': str = "브라질"; break;
			case 'C': 
			case 'c': str = "캐나다"; break;
			
			default : str = "한국";
		}
		System.out.println("결과 : " + str);
		
		// String k4 가 한국이면 서울, 중국이면 베이징, 일본 도쿄, 미국이면 워싱턴
		// 을 출력하자
		String k4 = "한국";
		String result = ""; 
		switch (k4) {
			case "한국":
				result = "서울";
				break;
			case "중국":
				result = "베이징";
				break;
			case "일본":
				result = "도쿄";
				break;
			case "미국":
				result = "워싱턴";
				break;
		}
		System.out.println(k4+"의 수도는 " + result + "입니다.");
		
	}
}















