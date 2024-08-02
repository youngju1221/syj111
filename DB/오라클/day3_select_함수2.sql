-- day3_select_�Լ�2.sql

-- ���� ó�� �Լ� -----------------------------------------------
-- ROUND(), TRUNC(), FLOOR(), ABS(), MOD()

-- ROUND(���� | ���ڰ� ��ϵ� �÷��� | ����, �ݿø��� �ڸ���)
-- �������� ���� 5�̻��̸� �ڵ� �ݿø���
-- �ݿø��� �ڸ����� ����̸� �Ҽ��� �Ʒ� ǥ��(���)�� �ڸ��� �ǹ���
-- �ݿø��� �ڸ����� �����̸� �Ҽ��� ��(������) �ø��� �ڸ��� �ǹ���

SELECT 123.456,
        ROUND(123.456) -- 123
        , ROUND(123.456, 0) -- 123
        , ROUND(123.456, 1) -- 123.5
        , ROUND(123.456, -1) -- 120
FROM DUAL;

-- ���� �������� ���, �̸�, �޿�, ���ʽ�����Ʈ, ���ʽ�����Ʈ ���� ���� ��ȸ
-- ������ ��Ī ó�� : 1��޿�
-- ������ õ�������� �ݿø� ó����
SELECT EMP_ID ���, EMP_NAME �̸�, SALARY �޿�, BONUS_PCT ���ʽ�����Ʈ,
        ROUND(((SALARY + (SALARY * NVL(BONUS_PCT, 0)))* 12), -4) "1��޿�"
FROM EMPLOYEE;

-- TRUNC(���� | ���ڰ� ��ϵ� �÷��� | ����, �ڸ� �ڸ���)
-- ������ �ڸ� �Ʒ��� ���� ����, �����Լ�, �ݿø�����

SELECT 145.678,
        TRUNC(145.678) -- 145
        ,TRUNC(145.678, 0) -- 145
        ,TRUNC(145.678, 1) -- 145.6
        ,TRUNC(145.678, -1) -- 140
        ,TRUNC(145.678, -3) -- 0
FROM DUAL;

-- ���� �������� �޿��� ����� ��ȸ
-- 10�������� ������
SELECT AVG(SALARY), TRUNC(AVG(SALARY),-2)
FROM EMPLOYEE;

-- FLOOR(���� | ���ڰ� ��ϵ� �÷��� | ����)
-- ���� ����� �Լ� (�Ҽ��� �Ʒ��� ����)
SELECT ROUND(123.5), TRUNC(123.5), FLOOR(123.5)
FROM DUAL;

-- ABS(���� | ���ڰ� ��ϵ� �÷��� | ����)
-- ���밪 ���� (���, 0 : �� �״��, ���� : ����� �ٲ�)
SELECT ABS(123), ABS(-123)
FROM DUAL;

-- ���� �������� �Ի��� - ����, ���� - �Ի��� ��ȸ
-- ��Ī : �ٹ��ϼ�
-- ���� ��¥ ��ȸ �Լ� : SYSDATE
-- �ٹ��ϼ��� ��� ��� & ������ ó����

SELECT ABS(FLOOR(HIRE_DATE - SYSDATE)) �ٹ��ϼ�,
        ABS(FLOOR(SYSDATE - HIRE_DATE)) �ٹ��ϼ�
FROM EMPLOYEE;

-- MOD(���� ��, ���� ��)
-- �������� �������� ����
-- �����ͺ��̽������� % (MOD) ������ ��� �� ��
SELECT FLOOR(25 / 7) ��, MOD(25, 7) ������
FROM DUAL;

-- ���� �������� ����� Ȧ���� ���� ��ȸ
-- ���, �̸�
-- '100' �� ���� 100 ���� �ڵ�����ȯ��

SELECT EMP_ID ���, EMP_NAME �̸�
FROM EMPLOTEE
WHERE MOD(EMP_ID, 2) = 1;

-- ���� ǥ�� => ����ڰ��� �Ǵ� ����ڰ���.��ü�� ���� ������
SELECT C##STUDENT.EMPLOTEE.EMP_ID ���, C##STUDENT.EMPLOTEE.EMP_NAME �̸�
FROM C##STUDENT.EMPLOTEE
WHERE MOD(C##STUDENT.EMP_ID, 2) = 1;

-- ��¥ ó�� �Լ� -----------------------------------------------------------------

-- SYSDATE �Լ�
-- �ý������� ���� ���� ��¥�� �ð��� ��ȸ�� �� ���
SELECT SYSDATE FROM DUAL;
-- ��µǴ� ����(FORMAT) (RR/MM/DD) : 24/07/31

-- ����Ŭ������ ȯ�漳��, ��ü ���� �������� ��� ���� �����ϰ� ����
-- ������ ��ųʸ� (������ ����) ���� �����ǰ� ����
-- ������ ��ųʸ��� ����� ������ ��ȸ�� �� �� ���� (�մ���� ����)
-- ���̺� ���·� �� �������� ������

-- ��, ȯ�漳���� ���õ� PARAMATER (����) ������ �Ϻ� ������ ���� ����
SELECT * FROM SYS.NLS_SESSION_PARAMETERS;

-- ��¥ ����� ���õ� ���� ���� ��ȸ�Ѵٸ�
SELECT VALUE
FROM SYS.NLS_SESSION_PARAMETERS
WHERE PARAMETER = 'NLS_DATE_FORMAT';

-- ��¥ ������ �����Ѵٸ�
ALTER SESSION
SET NLS_DATE_FORMAT = 'DD-MON-RR';

-- Ȯ��
SELECT SYSDATE FROM DUAL;

-- ���� �������� ����
ALTER SESSION
SET NLS_DATE_FORMAT = 'RR//MM//DD';

-- ADD)_MONTHS('��¥' | ��¥�� ��ϵ� �÷���, ���� ������)
-- ���� �������� ���� ��¥�� ���ϵ�

-- ���� ��¥���� 6���� �� ��¥��?
SELECT ADD_MONTHS(SYSDATE, 6)
FROM DUAL;

-- ���� �������� �Ի��Ϸ� ���� 20��� ��¥ ��ȸ
-- ���, �̸�, �Ի���, 20��� ��¥ : ��Ī ó��
SELECT EMP_ID ���, EMP_NAME �̸�, HIRE_DATE �Ի���,
        ADD_MONTHS(HIRE_DATE, 240) "20��� ��¥"
FROM EMPLOYEE;

-- ������ �Լ��� WHERE ������ ����� �� ����
-- ������ �߿��� �ٹ������ 20���̻�� ���� ��� ��ȸ
-- ���, �̸�, �μ��ڵ�, �����ڵ�, �Ի���, �ٹ���� : ��Ī ó��
-- �ٹ���� ���� ������������ ó����
 
 
SELECT EMP_ID ���, EMP_NAME �̸�, DEPT_ID �μ��ڵ�, JOB_ID �����ڵ�, HIRE_DATE �Ի���,
        FLOOR(SYSDATE - HIRE_DATE) / 365 �ٹ����
FROM EMPLOYEE
WHERE ADD_MONTHS(HIRE_DATE, 240) <= SYSDATE
ORDER BY �ٹ���� DESC;

-- MONTHS_BETWEEN(DATE1, DATE2)
-- '��¥' } ��¥�� ��ϵ� �÷��� | ��¥�Լ�
-- �� ��¥�� ���̳��� �������� ������

-- �������� �̸�, �Ի���, ��������� �ٹ��ϼ�, �ٹ�������, �ٹ���� ��ȸ
-- ���������� ��� ó����

SELECT EMP_NAME �̸�, HIRE_DATE �Ի���,
        FLOOR(SYSDATE - HIRE_DATE) �ٹ��ϼ�,
        FLOOR(MONTHS_BETWEEN(SYSDATE, HIRE_DATE)) �ٹ�������,
        FLOOR(MONTHS_BETWEEN(SYSDATE, HIRE_DATE) / 12) �ٹ����
FROM EMPLOYEE;

-- NEXT_DAY('��¥'| ��¥�� ��ϵ� �÷���, '�����̸�')
-- ������ ��¥ ���� ��¥���� ���� ����� ���� ������ ��¥�� ������
-- ���� DBMS �� ��� �� 'KOREAN' �̹Ƿ�, �����̸��� �ѱ� ����ؾ� �� 
-- ���� �����̸� ����ϸ� ������

SELECT SYSDATE, NEXT_DAY(SYSDATE, '�Ͽ���')
FROM DUAL;

--SELECT SYSDATE, NEXT_DAY(SYSDATE, 'SUNDAY') -- ���� �����̸� ���� ���� �߻�
--FROM DUAL;

-- ȯ�漳�� ������ �� ������ ��
ALTER SESSION
SET NLS_LANGUAGE = AMERICAN;

-- ���� ������
ALTER SESSION
SET NLS_LANGUAGE = KOREAN;

-- LAST_DAY('��¥' | ��¥�� ��ϵ� �÷���)
-- ������ ��¥�� ���� ���� ������ ��¥�� ������
SELECT SYSDATE, LAST_DAY(SYSDATE),
        '24/02/15', LAST_DAY('24/02/15')     
FROM DUAL;

-- ���� �������� �̸�, �Ի���, �Ի��� ���� �ٹ��ϼ� ��ȸ
SELECT EMP_NAME �̸�, HIRE_DATE �Ի���,
        LAST_DAY(HIRE_DATE) - HIRE_DATE "�Ի��� ���� �ٹ��ϼ�"
FROM EMPLOYEE;

-- ���� ��¥�� �ð��� ��ȸ�Ϸ���
SELECT SYSDATE, SYSTIMESTAMP,
        CURRENT_DATE, CURRENT_TIMESTAMP
FROM DUAL;

-- EXTRACT(������ ���� FROM ��¥)
-- ��¥ �����Ϳ��� ���ϴ� ������ ������
-- ������ ���� : YEAR, MONTH, DAY, HOUR, MINUTE, SECOND

-- ���� ��¥���� ��, ��, �� ���� ����
SELECT SYSDATE,
        EXTRACT(YEAR FROM SYSDATE),
        EXTRACT(MONTH FROM SYSDATE),        
        EXTRACT(DAY FROM SYSDATE)
FROM DUAL;       

SELECT HIRE_DATE,
        EXTRACT(YEAR FROM SYSDATE),
        EXTRACT(MONTH FROM SYSDATE),        
        EXTRACT(DAY FROM SYSDATE)
FROM EMPLOYEE; 

-- �������� �̸�, �Ի���, �ٹ���� ��ȸ
SELECT EMP_NAME �̸�, HIRE_DATE �Ի���,
        EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM HIRE_DATE) �ٹ����
FROM EMPLOYEE;






