package Workshop4;

public class Calc {
//	int형 정수를 입력 받아 1부터 입력 받은 숫자까지 짝수의 합을 구하여  
//	리턴한다.
	public int calculate(int number) {
		int sum = 0;
        // 1부터 number까지의 짝수 합계 계산
        for (int i = 2; i <= number; i += 2) {
            sum += i;
        }
        return sum;
    }
}

