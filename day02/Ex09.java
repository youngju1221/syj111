package com.ict.day02;

public class Ex09 {

	public static void main(String[] args) {
		// 카페모카 6500이다.
		// 친구와 둘이서 15000원 내고 주문했다.
		// 잔돈은 얼마인가 ? ( 단, 부과세 10% 포함한다.)

		String menu = "카페모카";
		int dan = 6500 ;
		int su = 2 ;
		int input = 15000;
		int output = 0 ;
		
		int total = dan * su;
		int vat1 = total / 10;
		int sum1 = total + vat1 ;
		
		int vat2 = (int)(total*0.1);
		int sum2 = total + vat2 ;
		
		int sum3 = (int)(total * 1.1);
	
		output = input - sum1;
		
		System.out.println("잔돈 :" + output);
	
	}

}
