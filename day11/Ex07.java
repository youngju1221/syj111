package com.ict.day11;

public class Ex07 {
	private String name = "";
	private int kor = 0;
	private int eng = 0;
	private int math = 0;
	private int sum = 0;
	private double avg = 0.0;
	private String hak = "";
	private int rank = 1;
	
	public void play01(String str, int k1, int k2, int k3) {
		name = str ;
		kor = k1 ;
		eng = k1 ;
		math = k1 ;
		// 1. 여기서 sum, avg, hak 구하는 방법
		// 2. sum, avg, hak 구하는 메서드를 호출 하는 방법
		sum = kor + eng + math;
		avg = (int)(sum/3.0*10)/10.0;
		if (avg>=90) {
			hak = "A학점";
		} else if (avg>=80) {
			hak = "B학점";
		} else if (avg>=70){
			hak = "C학점";
		} else {
			hak = "F학점";
		}
	}
	// 이름, 총점, 평균, 학점, 순위를 호출한 곳으로 되돌려 보내는 메서드 만들기
	public String play02() {
		return name ;
	}
	public int play03() {
		return sum ;
	}
	public double play04() {
		return avg ;
	}
	public String play05() {
		return hak;
	}
	public int play06() {
		return rank;
	}
	
	// 순위를 변경하는 메서드
	public void play07(int k) {
		rank = k;
	}
}
