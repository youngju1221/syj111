package com.ict.day11;

import java.util.Scanner;

public class Ex08 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("학생 수 : ");
		int cnt = sc.nextInt();
		
		// Ex07로 만들어진 클래스의 모임 : 객체형 배열, 참조 자료형배열 => 클래스를 배열로
		Ex07[] arr = new Ex07[cnt];
		for (int i = 0; i < arr.length; i++) {
			Ex07 p = new Ex07();
			System.out.print("이름");
			String name = sc.next();
	
			System.out.print("국어");
			int kor = sc.nextInt();
			
			System.out.print("영어");
			int eng = sc.nextInt();
			
			System.out.print("수학");
			int math = sc.nextInt();
			
			p.play01(name, kor, eng, math);
			
			arr[i] = p;
		}
		
		// 순위
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr.length; j++) {
				if (arr[i].play03() < arr[j].play03()) {
					// 내 순위 꺼내자
					int k = arr[i].play06();
					// 내 순위 변경
					k = k+ 1; //++k
					// 변경 된 값 넣기
					arr[i].play07(k);	
				}
			}
		}
		// 정렬
		Ex07 tmp = new Ex07();
		for (int i = 0; i < arr.length-1; i++) {
			for (int j = i+1; j < arr.length; j++) {
				if (arr[i].play06() > arr[j].play06()) {
					tmp = arr[i];
					arr[i] = arr[j];
					arr[j] = tmp;
				}
			}
		}
		
		// 출력
		System.out.println("이 름\t총 점\t평 균\t학 점\t순 위");
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i].play02()+"\t");
			System.out.print(arr[i].play03()+"\t");
			System.out.print(arr[i].play04()+"\t");
			System.out.print(arr[i].play05()+"\t");
			System.out.println(arr[i].play06());
		}
	}
}
