package com.ict.day12;


public class Ex11 {

	public static void main(String[] args) {
		// 객체 생성과 상관없이 static 사용가능
		System.out.println(Ex10.num);

		// instance 이므로 오류
		//System.out.println(EX10.su);
		
		//Private 이므로 오류
		//System.out.println(EX10.age);
	
		Ex10.play2();
		// instance 이므로 오류
		//Ex10.play();
		
		// private 이므로 오류
		//Ex10.play3();
		
		// static은 여러 클래스에서 공통으로 사용 한다.
		Ex10 t1 = new Ex10();
		System.out.println(t1.su);	// 11
		System.out.println(t1.num);	// 11
		//private 이므로 오류
		//System.out.println(t1.age);
		System.out.println();
		
		Ex10 t2 = new Ex10();
		System.out.println(t2.su);	// 11
		System.out.println(t2.num);	// 12
		System.out.println();
		
		Ex10 t3 = new Ex10();
		System.out.println(t3.su);	// 11
		System.out.println(t3.num);	// 13
	}

}
