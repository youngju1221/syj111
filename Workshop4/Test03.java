package Workshop4;

public class Test03 {

	public static void main(String[] args) {
		// 다음 배열의 내용을 실행 결과와 같이 출력 되도록 프로그램을 작성 하시오. 
		// 출력 결과
		// 100 90 80 70 60 50 40 30 20 10
		int[] arr = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
		  // 배열을 역순으로 출력하기
        for (int i = arr.length - 1; i >= 0; i--) {
            System.out.print(arr[i] + " ");
        }
        System.out.println(); // 줄 바꿈
    }
}