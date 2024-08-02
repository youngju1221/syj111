-- day5_select_join.sql

-- ���� (JOIN)
-- ���� ���� ���̺����� �ϳ��� ���ļ� ū ���̺��� ����� ��
-- ������ ��� ���̺����� ���ϴ� �÷��� ������
-- ����Ŭ ���� ������ ANSI ǥ�� �������� �ۼ��� �� ����

-- ������ �⺻ EQUAL JOIN �̴�. (���� ������ �����)
--  ==> EQUAL �� �ƴ� ���� ���� ���� ���ο��� ���ܵ�
-- ������ �� ���̺��� FOREIGN KEY(�ܷ�Ű, �ܺ�Ű)�� ���踦 ���� �÷��� ���ο� �⺻������ ����

-- ����Ŭ ���� ���� : ����Ŭ������ �����
-- FROM ���� ������(��ĥ) ���̺����� ������
-- WHERE ���� ������ �÷��� ���� ������ ������
-- ���� : WHERE ���� �Ϲ� ���ǰ� ���� ������ ���� => ��������

SELECT *
FROM EMPLOYEE, DEPARTMENT
WHERE EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;
-- ����� : 20��, EMPLOYEE.DEPT_ID �� NULL �� ���� 2���� ���ܵ�
-- EQUAL INNER JOIN �̶�� ��

SELECT *FROM DEPARTMENT;

-- ����Ŭ ���뱸���� ������ ����� �� ���̺��� �÷��� ��� ���ԵǾ� ����
-- SELECT �ÿ� ���̺���.�÷������� �ߺ��� �÷��� ������ ��� ��
SELECT EMP_NAME, EMPLOYEE.DEPT_ID, DEPT_NAME
FROM EMPLOYEE, DEPARTMENT
WHERE EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;

-- ���νÿ�  ���̺����� ��Ī ���� �� ����
SELECT EMP_NAME, E.DEPT_ID, DEPT_NAME
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DEPT_ID = D.DEPT_ID;

-- ANSI ǥ�� ����
-- ��� DBMS �� �������� ����ϴ� ǥ�� ������
-- ���� ó���� ���� ������ Ű���带 ����� => FROM ���� JOIN Ű���带 �߰��ؼ� �ۼ���
-- ����Ŭ ���뱸���� �ٸ� �� : WHERE ������ ���� ������ �и���

SELECT * 
FROM EMPLOYEE
JOIN DEPARTMENT USING (DEPT_ID);
-- ���ο� ���� �÷��� ���� ����� �� �� ������. ����Ŭ ���� ������ ���� �ܷΰ��ʹٸ� ����

SELECT EMP_NAME, DEPT_ID, DEPT_NAME
FROM EMPLOYEE
JOIN DEPARTMENT USING (DEPT_ID); -- 20��
-- ������ �⺻�� EQUAL INNER JOIN �� : ���� �÷��� ��ġ�ϴ� ���� ���� ��鸸 ���ε�
-- INNER �����ص� ��

-- ���νÿ� ���Ǵ� �� ���̺��� �÷����� ������ USING �����
-- ���� ���� ������ �÷����� �ٸ��� ON �����

-- USING ��� �� : 
SELECT EMP_NAME, JOB_ID, DEPT_ID, DEPT_NAME
FROM EMPLOYEE INNER JOIN DEPARTMENT USING (DEPT_ID)
WHERE JOB_ID = 'J6'
ORDER BY DEPT_NAME DESC;

-- ON ��� �� : 
SELECT * 
FROM DEPARTMENT INNER JOIN LOCATION ON (LOC_ID = LOCATION_ID);

-- ���� ������ ����Ŭ ���� �������� �ٲ۴ٸ�
SELECT *
FROM DEPARTMENT D, LOCATION L
WHERE D.LOC_ID = L.LOCATION_ID;

-- ���, �̸�, ���޸� ��ȸ ; ��Ī ó��
-- 1. ����Ŭ ���뱸��
SELECT EMP_ID ���, EMP_NAME �̸�, JOB_TITLE ���޸�
FROM EMPLOYEE E, JOB J
WHERE E.JOB_ID = J.JOB_ID; -- 21��

-- 2. ASNI ǥ�� ����
SELECT EMP_ID ���, EMP_NAME �̸�, JOB_TITLE ���޸�
FROM EMPLOYEE
JOIN JOB USING (JOB_ID); -- 21��

-- OUTER JOIN ----------------------------------
-- �⺻�� EQUAL INNER JOIN + ���� ��ġ���� ���� �൵ ���Խ�Ű�� ����
-- OUTER JOIN �� EQUAL JOIN �� => ���� ����  �ִ�  ���̺��� ���� �߰��ϴ� �����

-- EMPLOYEE ���̺��� �� ������ ������ ���� ����� ���Խ�Ű���� �Ѵٸ�
-- 1. ����Ŭ ���� ���� : ���� ���� ���̺��� ���� �߰��ϴ� ����� => (+) ǥ����
SELECT *
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DEPT_ID = D.DEPT_ID(+); -- 222��

-- 2. ANSI ǥ�� ����
SELECT *
--FROM EMPLOYEE LEFT OUTER JOIN DEPARTMENT USING (DEPT_ID);
--FROM EMPLOYEE LEFT JOIN DEPARTMENT USING (DEPT_ID); -- OUTER �����ص� ��
FROM DEPARTMENT RIGHT JOIN EMPLOYEE USING (DEPT_ID);

-- DEPARTMENT ���̺��� ���� ��� ���� ���ο� ���Խ�Ű����
-- 1. ����Ŭ ���� ����
SELECT *
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DEPT_ID(+) = D.DEPT_ID;

-- 2. ANSI ǥ�� ����
SELECT * 
FROM EMPLOYEE RIGHT JOIN DEPARTMENT USING (DEPT_ID);

-- �� ���̺��� ���ܵǴ� ������� ���� ����� ���Խ�Ų�ٸ�
-- FULL OUTER JOIN �̶�� ��

-- ����Ŭ ���뱸������FULL OUTER JOIN �� �������� ����.
SELECT * 
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DEPT_ID(+) = D.DEPT_ID(+);

-- ANSI ǥ�� ����
SELECT *
FROM EMPLOYEE
FULL JOIN DEPARTMENT USING (DEPT_ID); -- 23��

-- CROSS JOIN  -----------------------
-- �� ���̺��� ������ �÷��� ���� �� ���
-- ���̺�1 N���� * ���̺�2 M����

-- 1. ����Ŭ ���뱸��
SELECT *
FROM LOCATION, COUNTRY;

-- 2. ANSI ǥ�� ����
SELECT *
FROM LOCATION CROSS JOIN COUNTRY;

-- NATURAL JOIN ---------------------------------------
-- ���̺��� ���� PRIMARY KEY �÷��� �̿��ؼ� ������ �Ǵ� ���

SELECT *
FROM EMPLOYEE
NATURAL JOIN DEPARTMENT; PRIMARY KEY �÷� DEPT_ID �� ���ο� ���
-- INNER JOIN DEPARTMENT USING (DEPT_ID); �� ����� ����

-- NON EQUI JOIN---------------------------------------
-- �����ϴ� �÷��� ���� ��ġ�ϴ� ��찡 �ƴ�, ���� ������ �ش��ϴ� ����� �����ϴ� ���� �����
-- JOIN ON �����

SELECT *
FROM EMPLOYEE
JOIN SAL_GRADE ON (SALARY BETWEEN LOWEST AND HIGHEST);

SELECT EMP_NAME, SALARY, SLEVEL
FROM EMPLOYEE
JOIN SAL_GRADE ON (SALARY BETWEEN LOWEST AND HIGHEST);

-- SELF JOIN ---------------------------------------------
-- ���� ���̺��� �����ϴ� ���
-- ���� ���̺� ���� �ٸ� �ä����� �����ϴ� �ܷ�Ű(FOREIGN KEY)�� ���� �� �����
-- EMP_ID : ������ ��� ---> MGR_ID : ������ ��� <= EMP_ID �÷��� ������ ���(����)�ϴ� �÷��� 
-- ��, �����ڴ� ���� �߿��� �����Ѵ��� �ǹ���

-- �����ڰ� ������ ������ ���ܰ� �������� ������ �̸��� ��ȸ
-- ANSI ǥ�ر������� SELF JOIN �ÿ��� ���̺� ��Ī ����ؾ� �� => ON ����ؾ� ��

SELECT *
FROM EMPLOYEE E
JOIN EMPLOYEE M ON (E.MGR_ID = M.EMP_ID); -- 15��

SELECT E.EMP_NAME ����, M.EMP_NAME ������
FROM EMPLOYEE E
JOIN EMPLOYEE M ON (E.MGR_ID = M.EMP_ID);

-- ������ ���� ���� 
SELECT DISTINCT M.EMP_NAME ������
FROM EMPLOYEE E
JOIN EMPLOYEE M ON (E.MGR_ID = M.EMP_ID);

-- ����Ŭ ���뱸��
SELECT E.EMP_NAME ����, M.EMP_NAME ������
FROM EMPLOYEE E
JOIN EMPLOYEE M ON (E.MGR_ID = M.EMP_ID);

-- ������ ���� ���� 
SELECT *
FROM EMPLOYEE E, EMPLOYEE M
WHERE E.MGR_ID = M.EMP_ID;

SELECT E.EMP_NAME ����, M.EMP_NAME ������
FROM EMPLOYEE E, EMPLOYEE M
WHERE E.MGR_ID = M.EMP_ID;

-- N���� ���̺� ���� --------------------------------------------------
-- ���� ������ �߿���
-- ù��° ���̺��� �ι�° ���̺��� ���εǰ� �� ������ ��ģ ������̺���, �ٽ� ����° ���̺��� ���ε�

SELECT EMP_NAME, JOB_TITLE, DEPT_NAME
FROM EMPLOYEE
LEFT JOIN JOB USING (JOB_ID)
LEFT JOIN DEPARTMENT USING (DEPT_ID);

SELECT *
FROM EMPLOYEE
LEFT JOIN LOCATION ON (LOCATION_ID = LOC_ID)
LEFT JOIN DEPARTMENT USING (DEPT_ID); -- ERROR

SELECT *
FROM EMPLOYEE
LEFT JOIN DEPARTMENT USING (DEPT_ID)
LEFT JOIN LOCATION ON (LOCATION_ID = LOC_ID); -- �ذ�


-- �����̸�, ���޸�, �μ���, ������, ������, ��ȸ
-- ���� ��ü ��ȸ��
-- 1. ANSI ǥ�� ����
SELECT EMP_NAME �����̸�, JOB_TITLE ���޸�, DEPT_NAME �μ���, LOC_DESCRIBE ������, COUNTRY_NAME ������
FROM EMPLOYEE
LEFT JOIN JOB USING (JOB_ID) 
LEFT JOIN DEPARTMENT USING (DEPT_ID)
LEFT JOIN LOCATION ON (LOC_ID = LOCATION_ID)
LEFT JOIN COUNTRY USING (COUNTRY_ID);

-- 2. ����Ŭ ���� ����
SELECT EMP_NAME �����̸�, JOB_TITLE ���޸�, DEPT_NAME �μ���, LOC_DESCRIBE ������, COUNTRY_NAME ������
FROM EMPLOYEE E, JOB J, DEPARTMENT D, LOCATION L, COUNTRY C
WHERE E.JOB_ID = J.JOB_ID(+)
AND E.DEPT_ID = D.DEPT_ID(+)
AND D.LOC_ID = L.LOCATION_ID(+)
AND L.COUNTRY_ID = C.COUNTRY_ID(+);





