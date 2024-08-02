--1. �� ������б��� �а� �̸��� �迭�� ǥ���Ͻÿ�. ��, ��� ����� "�а� ��", "�迭" 
--���� ǥ���ϵ��� �Ѵ�. 
SELECT DEPARTMENT_NAME AS "�а� ��", 
        CATEGORY AS "�迭"
FROM TB_DEPARTMENT;
    
--2.  �а��� �а� ������ ������ ���� ���·� ȭ�鿡 ��� �Ѵ�.    
SELECT DEPARTMENT_NAME || '�� ������ ' || CAPACITY || '�� �Դϴ�.' AS "�а��� ����"
FROM TB_DEPARTMENT;

-- 3. "������а�" �� �ٴϴ� ���л� �� ���� �������� ���л��� ã�ƴ޶�� ��û�� 
--���Դ�. �����ΰ�? (�����а��� '�а��ڵ�'�� �а� ���̺�(TB_DEPARTMENT)�� ��ȸ�ؼ� 
--ã�� ������ ����)     
SELECT S.STUDENT_NAME
FROM TB_STUDENT S
JOIN TB_DEPARTMENT D
ON S.DEPARTMENT_NO = D.DEPARTMENT_NO
WHERE D.DEPARTMENT_NAME = '������а�' AND ABSENCE_YN = 'Y' AND SUBSTR(S.STUDENT_SSN, 8, 1)
IN ('2','4');

-- 4. ���������� ���� ���� ��� ��ü�� ���� ã�� �̸��� �Խ��ϰ��� ����. �� ����ڵ��� 
--�й��� ������ ���� �� ����ڵ��� ã�� ������ SQL ������ �ۼ��Ͻÿ�. 
--    A513079, A513090, A513091, A513110, A513119   
SELECT STUDENT_NO, STUDENT_NAME
FROM TB_STUDENT
WHERE STUDENT_NO IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');

-- 5. ���������� 20�� �̻� 30�� ������ �а����� �а� �̸��� �迭�� ����Ͻÿ�.
SELECT DEPARTMENT_NAME, CATEGORY
FROM TB_DEPARTMENT
WHERE CAPACITY BETWEEN 20 AND 30;

-- 6. �� ������б��� ������ �����ϰ� ��� �������� �Ҽ� �а��� ������ �ִ�. �׷� �� 
--������б� ������ �̸��� �˾Ƴ� �� �ִ� SQL ������ �ۼ��Ͻÿ�.   
SELECT PROFESSOR_NAME
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO IS NULL;
        
-- 7. Ȥ�� ������� ������ �а��� �����Ǿ� ���� ���� �л��� �ִ��� Ȯ���ϰ��� �Ѵ�. 
--��� SQL ������ ����ϸ� �� ������ �ۼ��Ͻÿ�.     
SELECT STUDENT_NO, STUDENT_NAME
FROM TB_STUDENT
WHERE DEPARTMENT_NO IS NULL;

-- 8. ������û�� �Ϸ��� �Ѵ�. �������� ���θ� Ȯ���ؾ� �ϴµ�, ���������� �����ϴ� 
--������� � �������� �����ȣ�� ��ȸ�غ��ÿ�.   
SELECT DISTINCT CLASS_NO
FROM TB_CLASS
WHERE PREATTENDING_CLASS_NO IS NOT NULL;

-- 9. �� ���п��� � �迭(CATEGORY)���� �ִ��� ��ȸ�غ��ÿ�.   
SELECT DISTINCT CATEGORY
FROM TB_DEPARTMENT
WHERE CATEGORY IS NOT NULL;

-- 10. 02 �й� ���� �����ڵ��� ������ ������� �Ѵ�. ������ ������� ������ �������� 
-- �л����� �й�, �̸�, �ֹι�ȣ�� ����ϴ� ������ �ۼ��Ͻÿ�. 
SELECT STUDENT_NO, STUDENT_NAME, STUDENT_SSN
FROM TB_STUDENT
WHERE ABSENCE_YN = 'N'
AND STUDENT_ADDRESS LIKE '%����%';
    