package com.ict.day03;

import java.util.Scanner;

public class Ex04 {

	public static void main(String[] args) {
		// 이름, 국어, 영어, 수학, 점수를 키보드로 입력 받아서
		// 총점, 평균을 구하고, 이름, 총점, 평균을 출력하자
		
		// 키보드의 정보를 받기 위해서는 Scanner 클래스를 사용하자
		Scanner sc = new Scanner(System.in);
		
		System.out.print("이름 : ");
		String name = sc.nextLine();
		
		System.out.print("국어 : ");
		int kor = sc.nextInt();
		
		System.out.print("영어 : ");
		int eng = sc.nextInt();
		
		System.out.print("수학 : ");
		int math = sc.nextInt();
		
		//  총점 구하기
		int sum = kor + eng + math;
		
		// 평균 구하기
		double avg = (int)(sum/3.0 * 100) / 100.0;
				 	
		System.out.println("이름 : " + name);
		System.out.println("총점 : " + sum);
		System.out.println("평균 : " + avg);
		
	}

}
