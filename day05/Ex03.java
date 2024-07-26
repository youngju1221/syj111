package com.ict.day05;

public class Ex03 {

	public static void main(String[] args) {
		// while 문 
		// 형식 2) : if 와 break 를 이용해서 while 문 탈출한다.
		//			if 문은 둘다 사용하는것이 아니라 둘 중 하나를 사용
		//			초기식
		//			while(true){
		//				[if(빠져나갈 조건식) break; ]
		//				실행할 내용 ;
		//				[if(빠져나갈 조건식) break; ]
		//				증감식;
		//			} 
		
		// 1~10까지 출력
		
		int i = 1;
		while (true) {
			if(i >= 11) {
				break;
			}
			System.out.print(i + " ");
			i++;
		}
		System.out.println();
		
		i = 1;
		while (true) {
			if(i >= 10) {
				break;
			}
			System.out.print(i + " ");
			i++;
		}
		System.out.println();
	}

}
