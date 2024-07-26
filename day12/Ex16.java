package com.ict.day12;

import java.util.Calendar;

public class Ex16 {
	public static void main(String[] args) {
		// Calendar 클래스
		
		// 현재 시간 
		Calendar now = Calendar.getInstance();
		System.out.println(now);
		System.out.println(now.getTime());
		System.out.println(now.getTimeZone());
		
		// 년, 월, 일, 시, 분, 초
		System.out.println(now.get(Calendar.YEAR) + "년");		
		System.out.println(now.get(Calendar.MONTH+1) + "월"); // (0~11)+1
		System.out.println(now.get(Calendar.DATE) + "일");
		System.out.println(now.get(Calendar.DAY_OF_MONTH) + "일");
		System.out.println(now.get(Calendar.HOUR) + "시");			// 12 시간제
		System.out.println(now.get(Calendar.HOUR_OF_DAY) + "시");	// 24 시간제
		
		// AM = 0 , PM = 1
		int res = now.get(Calendar.AM_PM);
		if (res == 0) {
			System.out.println("AM" + now.get(Calendar.HOUR) + "시");
		}else if (res==1) {
			System.out.println("PM" + now.get(Calendar.HOUR) + "시");
		}
		
		// 요일 : 1=>일요일 ~ 7=>토요일
		int result = now.get(Calendar.DAY_OF_WEEK);
		switch (result) {
		case 1: System.out.println("일요일"); break;
		case 2: System.out.println("월요일"); break;
		case 3: System.out.println("화요일"); break;
		case 4: System.out.println("수요일"); break;
		case 5: System.out.println("목요일"); break;
		case 6: System.out.println("금요일"); break;
		case 7: System.out.println("토요일"); break;
		}
		// milliseconds => 1/1000 초
		// 1970년 1월 1일 00시 00분 부터 지금 까지의 초
		System.out.println(now.getTimeInMillis());
		
		// 년, 월, 일, 시, 분, 초
		long millis = now.getTimeInMillis();
		Calendar curr= Calendar.getInstance();
		curr.setTimeInMillis(millis);
		System.out.println(curr.get(Calendar.YEAR));
		
		Calendar now2 = Calendar.getInstance();
		now2.set(Calendar.YEAR, 1998);
		now2.set(Calendar.MONTH, Calendar.DECEMBER);
		now2.set(Calendar.DAY_OF_MONTH, 26);
		
		
	}
}
