package com.ict.day11;

public class Ex12 {
	public static void main(String[] args) {
		// 나이가 3살, 이름 큰뿔소, 살아있음
		Ex11 t = new Ex11();
		System.out.println("나이 : " +  t.getAge());
		System.out.println("이름 : " + t.getName());
		boolean res = t.isLive();
		if(res) {
			System.out.println("살아있음");
		}else {
			System.out.println("죽었음");
		}
		System.out.println("=========");
		
		// 나이 5살이고, 이름 펭귄, 살아있음 으로 변경하자 
		t.setAge(5);
		t.setName("펭귄");
		
		System.out.println("나이 : " +  t.getAge());
		System.out.println("이름 : " + t.getName());
		res = t.isLive();
		if(res) {
			System.out.println("살아있음");
		}else {
			System.out.println("죽었음");
		}
		
	}
}
