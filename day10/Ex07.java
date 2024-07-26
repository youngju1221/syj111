package com.ict.day10;

public class Ex07 {
	private String name = "";
	private int kor = 0 ;
	private int eng = 0 ;
	private int math = 0 ;
	private int sum = 0 ;
	private double avg = 0.0 ;
	private String hak = "";
	
	// String을 받아서 name에 저장시키는 기능
	public void play01(String k1) {
		name = k1 ;
	}
	
	// int 3개 받아서 sum 에 저장
	public void play02(int k1, int k2, int k3) {
		sum = k1 + k2 + k3 ;
	}
	
	// sum을 가지고 avg 구하기 (소수점 첫째자리)
	public void play03() {
		avg = (int)(sum/3.0 * 10) /10.0 ;
	}
	
	// avg 가지고 hak 구하기
	public void play04() {
		if(avg >=90) {
			hak = "A 학점";
		}else if(avg >= 80) {
			hak ="B 학점";
		}else if(avg >= 70) {
			hak = "C 학점";
		}else {
			hak = "F 학점";
		}
	}
	
	// 이름 총점 평균 학점 출력하기
	public void play05() {
		System.out.println("이름 : " + name);
		System.out.println("총점 : " + sum);
		System.out.println("평균 : " + avg);
		System.out.println("학점 : " + hak);
	}
}
