package com.Test3;

public class StudentTest {
    public static void main(String[] args) {
        // Student 객체 배열 생성 및 초기화
        Student[] studentArray = new Student[3];
        studentArray[0] = new Student("홍길동", 15, 170, 80);
        studentArray[1] = new Student("한사람", 13, 180, 70);
        studentArray[2] = new Student("임걱정", 16, 175, 65);

        // 배열에 있는 객체 정보를 모두 출력 (for문 사용)
        for (Student student : studentArray) {
            System.out.println(student.studentInfo());
        }

        // 나이의 평균 출력
        double totalAge = 0;
        for (Student student : studentArray) {
            totalAge += student.getAge();
        }
        double averageAge = totalAge / studentArray.length;
        System.out.println("나이의 평균 : " + String.format("%.3f", averageAge));

        // 신장의 평균 출력
        double totalHeight = 0;
        for (Student student : studentArray) {
            totalHeight += student.getHeight();
        }
        double averageHeight = totalHeight / studentArray.length;
        System.out.println("신장의 평균 : " + String.format("%.3f", averageHeight));

        // 몸무게의 평균 출력
        double totalWeight = 0;
        for (Student student : studentArray) {
            totalWeight += student.getWeight();
        }
        double averageWeight = totalWeight / studentArray.length;
        System.out.println("몸무게의 평균 : " + String.format("%.3f", averageWeight));

        // 나이가 가장 적은 학생과 많은 학생 출력
        Student minAgeStudent = studentArray[0];
        Student maxAgeStudent = studentArray[0];
        for (Student student : studentArray) {
            if (student.getAge() < minAgeStudent.getAge()) {
                minAgeStudent = student;
            }
            if (student.getAge() > maxAgeStudent.getAge()) {
                maxAgeStudent = student;
            }
        }
        System.out.println("나이가 가장 적은 학생 : " + minAgeStudent.studentInfo());
        System.out.println("나이가 가장 많은 학생: " + maxAgeStudent.studentInfo());

        // 신장이 가장 적은 학생과 큰 학생 출력
        Student minHeightStudent = studentArray[0];
        Student maxHeightStudent = studentArray[0];
        for (Student student : studentArray) {
            if (student.getHeight() < minHeightStudent.getHeight()) {
                minHeightStudent = student;
            }
            if (student.getHeight() > maxHeightStudent.getHeight()) {
                maxHeightStudent = student;
            }
        }
        System.out.println("신장이 가장 적은 학생 : " + minHeightStudent.studentInfo());
        System.out.println("신장이 가장 큰 학생 : " + maxHeightStudent.studentInfo());

        // 몸무게가 가장 적은 학생과 많은 학생 출력
        Student minWeightStudent = studentArray[0];
        Student maxWeightStudent = studentArray[0];
        for (Student student : studentArray) {
            if (student.getWeight() < minWeightStudent.getWeight()) {
                minWeightStudent = student;
            }
            if (student.getWeight() > maxWeightStudent.getWeight()) {
                maxWeightStudent = student;
            }
        }
        System.out.println("몸무게가 가장 적은 학생 : " + minWeightStudent.studentInfo());
        System.out.println("몸무게가 가장 많은 학생 : " + maxWeightStudent.studentInfo());
    }
}