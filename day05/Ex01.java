package com.ict.day05;

public class Ex01 {

	public static void main(String[] args) {
	// 다중 for 문 (중첩 for) : for 문 안에 또 다른 for 문 이 존재하는 것
	/*
		for(초기식1; 조건식1; 증감식1){
			조건식1이 참일때 실행 할 문장 ;
			조건식1이 참일때 실행 할 문장 ;
			
			for(초기식2; 조건식2; 증감식2)
				조건식2이 참일때 실행 할 문장 ;
			}
		
			조건식1이 참일때 실행 할 문장 ;
			조건식1이 참일때 실행 할 문장 ;
		}
	*/	
	
		for (int i = 0; i < 4; i++) {
			System.out.println("명령문1");
			
			for (int j = 0; j < 6; j++) {
				System.out.println("i=" + i +", j=" + j);
			}
			
			System.out.println("명령문2");
		}
		System.out.println("=======================");
		
		// 구구단 1
		for (int i = 2; i < 10; i++) {
			System.out.println(i+" 단");
			for (int j = 1; j < 10; j++) {
				System.out.println(i+"*"+j+"="+(i*j));
			}
		}
		System.out.println();
		
		// 구구단 2
		for (int i = 2; i < 10; i++) {
			for (int j = 1; j < 10; j++) {
				System.out.print(i+" * "+j+" = "+(i*j)+"\t");
			}
			System.out.println();
		}
		System.out.println();
		
		// 구구단 3
		for (int i = 1; i < 10; i++) {
			for (int j = 2; j < 10; j++) {
				System.out.print(j + " * " + i + " = " +(j * i)+"\t");
			}
			System.out.println();
		}
		System.out.println();
		
		// 짝수단만 출력하자
		for (int i = 2; i < 10; i++) {
			if (i % 2 == 0) {
				for (int j = 1; j < 10; j++) {
					System.out.print(i+" * "+j+" = "+(i*j)+"\t");
				}
				System.out.println();
			}			
		}
		System.out.println();
		
		
		// 0 0 0 0 
		// 0 0 0 0 
		// 0 0 0 0 
		// 0 0 0 0 
	
		for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {
                System.out.print("0 ");
            }
            System.out.println();
        }
		System.out.println();
		
		// 1 0 0 0		
		// 0 1 0 0		
		// 0 0 1 0
		// 0 0 0 1
        
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {
                if (i == j) {
                    System.out.print("1 ");
                } else {
                    System.out.print("0 ");
                }
            }
            System.out.println();
        }
       
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 4; j++) {
              
            }
            System.out.println();
        }
        
	}
}	