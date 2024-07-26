package com.ict.day07;


public class Ex02 {

	public static void main(String[] args) {
		// 순위 구하기
		// 1. 모든 사람의 순위를 1등으로 초기 값 부여
		// 2. 모든 사람과 비교한다.(자기 자신은 제외)
		// 3. 나(i) 보다 남(j)이 크면 내 순위 증가 시킨다.
		
		int[] su = {90, 80,90, 70, 95, 65, 85, 75};
		int[] rank = {1, 1, 1, 1, 1, 1, 1};
		
		for (int i = 0; i < rank.length; i++) {
			for (int j = 0; j < rank.length; j++) {
				if (su[i] < su[j]) {
					rank[i]++;
				}
			}
		}
			for (int i = 0; i < rank.length; i++) {
				System.out.print(rank[i]+" ");
			}
			System.out.println();
		}	
}
