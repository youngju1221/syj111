package com.ict.day11;

public class Ex16 {
	public static void main(String[] args) {
		Ex15 t1 = new Ex15();
		System.out.println("이름 : " + t1.getName());
		System.out.println("나이 : " + t1.getAge());
		System.out.println("키 : " + t1.getHeight());
		
		Ex15 t2 = new Ex15("희동이");
		System.out.println("이름 : " + t2.getName());
		System.out.println("나이 : " + t2.getAge());
		System.out.println("키 : " + t2.getHeight());
		
	    // 이름은 임꺽정, 나이는 34살인 객체를 생성자를 이용해서 만들자
		Ex15 t3 = new Ex15("임꺽정", 34);
		System.out.println("이름 : " + t3.getName());
		System.out.println("나이 : " + t3.getAge());
		System.out.println("키 : " + t3.getHeight());
		
	}
}
