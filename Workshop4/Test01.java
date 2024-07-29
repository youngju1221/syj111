package Workshop4;

public class Test01 {

	public static void main(String[] args) {
		// 2차원 배열 arr2에 담긴 모든 값의 총합과 평균을 구하는 프로그램을 작성 하시오.
		// 출력은 아래와 같이 이루어 진다. 
		// 합과 평균은 정수형으로 평균은 실수형으로 출력 하시오. 
		// total = 240 
		// average = 16.0 
		int[][] arr2 = {
	            {5, 5},
	            {10, 10, 10, 10, 10},
	            {20, 20, 20},
	            {30, 30, 30, 30}
	        };
	        
	        int total = 0; // 총합을 저장할 변수
	        int count = 0; // 요소의 개수를 저장할 변수
	        
	        // 2차원 배열을 순회하여 총합과 요소의 개수 계산
	        for (int i = 0; i < arr2.length; i++) {
	            for (int j = 0; j < arr2[i].length; j++) {
	                total += arr2[i][j]; // 현재 요소를 총합에 추가
	                count++; // 요소의 개수 증가
	            }
	        }
	        
	        // 평균 계산
	        double average = (double) total / count;
	        
	        // 결과 출력
	        System.out.println("total = " + total);
	        System.out.println("average = " + average);
	}       
}