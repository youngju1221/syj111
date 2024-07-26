package com.ict.day11;

public class Ex14 {
	public static void main(String[] args) {
		Ex13 t1 = new Ex13();
		String title = t1.getTitle();
		String review = t1.getReview();
		int count = t1.getCount();
		boolean live = t1.isLive();
		
//		 null : 물리적인 주소를 가리키지 않는 문자열을 의미
//		        아무것도 참조하지 않고 있다.
//		System.out.println(title);
//		System.out.println(review);
//		System.out.println(count);
//		System.out.println(live);
//		
		// 데이터를 변경하거나 넣을 때 : setter 메서드 사용 
		t1.setTitle("인셉션");
		t1.setReview("인생은 무한 루프");
		
		Ex13 t2 = new Ex13();
		t2.setTitle("어바웃 타임");
		t2.setReview("인생 시간 영화!");
		
		
		System.out.println("영화 제목 : " + t1.getTitle() + ", 리뷰 : " + t1.getReview());
		System.out.println("영화 제목 : " + t2.getTitle() + ", 리뷰 : " + t2.getReview());
		
		System.out.println("========================");
		
		// 배열을 이용하자 
		Ex13[] arr = new Ex13[2];
		arr[0] = t1;
		arr[1] = t2;
		
		for (int i = 0; i < arr.length; i++) {
			System.out.println("영화 제목 : " + arr[i].getTitle()
					+", 리뷰 : " + arr[i].getReview());
		}

	}
}








