package com.ict.day11;

// 생성자를 이용한 객체 불변
public class Ex17 {
	private String name;
	private int price;

	public Ex17(String name, int price) {
		this.name = name;
		this.price = price;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public int getPrice() {
		return price;
	}
	
	

}
