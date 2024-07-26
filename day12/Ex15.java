package com.ict.day12;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Ex15 {
	public static void main(String[] args) {

		// 날짜 관련 클래스
		// 1. Date 클래스 (1.0)
		// 2. Calendar 클래스 (5.0)
		// 3. LocalDate 클래스 (8.0)

		// 1. Date 클래스
		Date date = new Date();
		System.out.println(date);
		
		// 기본형태로 변환
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy. mm. dd. HH:mm:ss");
		System.out.println(sdf.format(date));
		
		// 년, 월, 일, 시, 분, 조, 요일 => 내 컴퓨터 시스템 상의 년, 월, 일, 시, 분, 초
		System.out.println(date.getYear());		// 124 => 현재년도 - 1900 = 124
		System.out.println(date.getMonth()+1);	// 6	 (0~11) + 1을 해줘야 한다 
		System.out.println(date.getDate());		// 26  
		System.out.println(date.getHours());	// 24 시간제
		System.out.println(date.getMinutes());
		System.out.println(date.getSeconds());
		
		// 0= Sunday, 1= Monday, 2= Tuesday, 3 = Wednesday,
		// 4= Thursday, 5= Friday, 6- Saturday
			int k = date.getDay();
		switch (k) {
		case 0: System.out.println("월요일"); break;
		case 1: System.out.println("화요일"); break;
		case 2: System.out.println("수요일"); break;
		case 3: System.out.println("목요일"); break;
		case 4: System.out.println("금요일"); break;
		case 5: System.out.println("토요일"); break;
		case 6: System.out.println("일요일"); break;
		
		
		
			
			
		
		
		}
	
	}
}
