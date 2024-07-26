package com.ict.day02;
import java.util.Scanner;

public class Ex08 {

	public static void main(String[] args) {
		// 9630초 는 몇시 몇분 몇초인가 ?
		int total = 9630;
		
		int h = 0;
		int m = 0;
		int s = 0;
		
		int res = 0; // 나머지를 저장하는 변수
		
		h = total/3600;
		res = total % 3600 ;
		
		m = res /60 ;
		
		s = res % 60;
		
		System.out.println(h +":"+  m +":"+ s);
				
		
		
	}

}
