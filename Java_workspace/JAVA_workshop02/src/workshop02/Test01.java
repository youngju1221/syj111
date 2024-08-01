package workshop02;

public class Test01 {
	public static void main(String[] args) {
	     if (args.length != 3) {
	            System.out.println("잘못된 입력값 입니다.");
	            return;
	        }
	     	// 숫자 저장 배열
	     	int[] num = new int[3];

	        // 입력값 배열에 저장
	        for (int i = 0; i < 3; i++) {
	            
	            String input = args[i];
	            // 입력값이 1 ~ 9인지 확인
	            if (input.length() != 1 || input.charAt(0) < '1' || input.charAt(0) > '9') {
	                System.out.println("잘못된 입력값 입니다.");
	                return;
	            }
	            // 입력값을 정수로 변환해 배열에 저장
	            num[i] = input.charAt(0) - '0'; 

	        // 최대값과 최소값을 변수 지정
	        int max = num[0];
	        int min = num[0];

	        // 최대값과 최소값
	        for (int j = 1; j < 3; j++) {
	            if (num[j] > max) {
	                max = num[j];
	            }
	            if (num[j] < min) {
	                min = num[j];
	            }
	        }
	        // 결과 출력
	        System.out.print("입력값: ");
	        for (int j = 0; j < 3; j++) {
	            System.out.print(num[j]);
	            if (j < 2) {
	                System.out.print(" ");
	            }
	        }
	        System.out.println();

	        System.out.println("최대값: " + max);
	        System.out.println("최소값: " + min);
	        }
	}
}