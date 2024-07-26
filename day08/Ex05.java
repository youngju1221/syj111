package com.ict.day08;

import java.util.Scanner;

public class Ex05 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// 학생수
		System.out.println("학생 수 :");
		int cnt = sc.nextInt();
		double[][] arr = new double[cnt][8];

		for (int i = 0; i < arr.length; i++) {
			
			// 한사람의 정보를 담는 배열을 만들자
			double[] p = new double[8];

			System.out.println("번호 : ");
			p[0] = sc.nextDouble();

			System.out.println("국어 : ");
			p[1] = sc.nextDouble();

			System.out.println("영어 : ");
			p[2] = sc.nextDouble();

			System.out.println("수학 : ");
			p[3] = sc.nextDouble();
		
			// 총점
			p[4] = p[1] + p[2] + p[3];
			
			// 평균
			p[5] = (int) (p[4] / 3.0 * 100) / 100.0;
			
			// 학점
			if (p[5] >= 90) {
				p[6] = 'A';
			} else if (p[5] >= 80) {
				p[6] = 'B';
			} else if (p[5] >= 70) {
				p[6] = 'C';
			} else {
				p[6] = 'f';
			}
			// 순위
			p[7] = 1;
			
			arr[i] = p;
			}
		
		// 순위
			for (int i = 0; i < arr.length; i++) {
				for (int j = 0; j < arr.length; j++) {
					if (arr[i][4] < arr[j][4]) {
						arr[i][7]++;
					}
				}
			}
		
			//정렬
			double[] tmp = new double[8];
			for (int i = 0; i < arr.length-1; i++) {
				for (int j = i+1; j < arr.length; j++) {
					if (arr[i][7] > arr[j][7]) {
						tmp = arr[i];
						arr[i] = arr[j];
						arr[j] = tmp;
					}
				}
			}
		
			// 출력
			for (int i = 0; i < arr.length; i++) {
				for (int j = 0; j < arr[i].length; j++) {
					if (j == 5) {
						System.out.print(arr[i][j] + " ");
					} else if (j == 6) {
						System.out.print((char) arr[i][j] + " ");
					} else {
						System.out.print((int) (arr[i][j]) + " ");
					}
				}
				System.out.println();
			}

	}
}
