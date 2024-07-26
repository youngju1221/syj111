package com.ict.day12;

public class Ex01 {
	private String name;
	private int kor;
	private int eng;
	private int math;
	private int sum;
	private double avg;
	private String hak;
	private int rank = 1;

	// 정렬 때문에 만들어야 한다
	public Ex01() {
	}
	
	public Ex01(String name, int kor, int eng, int math) {
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		
		// 생성자가 다른 메서드를 호출 할 수한다
		process();
	}
	
	public void process() {
		sum = kor +eng + math;
		avg = (int)(sum/3.0*10)/10.0;
		if (avg>=90) {
			hak = "A 학점";
		} else if(avg>=80){
			hak = "B 학점";
		} else if (avg>=70) {
			hak = "C 학점";
		} else {
			hak = "F 학점";
		}
	}

	// get / set
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public String getHak() {
		return hak;
	}

	public void setHak(String hak) {
		this.hak = hak;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}
	

}
