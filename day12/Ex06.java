package com.ict.day12;

public class Ex06 {

	public static void main(String[] args) {
		Ex05 t1 = new Ex05();
		Ex05 t2 = new Ex05("둘리");
		Ex05 t3 = new Ex05(3);
		Ex05 t4 = new Ex05("마이콜",42);
		
		t1.prn();	//	일지매, 24
		t2.prn();	//	둘리, 24
		t3.prn();	//	일지매, 3
		t4.prn();	//	마이콜, 42
		System.out.println();
		
		Ex07 s1 = new Ex07();
		Ex07 s2 = new Ex07("둘리");
		Ex07 s3 = new Ex07(3);
		Ex07 s4 = new Ex07("마이콜",42);	
		s1.prn();	//	태권브이, 34
		s2.prn();	//	둘리, 34
		s3.prn();	//	택권브이, 3
		s4.prn();	//	마이콜, 42
		
	}

}
