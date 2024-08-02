-- SCOTT �Լ� �������� 

-- COMM �� ���� NULL�� �ƴ� ���� ��ȸ
SELECT ENAME,
       SUBSTR(EMPNO, 1, 8) || '******' AS EMPNO
FROM EMP
WHERE COMM IS NOT NULL;

-- Ŀ�̼��� ���� ���ϴ� ���� ��ȸ
SELECT ENAME,
       SUBSTR(EMPNO, 1, 9) || '******' AS EMPNO
FROM EMP
WHERE COMM IS NULL;
-- �����ڰ� ���� ���� ���� ��ȸ
SELECT *
FROM EMP
WHERE MGR IS NULL;

-- �޿��� ���� �޴� ���� ������ ��ȸ
SELECT *
FROM EMP
ORDER BY SAL DESC;


-- �޿��� ���� ��� Ŀ�̼��� �������� ���� ��ȸ
SELECT *
FROM EMP
ORDER BY SAL DESC, COMM DESC;


-- EMP ���̺��� �����ȣ, �����,����, �Ի��� ��ȸ
-- �� �Ի����� �������� ���� ó����.
SELECT EMPNO, ENAME, JOB, HIREDATE
FROM EMP
ORDER BY HIREDATE ASC;

-- EMP ���̺�� ���� �����ȣ, ����� ��ȸ
-- �����ȣ ���� �������� ����
SELECT EMPNO, ENAME
FROM EMP
ORDER BY EMPNO DESC;


-- ���, �Ի���, �����, �޿� ��ȸ
-- �μ���ȣ�� ���� ������, ���� �μ���ȣ�� ���� �ֱ� �Ի��ϼ����� ó��
SELECT EMPNO, HIREDATE, ENAME, SAL
FROM EMP
ORDER BY DEPTNO ASC, HIREDATE DESC;



/***** �Լ� *****/

-- �ý������� ���� ���� ��¥�� ���� ������ ����� �� ��
SELECT SYSDATE AS "Today"
FROM DUAL;
   

-- EMP ���̺�� ���� ���, �����, �޿� ��ȸ
-- ��, �޿��� 100���� ������ ���� ��� ó����.
-- �޿� ���� �������� ������.
SELECT EMPNO, ENAME, ROUND(SAL, -2) AS SAL
FROM EMP
ORDER BY SAL DESC;


-- EMP ���̺�� ���� �����ȣ�� Ȧ���� ������� ��ȸ
SELECT *
FROM EMP
WHERE MOD(EMPNO, 2) = 1;

/* ���� ó�� �Լ�*/  

-- EMP ���̺�� ���� �����, �Ի��� ��ȸ
-- ��, �Ի����� �⵵�� ���� �и� �����ؼ� ���
SELECT ENAME, 
       EXTRACT(YEAR FROM HIREDATE) AS HIREDATE_YEAR,
       EXTRACT(MONTH FROM HIREDATE) AS HIREDATE_MONTH
FROM EMP;

-- EMP ���̺�� ���� 9���� �Ի��� ������ ���� ��ȸ
SELECT *
FROM EMP
WHERE EXTRACT(MONTH FROM HIREDATE) = 9;

-- EMP ���̺�� ���� '81'�⵵�� �Ի��� ���� ��ȸ
SELECT *
FROM EMP
WHERE EXTRACT(YEAR FROM HIREDATE) = 1981;

-- EMP ���̺�� ���� �̸��� 'E'�� ������ ���� ��ȸ
SELECT *
FROM EMP
WHERE ENAME LIKE '%E';


-- emp ���̺�� ���� �̸��� ����° ���ڰ� 'R'�� ������ ���� ��ȸ
-- LIKE �����ڸ� ���
SELECT *
FROM EMP
WHERE ENAME LIKE '__R%';

-- SUBSTR() �Լ� ���
SELECT ENAME, HIREDATE
FROM EMP
WHERE SUBSTR(HIREDATE, 1, 8) = '90/04/01';



/************ ��¥ ó�� �Լ� **************/

-- �Ի��Ϸ� ���� 40�� �Ǵ� ��¥ ��ȸ
SELECT EMPNO ���, ENAME �̸�, HIREDATE �Ի���,
        ADD_MONTHS(HIREDATE, 480) "40��� ��¥"
FROM EMP;


-- �Ի��Ϸ� ���� 33�� �̻� �ٹ��� ������ ���� ��ȸ
SELECT *
FROM EMP
WHERE ADD_MONTHS(HIREDATE, 396) <= SYSDATE;


-- ���� ��¥���� �⵵�� ����
SELECT SYSDATE,
        EXTRACT(YEAR FROM SYSDATE)
FROM DUAL;