package Workshop4;

public class Test04 {

	public static void main(String[] args) {
		// 프로그램 실행 시 scanner로 5~10까지의 정수형 데이터를 입력 받는다. 
		// 입력 받은 정수 값을 Calc class의 calculate()함수를 이용하여 1부터 입력 받은 숫자까지 
		// 짝수만 더하는 프로그램을 작성 한다.
		// Calc 객체를 생성 하고 calculate() 함수를 이용하여 결과를 받아 출력 한다.
		// 출력 결과
		// 입력 값 : 5
		// 짝수: 2 4   
		// 결과: 6
		        if (args.length == 0) {
		            System.out.println("사용법: java Main <숫자>");
		            return;
		        }

		        int number = Integer.parseInt(args[0]);

		        // Calc 클래스의 인스턴스 생성 및 계산 호출
		        Calc calc = new Calc();
		        int result = calc.calculate(number);

		        // 결과 출력
		        System.out.println("1부터 " + number + "까지의 짝수 합계: " + result);
		    }
		}
