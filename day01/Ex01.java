package com.ict.day01;

// 주석 : 컴파일러가 무시하고 지나가는 줄
// /**/ //사이 까지 주석
//		개발자 다른 개발자나 자기에게 멘트를 남길 때 사용

// 저장이름 = 자바파일이름 = 클래스이름
// 클래스이름은 무조건 첫글자는 영문자 대문자로 시작 나머지 소문자
// API 회사에서 만든 개발자 편의를 위해 제공하는 서비스
// System  같은 경우는 회사에서 제공하는 클래스파일 사용한 것이다.
// 이를 우리는 API를 사용했다 라고 한다.
public class Ex01 {
	//	()과 보이면 무조건 메서드이다.
	//	클래스안에는 메서드, 필드, 생성자 3개가 존재한다.	
	//	메서드는 실행, 동작, 하는 것 이다.
	//	필드는 데이터, 값, 을 의미 한다.
	//	필드에는 중간에 데이터를 변경해도 되는 것(변수)과
	//		변경하면 안되는 것(상수)이 있다.
	// 모든 글자가 대문자로 이루어지면 상수
	// 소문자로 시작하는 것은 변수와 메서드 이다.
	
	// main메서드 = JVM이 해석과 실행을 위해서 main메서드 호출
	// main메서드 프로그램 시작점이다.
	public static void main(String[] args) {
		// 클래스 뒤에서 shift +f2 => 클래스의 내용을 볼수 있다.
		System.out.println("Hello, Java");
		System.out.println("이름 : 손영주");
	}
}
// 이클립스 단축키 알아두기										
// main Ctrl + Space 											
// sysout Ctrl + Space											
// Ctrl + F11 : 실행											
// Ctrl + Space + F : 소스코드 자동 정리											
// Ctrl + D : 한줄 삭제
// Ctrl + I : 소스 정리
// Ctrl + Shift + O : 소스에 필요한 패키지 자동  Import시키기
// Ctrl + Alt + 방향키(↓) : 한 줄 복사 후 그 아래에 붙여넣음
// Ctrl + Alt + Up(Down) : 한 줄(블럭) 복사
// Ctrl + Shift + C : 한줄 주석
// 드래스 + Ctrl + Shift + / 드래그 한 부분 주석
// Alt + Shift + R : 지정 단어 수정
// Alt + Shift + S = R : Generate Getters and Setters: 필드에 대한 getter 및 setter 메서드를 생성합니다.
//Alt + Shift + S = O 이외 생성자 만들 때
