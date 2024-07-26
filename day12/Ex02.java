package com.ict.day12;

import java.util.Scanner;

public class Ex02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.println("학생 수 : ");
		int cnt = sc.nextInt();

		Ex01[] arr = new Ex01[cnt];
		for (int i = 0; i < arr.length; i++) {
			System.out.print("이름 : ");
			String name = sc.next();

			System.out.println("국어 : ");
			int kor = sc.nextInt();

			System.out.println("영어 : ");
			int eng = sc.nextInt();

			System.out.println("수학 : ");
			int math = sc.nextInt();

			Ex01 p = new Ex01(name, kor, eng, math);
			arr[i] = p;
		}
		// 순위
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr.length; j++) {
				if (arr[i].getSum() < arr[j].getSum()) {
					int k = arr[i].getRank();
					k = k + 1;
					arr[i].setRank(k);
				}
			}
		}
		// 정렬
		Ex01 tmp = new Ex01();
		for (int i = 0; i < arr.length - 1; i++) {
			for (int j = i+1; j < arr.length ; j++) {
				if (arr[i].getRank() > arr[j].getRank()) {
					tmp = arr[i];
					arr[i] = arr[j];
					arr[j] = tmp;
				}
			}
		}
		// 출력
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i].getName() + "\t");
			System.out.print(arr[i].getSum() + "\t");
			System.out.print(arr[i].getAvg() + "\t");
			System.out.print(arr[i].getHak() + "\t");
			System.out.println(arr[i].getRank());
		}
	}

}
