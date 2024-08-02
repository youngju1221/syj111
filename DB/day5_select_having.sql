-- day5_select_having.sql

-- SELECT ���� : HAVING �� ------------------------------------------------------------
-- �����ġ : GROUP BY �� ������ �ۼ���
-- �ۼ����� : HAVING �׷��Լ�(��꿡 ����� �÷���) �񱳿����� �񱳰�
-- �׷캰�� �׷��Լ� ������� ������ ������ �����ϴ� �׷��� ���
-- ��� �׷�� ������� SELECT ���� ǥ����

-- �μ��� �޿��հ� �� ���� ū �� ��ȸ
SELECT MAX(SUM(SALARY)) -- 1��    18100000
FROM EMPLOYEE
GROUP BY DEPT_ID;

-- �μ��ڵ嵵 �Բ� ��ȸ�ϰ� �Ϸ���
SELECT DEPT_ID,
        MAX(SUM(SALARY)) -- 1��
FROM EMPLOYEE
GROUP BY DEPT_ID; -- ERROR

-- �μ��� �޿��հ� �� ���� ū���� ���� �μ��ڵ�� �޿��հ踦 ��ȸ
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_ID
--HAVING SUM(SALARY) = 18100000;
-- ���� �μ����� ������ ���� ����
HAVING SUM(SALARY) = (SELECT MAX(SUM(SALARY)) -- 1�� 18100000
                        FROM EMPLOYEE
                        GROUP BY DEPT_ID);
                        
-- �м��Լ� (������ �Լ���� ��) ******************************************
-- �Ϲ��Լ��� ��� ������ �ٸ�

-- RANK() �Լ� : ����(���) ��ȯ

-- 1. ��ü �÷����� ���� ���� �ű�� 
-- RANK() OVER (ORDER BY �����ű��÷��� ���Ĺ��)

-- ���� �������� �޿��� ���� �޴� ������ ������ �ű�ٸ� (ū���� 1�� : ��������)
-- �̸�, �޿�, ���� 
SELECT EMP_NAME, SALARY, 
        RANK() OVER(ORDER BY SALARY DESC) ����
FROM EMPLOYEE
ORDER BY ����;

-- 2. �����ϴ� ���� �ش� �÷� �ȿ��� ������� ������ ��ȸ �뵵�� ���
-- RANK(�������˰����ϴ°�) WITHIN GROUP (ORDER BY �����ű��÷��� ���Ĺ��)

-- �޿� 230���� ��ü �޿��� �� ����? (�޿� �������������� ���)
SELECT RANK(2300000) WITHIN GROUP (ORDER BY SALARY DESC)
FROM EMPLOYEE;

-- ROWID
-- ���̺� ������ ����� (�� �߰���, INSERT ��) �ڵ����� �ٿ���
-- DBMS �� �ڵ����� ����, ���� �� ��, ��ȸ�� �� �� ����
SELECT EMP_ID, ROWID
FROM EMPLOYEE;

-- ROWNUM
-- ROWID �� �ٸ�
-- ROWNUM �� SELECT �� ����� ����࿡ �ο��Ǵ� �������, (1���� ����)
-- �ζ��κ� (FROM ���� ���� ���������� ���ȭ��)�� ����ؼ�, TOP-N �м��� ROWNUM �� �̿��� �� ����

SELECT *
FROM (SELECT ROWNUM RNUM, EMP_ID, JOB_ID
        FROM EMPLOYEE
        WHERE JOB_ID = 'J5')
WHERE RNUM > 2;           

         
                        
         
                        
                    