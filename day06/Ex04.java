package com.ict.day06;

import java.util.Arrays;
import java.util.Collections;

public class Ex04 {

	public static void main(String[] args) {
		// Arrays 클래스 : 배열을 다루기 위한 메서드가 포함되어 있는 클래스
		// 클래스가 가질수 있는 요소 3가지 : 필드, 메소드, 생성자
		// 1. 필드 : 변수와 상수 => 데이터, 상태, 특성
		// 2. 메서드 : 동작, 기능, 행동 하는 것
		// 3. 생성자 : 나중에 배우자
		
		int[] arr = new int[100];
	
		// for문을 이용한 데이터 저장
		for (int i = 0; i < arr.length; i++) {
			arr[i] = i * 5 ;
			System.out.println("arr[" + i + "]" +(i * 5));
		}
	
		// binarySearch(배열, 찾을 값) : 해당 배열에서 값을 검색 한 후 있는 위치 값(index)을 반환
		// 반환 : 해당 메서드 실행 시킨 주체에게 결과 값을 준다. ( 없으면 음수 나온다.)
		//  수 저장					배열 값, 찾을값
			int su = Arrays.binarySearch(arr, 45);
			System.out.println(su);
			
		// copyOf(배열, 새로 만든 배열의 길이)
		//  수 저장					배열 값, 길이	
			int[] arr1 = Arrays.copyOf(arr, 3);
			for (int i = 0; i < arr1.length; i++) {
				System.out.println(arr1[i]);
			}
			System.out.println();
			
			int[] arr2 = Arrays.copyOf(arr, 103);
			for (int i = 0; i < arr2.length; i++) {
				System.out.println(arr2[i]);
			}
			System.out.println();
			
		// copyOfRange(배열, 시작위치, 끝 위치(포함안됨))
		//  수 저장						배열 값, 시작, 끝		
			int[] arr3 = Arrays.copyOfRange(arr2, 10, 20);
			for (int i = 0; i < arr3.length; i++) {
				System.out.println(arr3[i]);
			}
			System.out.println();
			
			int[] arr4 = new int[10];
			
			// fill(배열, 초기값) : 해당 배열의 초기값을 지정
			//		배열 값, 초기 값	
			Arrays.fill(arr4, 3);
			for (int i = 0; i < arr4.length; i++) {
						System.out.println("arr["+i+"]="+arr4[i]);
			}
			
			int[] arr5 = {7,4,3,1,5,6,2};
			// sort(배열) : 해당 배열 오름차수 정렬
			Arrays.sort(arr5);
			for (int i = 0; i < arr5.length; i++) {
				System.out.println("arr[" + i + "]=" + arr5[i]);
			}
			System.out.println();
			
			// ** 기본자료형은 내림차순을 만들 수 없다.
			// 단, 오름차순된 배열을 반대로 호출 할 수 는 없다.
			int[] arr6 = Arrays.copyOf(arr5, arr5.length);
			int k = 0 ;
			for (int i = arr5.length-1; i >= 0; i--) {
				System.out.println("arr5[" + i + "]=" + arr5[i]);
				//arr6[k++] = arr5[i] ;
				//k=k+1;
				arr6[k++] = arr5[i];
			}
			System.out.println();
			
			for (int i = 0; i < arr6.length; i++) {
				System.out.println("arr6{" + i + "]="+ arr6[i]);
			}
			System.out.println();
			
			System.out.println("컬렉션을 사용해서 내림차순 만들기(자세한 내용은 뒤에서)");
			// 주의 사항 : int X, Integer 클래스 사용
			Integer[] arr7 = {7,4,3,1,5,6,2};
			Arrays.sort(arr7,Collections.reverseOrder());	
			for (int i = 0; i < arr7.length; i++) {
				System.out.println("arr7{" + i + "]="+ arr7[i]);
			}
			
			// Arrays.asList()  : 배열을 리스트(컬렉션)으로 만들기
			// List의 toArray() : 리스트를 배열로 만들기
			
			
	}
}