package com.ict.day11;

public class Ex03 {
	// 오버로딩(중복정의) : 같은 클래스에서 같은 이름의 메서드가 여러개 정의 하는 것
	// 						단, 인자의 자료형이나 개수가 달라야 한다.
	
	public double plus(int s1, int s2) {
		double sum = s1 + s2 ;
		return sum;
	}
	
	public double plus(int s1, double s2) {
		double sum = s1 + s2 ;
		return sum;
	}
	
	public double plus(double s1, double s2) {
		double sum = s1 + s2 ;
		return sum;
	}
	public double plus(String s1, String s2) {
		double sum = Double.parseDouble(s1) + Double.parseDouble(s2) ;
		return sum;
	}
	public double plus(int s1, String s2) {
		//	double sum = s1 + Double.parseDouble(s2) ;
		
		// 다른 방법 : 메서드가 다른 메서드를 호출
		double k1 = Double.parseDouble(s2);
		double sum = plus(s1, k1);
		return sum;
	}
	
}
