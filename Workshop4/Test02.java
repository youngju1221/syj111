package Workshop4;

import java.util.Random;

public class Test02 {

	public static void main(String[] args) {
		// 다음과 같이 선언되어 있는 배열에 1~10까지의 랜덤한 숫자를 넣고 이 배열에 어떤 값이
		// 셋팅 되었는지 출력 하고 배열 데이터의
		// 합과 평균을 구하는 프로그램을 작성 하시오. 
			int[] arr3 = new int[5];
		// option: 랜덤한 숫자의 중복 허용을 하지 않게 배열에 입력 한다. 
		// 합은 정수형으로 평균은 실수형으로 출력 하시오. 
			        Random random = new Random();
			        boolean[] used = new boolean[11]; // 1부터 10까지의 숫자가 사용되었는지 추적하는 배열
			        
			        int count = 0; // 배열에 숫자를 채우는 인덱스
			        
			        // 5개의 중복되지 않는 랜덤 숫자 생성
			        while (count < arr3.length) {
			            int num = random.nextInt(10) + 1; // 1부터 10까지의 랜덤 숫자 생성
			            if (!used[num]) { // 숫자가 아직 사용되지 않았다면
			                arr3[count] = num; // 배열에 숫자 추가
			                used[num] = true; // 숫자 사용으로 표시
			                count++; // 다음 배열 인덱스 준비
			            }
			        }

			        // 배열 값 출력
			        for (int i = 0; i < arr3.length; i++) {
			            System.out.print(arr3[i] + " ");
			        }
			        System.out.println();

			        // 합계와 평균 계산
			        int total = 0;
			        for (int i = 0; i < arr3.length; i++) {
			            total = arr3[i];
			        }
			        double avg = (double) total / arr3.length;

			        // 결과 출력
			        System.out.println("sum = " + total);
			        System.out.println("avg = " + avg);
			    }
			}
	
