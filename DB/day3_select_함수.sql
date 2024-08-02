-- day3_select_�Լ�.sql

-- ����Ŭ���� �����ϴ� �Լ�(function)
-- �ٸ� dbms ������ ����� ����ϰų� ���� 

-- �Լ�(FUNCTION)
-- �÷��� ��ϵ� ���� �о �Լ��� ó���� ����� ����(��ȯ)�ϴ� ������
-- ��� : �Լ���(�÷���)

-- ������ �Լ��� �׷� �Լ��� ���е� => �����ϴ� ������� ������ �ٸ�
-- ������ �Լ�(SINGLE ROW FUNCTION) : 
-- �����ϴ� �÷��� ���� N���̸�, �Լ��� ó���� ������� N����
-- ��, �� ��(�� ��)�� �ٷ�� �Լ�

-- �׷� �Լ� (GROUP FUNCTION)
-- ���� ���� N���̸�, �����ϴ� ������� 1����

SELECT EMAIL -- 22��
        , UPPER(EMAIL) -- 22��
FROM EMPLOYEE;

SELECT SUM(SALARY) -- 1��
FROM EMPLOYEE;

SELECT SALARY -- 22�� 
FROM EMPLOYEE;

-- SELECT ������ �׷��Լ��� �������Լ��� ���� ��� �� ��
SELECT SALARY, SUM(SALARY)
FROM EMPLOYEE;

SELECT UPPER(EMAIL), SUM(SALARY) -- ������� ������ �ٸ� : ERROR
FROM EMPLOYEE;
-- ���� �����ͺ��̽��� ������ �����ͺ��̽�(RDB)��
-- RDB�� �����͸� 2���� ���̺�(�ݵ�� �簢��)�� = ��, �簢���� �ƴ� ����� ��� �� ��

-- �׷��Լ��� WHERE ������ ��� �� ��
-- �� : ������ �߿��� ���� ��ü �޿��� ��պ��� ���� �޿��� ���� ���� ��ȸ
SELECT *
FROM EMPLOYEE
WHERE SALARY > AVG(SALARY);

-- �ذ� 1
SELECT AVG(SALARY)
FROM EMPLOYEE;

SELECT *
FROM EMPLOYEE
WHERE SALARY > 2961818.18181818181818181818181818181818; -- 7��

-- �ذ� 2 
SELECT *
FROM EMPLOYEE
WHERE SALARY > (SELECT AVG(SALARY)
                FROM EMPLOYEE); -- 7��
           
-- �׷��Լ� ***********************************
-- SUM(), AVG(), MIN(), MAX(), COUNT()

-- SUM(�÷���) | SUM(DISTINCT �÷���)
-- �հ踦 ���ؼ� ����

-- �ҼӺμ��� 50�̰ų� �μ��� �������� ���� �������� �޿� �հ� ��ȸ
SELECT SUM(SALARY) �޿��հ�,
        SUM(DISTINCT SALARY) "�ߺ��� ������ �޿��հ�"
FROM EMPLOYEE
WHERE DEPT_ID = '50' OR DEPT_ID IS NULL;

-- ���� ���� Ȯ��
SELECT DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = '50' OR DEPT_ID IS NULL; -- 8��

--AVG(�÷���) | AVG(DISTINCT �÷���)
-- ����� ���ؼ� ����

-- �ҼӺμ��� 50 �Ǵ� 90 �Ǵ� NULL �� �������� ���ʽ�����Ʈ ��� ��ȸ
SELECT AVG(BONUS_PCT) -- /4
       , AVG(DISTINCT BONUS_PCT) -- /3
        , AVG(NVL(BONUS_PCT, 0)) -- /11
FROM EMPLOYEE
WHERE DEPT_ID IN ('50', '90') OR DEPT_ID IS NULL;

-- ���� ���� Ȯ��
SELECT AVG(BONUS_PCT)
FROM EMPLOYEE
WHERE DEPT_ID IN ('50', '90') OR DEPT_ID IS NULL; -- 11��

-- MAX(�÷���) | MAX(DISTINCT �÷���)
-- ���� ū �� ���� (����, ��¥, ���� ��� ó����)

-- MIN(�÷���) | MIN(DISTINCT �÷���)
-- ���� ���� �� ����(����, ��¥, ���� ��� ó����)

-- ����Ŭ DATA TYPE : ���̺��� �÷��� ������
-- ������(CHAR, AVRCHAR2, LONG, CLOB), ������(NUMBER), ��¥��(DATE)

-- �μ��ڵ尡 50 �Ǵ� 90�� �������� 
-- �����ڵ�(CHAR)�� �ִ밪, �ּҰ�
-- �Ի���(DATE)�� �ִ밪, �ּҰ�
-- �޿�(NUMBER)�� �ִ밪, �ּҰ� ��ȸ
SELECT MAX(JOB_ID) , MIN(JOB_ID),
        MAX(HIRE_DATE), MIN(HIRE_DATE),
        MAX(SALARY), MIN(SALARY)
FROM EMPLOYEE 
WHERE DEPT_ID IN ('50', '90');

-- COUNT(*) | COUNT(�÷���) | COUNT(DISTINCT �÷���)
-- COUNT(*) : NULL �� ������ ��ü �� ����
-- COUNT(�÷���) : NULL �� ������ �� ����

-- 50�� �μ� �Ǵ� �μ��ڵ尡 NULL �� ���� ��ȸ
SELECT DEPT_ID
FROM EMPLOYEE
WHERE DEPT_ID = '50' OR DEPT_ID IS NULL; -- 8��

SELECT COUNT(*) -- ��ü �� ���� : 8
        ,   COUNT(DEPT_ID) -- NULL ���ܵ� �� ���� : 6
        ,   COUNT(DISTINCT DEPT_ID) -- �ߺ��� ������ �� ���� : 1
FROM EMPLOYEE
WHERE DEPT_ID = '50' OR DEPT_ID IS NULL; 

-- ������ �Լ� ****************************************

-- ���� ó�� �Լ� --------------------------------------------------------

-- LENGTH('���ڸ��ͷ�') LENGTH(���ڰ� ��ϵ� �÷���)
-- ���� ���� ����
SELECT LENGTH('ORACLE'), LENGTH('����Ŭ')
FROM  DUAL;

SELECT EMAIL,  LENGTH(EMAIL)
FROM EMPLOYEE;

-- LENGTHB('���ڸ��ͷ�') LENGTHB(���ڰ� ��ϵ� �÷���)
-- ���� ����Ʈ ����
SELECT LENGTHB('ORACLE'), LENGTHB('����Ŭ')
FROM  DUAL;

SELECT EMAIL,  LENGTHB(EMAIL)
FROM EMPLOYEE;

-- INSTR('���ڿ����ͷ�'| ���ڰ� ��ϵ� �÷���, ã�� ����, ã�� ������ġ, ���° ����)
-- ã�� ������ ��ġ ���� (�տ��� ������ ����)
-- �����ͺ��̽��� ���۰��� ������ 1������ (0�� �ƴ�)

-- �̸��Ͽ��� '@' ������ ��ġ ��ȸ
SELECT EMAIL, INSTR(EMAIL, '@')
FROM EMPLOYEE;            
                
-- �̸��Ͽ��� '@' ���� �ٷ� �ڿ� �ִ� 'k' ������ ��ġ�� ��ȸ
-- ��, �ڿ��� ���� �˻���
SELECT EMAIL, INSTR(EMAIL,'@') + 1, INSTR(EMAIL, 'k', -1, 3)
FROM EMPLOYEE; 

-- �Լ� ��ø ��� ����
-- �̸��Ͽ��� '.' ���� �ٷ� �ڿ� �ִ� 'c'�� ��ġ�� ��ȸ
-- ��, '.' ���� �ٷ� �ձ��ں��� �˻��� �����ϵ��� ��
SELECT EMAIL,INSTR(EMAIL, 'c', INSTR(EMAIL, '.') -1) 
FROM EMPLOYEE;

-- LPAD('���ڸ��ͷ�'| ���ڰ� ��ϵ� �÷���, ����� �ʺ����Ʈ, ���� ������ ä�﹮��)
-- ä�﹮�ڰ� �����Ǹ� �⺻���� ' '(���鹮����)
-- LPAD : ���� ä���, RPAD() : ������ ä���

SELECT  EMAIL ����, LENGTH(EMAIL) ��������,
        LPAD(EMAIL, 20, '*') ����ä�����,
        LENGTH(LPAD(EMAIL, 20, '*')) �������
FROM EMPLOYEE;

SELECT  EMAIL ����, LENGTH(EMAIL) ��������,
        RPAD(EMAIL, 20, '*') ����ä�����,
        LENGTH(RPAD(EMAIL, 20, '*')) �������
FROM EMPLOYEE;

-- LTRIM('���ڸ��ͷ�' | ���ڰ� ��ϵ� �÷���, '������ ���ڵ� ����')
-- ���ʿ� �ִ� ���ڵ��� ������ ����� ����
-- RTRIM() : �����ʿ� �ִ� ���ڵ��� ������ ��� ���ڿ��� ����

SELECT '     123xyORACLExxyzz567     ',
        LTRIM('     123xyORACLExxyzz567        '), -- �⺻ ���Ź��ڴ� ���鹮����. ' '
        LTRIM('     123xyORACLExxyzz567        ', ' '),
        LTRIM('     123xyORACLExxyzz567        ', ' 0123456789'),
        LTRIM('     123xyORACLExxyzz567        ', '  xyz1234567')
FROM DUAL;

SELECT '     123xyORACLExxyzz567     ',
        RTRIM('     123xyORACLExxyzz567        '), -- �⺻ ���Ź��ڴ� ���鹮����. ' '
        RTRIM('     123xyORACLExxyzz567        ', ' '),
        RTRIM('     123xyORACLExxyzz567        ', ' 0123456789'),
        RTRIM('     123xyORACLExxyzz567        ', '  xyz1234567')
FROM DUAL;

-- TRIM(LEADING | TRAILING) BOTH '�����ҹ����ϳ�' FROM '���ڸ��ͷ�' | ���ڰ� ��ϵ� �÷���)
-- �⺻�� BOTH (�յ� ��� ����)
-- ������ ���� ������ �⺻ ' ' (���鹮����)

SELECT 'aaORACLEaa',
        TRIM('a' FROM 'aaORACLEaa'),
        TRIM(LEADING 'a' FROM 'aaORACLEaa'),
        TRIM(TRAILING 'a' FROM 'aaORACLEaa'),
        TRIM(BOTH 'a' FROM 'aaORACLEaa')
FROM DUAL;

-- SUBSTR('���ڸ��ͷ�'| ���ڰ� ��ϵ� �÷���, ������ ������ġ, ������ ���ڰ���)
-- ������ ������ġ : ��� (�տ��������� ��ġ), ����(�ڿ��������� ��ġ)
-- ������ ���ڰ��� : �����Ǹ� �� ���ڱ����� �ǹ���

SELECT 'ORACLE 18C',
        SUBSTR('ORACLE 18C', 5), -- LE 18C
        SUBSTR('ORACLE 18C', 8, 2), -- 18
        SUBSTR('ORACLE 18C', -7, 3) -- CLE
FROM DUAL;

-- ���� �������� �ֹι�ȣ�� ����, ����, ������ ���� �и� ��ȸ
SELECT EMP_NO,
        SUBSTR(EMP_NO, 1, 2) ����,
        SUBSTR(EMP_NO, 3, 2) ����,
        SUBSTR(EMP_NO, 5, 2) ����
FROM EMPLOYEE;


-- ��¥ ǥ��ÿ� ����ó�� '��¥'�� ǥ���ؾ� ��
-- '24/07/31' ǥ����
-- SUBSTR() �� ��¥ �����Ϳ��� ����� �� ����

-- �������� �Ի��Ͽ��� �Ի�⵵, �Ի��, �Ի����� �и� ��ȸ
SELECT HIRE_DATE �Ի���,
        SUBSTR(HIRE_DATE, 1, 2) �Ի�⵵,
        SUBSTR(HIRE_DATE, 4, 2) �Ի��,
        SUBSTR(HIRE_DATE, 7, 2) �Ի���
FROM EMPLOYEE;

-- SUBSTRB('���ڸ��ͷ�'| ���ڰ� ��ϵ� �÷���, ������ ����Ʈ��ġ, ������ ����Ʈ ũ��)
SELECT 'ORACLE',
        SUBSTR('ORACLE', 3, 2), SUBSTRB('ORACLE', 3, 2) -- AC
        , '����Ŭ'
        , SUBSTR('����Ŭ', 2, 2), SUBSTRB('����Ŭ', 4, 6) -- ��Ŭ
FROM DUAL;

-- UPPER('�������ͷ�' | �����ڰ� ��ϵ� �÷���) : �빮�ڷ� �ٲٴ� �Լ�
-- LOEWR("�������ͷ�" | �����ڰ� ��ϵ� �÷���) : �ҹ��ڷ� �ٲٴ� �Լ�
-- INITCAP('�������ͷ�' | �����ڰ� ��ϵ� �÷���) : ù���ڸ� �빮�ڷ� �ٲٴ� �Լ�

SELECT UPPER('ORACLE'), UPPER('oracle'), UPPER('Oracle'),
        LOWER('ORACLE'), LOWER('oracle'), LOWER('Oracle'),
        INITCAP('ORACLE'), INITCAP('oracle'), INITCAP('Oracle')
FROM DUAL;

-- �Լ� ��ø ��� : �Լ� �ȿ� �� ��ſ� �ٸ� �Լ��� ����� �� ����
-- ���� �Լ��� ������ ���� �ٱ� �Լ��� ����ϰ� ��

-- �� : ���� �������� ���, �̸�, ���̵� ��ȸ
-- ���̵�� �̸��Ͽ��� �и� ������
SELECT EMP_ID ���, EMP_NAME �̸�, EMAIL,
        SUBSTR(EMAIL, 1, INSTR(EMAIL, '@') - 1) ���̵�
FROM EMPLOYEE;

-- �� : ���� �������� ���, �̸�, �ֹι�ȣ ��ȸ
-- �ֹι�ȣ�� ������ϸ� ���̰� �ϰ�, ���ڸ��� '*'ó���� : 891225-*******
SELECT EMP_ID ���, EMP_NAME �̸�,
        RPAD(SUBSTR(EMP_NO, 1, 7), 14, '*') �ֹι�ȣ,        
        SUBSTR(EMP_NO, 1, 7) || '*******' �ֹι�ȣ
FROM EMPLOYEE;














