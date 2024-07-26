package com.ict.day08;

import java.util.Scanner;

public class Ex06 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// 학생 수 입력
		System.out.println("학생 수 :");
		int cnt = sc.nextInt();
		        
		String[][] arr = new String[cnt][8];

		// 학생별 성적 입력 및 계산
		for (int i = 0; i < arr.length; i++) {
		        	
		// arr 2차원 배열에 넣을 1차원 배열 : 한사람 정보를 담은 배열
		    String[] p = new String[8];

		    System.out.print("이름 : ");
		    p[0] = sc.next();  
		            
		    System.out.print("국어 : ");
		    p[1] = sc.next();  
		    //p[1] = String.valueOF(sc.nextInt());
		            
		    System.out.print("영어 : ");
		    p[2] = sc.next();  

		    System.out.print("수학 : ");
		    p[3] = sc.next(); 
		    // Integer 클래스 : 정수 형태의 문자열을 int 형으로 변경 시키는 클래스  
		    int kor = Integer.parseInt(p[1]);
		    int eng = Integer.parseInt(p[1]);
		    int math = Integer.parseInt(p[1]);
		    
		    // 총점
		    int sum = kor + eng + math;
		    // valueOf : 어떤 기본자료형이든지 String 으로 변경 시킴 (기본자료형 + "")
		    p[4] = String.valueOf(sum);
		    
		    // 평균     
		    double avg = (int)(sum/3.0*100)/100.0;
		    p[5] = String.valueOf(avg);
		            
		    // 학점
		    if (avg >= 90) {
				p[6] = "A";
			}else if (avg >= 80) {
				p[6] = "B";
			}else if (avg >= 70) {
				p[6] = "C";
			}else{
				p[6] = "F";
			}
		            
		     // 순위
		           p[7] = "1";
		     // 2차원배열에 저장
		           arr[i] = p;
		}
		        
		     // 순위
		     for (int i = 0; i < arr.length; i++) {
				for (int j = 0; j < arr.length; j++) {
					
					if (Integer.parseInt(arr[i][4]) < Integer.parseInt(arr[j][4])) {
						int rank = Integer.parseInt(arr[i][7]);
							rank++;
							arr[i][7] =	String.valueOf(++rank);
					}
				}
			}
		        	
		     // 정렬
		     		// 임시
		     String[] tmp = new String[8];
		     for (int i = 0; i < arr.length-1; i++) {
				for (int j = i+1; j < arr.length; j++) {		
					if (Integer.parseInt(arr[i][7]) > Integer.parseInt(arr[j][7])) {
						tmp = arr[i];
						arr[i] = arr[j];
						arr[j] = tmp;							
					}
				}
			}

		     //출력
		     for (int i = 0; i < arr.length; i++) {
		        for (int j = 0; j < arr.length; j++) {
		        	System.out.println(arr[i][j]+ " ");
		        }
		        System.out.println();
		     }
	}
}
