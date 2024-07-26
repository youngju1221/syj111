package com.ict.day07;

import java.util.Scanner;

public class Ex04 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("학생 수 : ");
		int cnt = scan.nextInt();

		String[] name = new String[cnt];
		int[] kor = new int[cnt];
		int[] eng = new int[cnt];
		int[] math = new int[cnt];
		int[] sum = new int[cnt];
		double[] avg = new double[cnt];
		String[] hak = new String[cnt];
		int[] rank = new int[cnt];

		for (int i = 0; i < rank.length; i++) {
			System.out.print("이름 : ");
			name[i] = scan.next();

			System.out.print("국어 : ");
			kor[i] = scan.nextInt();

			System.out.print("영어 : ");
			eng[i] = scan.nextInt();

			System.out.print("수학 : ");
			math[i] = scan.nextInt();

			sum[i] = kor[i] + eng[i] + math[i];
			avg[i] = (int) (sum[i] / 3.0 * 100) / 100.0;
			if (avg[i] >= 90) {
				hak[i] = "A학점";
			} else if (avg[i] >= 80) {
				hak[i] = "B학점";
			} else if (avg[i] >= 70) {
				hak[i] = "C학점";
			} else {
				hak[i] = "F학점";
			}

			// 순위 초기값
			rank[i] = 1;

		}
		// 출력하기
		System.out.println("이름\t총점\t평균\t학점\t순위");
		for (int i = 0; i < rank.length; i++) {
			System.out.print(name[i] + "\t");
			System.out.print(sum[i] + "\t");
			System.out.print(avg[i] + "\t");
			System.out.print(hak[i] + "\t");
			System.out.println(rank[i]);
		}
	}
}
