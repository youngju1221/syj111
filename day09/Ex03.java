package com.ict.day09;

public class Ex03 {
	
	public static void main(String[] args) {
	// Ex02의 변수를 객체 생성하지 않고 호출 => static
		double k1 = Ex02.avg;
		char k2 = Ex02.HAK;
		System.out.println(k1);
		System.out.println(k2);
		
	// Ex02가 가지고 있는 인스턴스 변수를 사용하려면 객체 생성해야 된다.
	// 객체 생성방법 : 클래스이름 참조변수 = new 생성자이름[(인자)];
	// 객체 생성시 해당 클래스에 생성자가 없으면 기본 생성자를 이용해서 객체 생성된다.	
		Ex02 test = new Ex02();
		System.out.println(test);
		System.out.println(test.name);
		System.out.println(test.SUM);
		System.out.println(test.avg);
		System.out.println(test.HAK);
		
		// 변수는 데이터 변경 가능

		test.name = "고길동";
		System.out.println(test.name);
		
		test.avg = 78.88 ;
		System.out.println(test.avg);
		System.out.println(Ex02.avg);
		System.out.println();

		Ex02.avg = 98.88 ;
		System.out.println(test.avg);
		System.out.println(Ex02.avg);
		
		// 상수는 데이터 변경이 안된다.
		// test.SUM = 295; 오류
		// test.HAK = 'B'; 오류
		// Ex02.HAK = 'C'; 오류
	}
}
