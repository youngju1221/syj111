package com.ict.day10;

public class Ex01 {
	// 자료형과 상관없이 저장 가능
	String name = "홍길동";
	int kor = 80 ;
	int eng = 80 ;
	int math = 80 ;
	int sum = 0 ;
	double avg = 0 ;
	char hak = 0;
	
	// 메서드([인자]) : 기능, 동작, 하는 것
	// 해당 메서드를 호출하면 실행 후 호출한 곳으로 되돌아 간다.
	// 되돌아 갈때  -- 데이터을 가지고 간다. (가지고 가는 데이터의 자료형 => 반환형)
	//               마지막 줄에 반드시 return 가지고갈 데이터(변수) ;
	//           -- 그냥 간다 (가지고 가는 데이터의 자료형도 없다. => void)
	
	// 메서드 형식 : [접근제한자][메서드종류] 반환형 메서드이름([인자 ...])
	// - 접근제한자 : public(누구나 접근 가능), private(외부에서는 접근 불가), 생략(default), protected
	// - 메서드 종류 : static => 반드시 static 예약어 사용, instance(일반적인) => 생략
	// - 반환형 : 되돌아 갈때  -- 데이터을 가지고 간다. (가지고 가는 데이터의 자료형 => 반환형) 
	//                        마지막 줄에 반드시 return 가지고갈 데이터(변수) ;
    //                     -- 그냥 간다 (가지고 가는 데이터의 자료형도 없다. => void)
	// - 메서드이름 : 소문자로시작, 두 단어이상이면 단어의 첫글자는 대문자로 사용
		 
	// 인스턴스 메서드 , 반환형이 없음
	// 자기를 호출한 곳으로 되돌아 간다.
	public void play01() {
	   sum = kor + eng + math;
	}
	// 인스턴스 메서드, 반환형이 있음
	public int play02() {
		int k = kor + eng + math;
		return k ;
	}
	// 인스턴스 메서드, 반환형이 있음(데이터와 반환형이 같은 자료형이어야 한다.)
	public int play03() {
		return kor + eng + math;
	}
	// 인스턴스 메서드, 반환형이 있음(데이터와 반환형이 같은 자료형이어야 한다.)
	public String play04() {
		return String.valueOf(kor+eng+math);
	}
	// 인스턴스 메서드, 반환형이 있음(데이터보다 반환형의 자료형이 크면 상관없다.)
	public double play05() {
		return kor + eng + math;
	}
	// 인스턴스 메서드, 반환형이 있음(데이터보다 반환형의 자료형이 작으면 오류)
	// public int play06() {
	//	 return (kor + eng + math)*1.0;
	// }
}








