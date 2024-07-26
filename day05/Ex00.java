package com.ict.day05;

public class Ex00 {

	public static void main(String[] args) {
		// 숙제 p123페이지 Q4,Q5 문제 풀기
		// Q4
		int n = 5; // 마름모의 반 높이
        for (int i = 1; i < n; i++) { // 각 줄
            for (int j = 1; j <  n - i; j++) { // 공백 출력
                System.out.print(" ");
            }
            for (int k = 1; k <= 2 * i - 1; k++) { // 별 출력
                System.out.print("*");
            }
            System.out.println(); // 줄바꿈
        }
        System.out.println();
      
        // Q5
        
        int m = 4; // 마름모의 반 높이
        // 상단 피라미드
        for (int i = 1; i <= m; i++) { 
            for (int j = 1; j <= m - i; j++) { // 공백 출력
                System.out.print(" ");
            }
            for (int k = 1; k <= 2 * i - 1; k++) { // 별 출력
                System.out.print("*");
            }
            System.out.println();
        }

        // 하단 피라미드
        for (int i = m - 1; i >= 1; i--) { 
            for (int j = 1; j <= m - i; j++) { // 공백 출력
                System.out.print(" ");
            }
            for (int k = 1; k <= 2 * i - 1; k++) { // 별 출력
                System.out.print("*");
            }
            System.out.println();
        }
    }
}