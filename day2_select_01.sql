-- day2 : selsect_01.sql

-- �ѱ� 1���ڴ� 2����Ʈ�� : ����Ŭ ��ǰ�϶�
SELECT LENGTH('ORACLE'), LENGTH('����Ŭ'),
    LENGTHB('ORACLE'), LENGTHB('����Ŭ')                
FROM DUAL;
-- Ȯ�� : �ѱ� 1���ڰ� 3����Ʈ��

-- DIAL : DUMMY(����) ���̺���
-- ����Ŭ�� �����ϴ� ��¥ ���̺���

SELECT 3 + 5 FROM DUAL;

SELECT SYSDATE FROM DUAL;
SELECT SYSDATE + 50 FROM DUAL;
SELECT SYSDATE + 100/24 FROM DUAL;

SELECT (SYSDATE - HIRE_DATE) / 365
FROM EMPLOYEE
WHERE EMP_ID = '101';

-- ����Ŭ ���� ���� Ȯ���ϱ�
SELECT * FROM v$nls_parameters;
--NLS_LANGUAGE KOREAN
--NLS_DATE_FORMAT RR/MM/DD
--NLS_CHARACTERSET AL32UTF8
-- �ʿ�� ������ �� ����
-- *********************************

-- SELECT ���� : ������ �˻� / ��ȸ 

/*
SELECT �� �⺻ �ۼ��� : 
SELECT * | �÷���, �÷���, �Լ���, ����
FROM ��ȸ������������̺��;

* : ���̺��� ���� ��� �÷��� �����͸� ��ȸ�Ѵٴ� �ǹ��� (���̺� ��ü ��ȸ)
*/
-- ����(EMPLOYEE)���̺� ��ü ��ȸ
SELECT * FROM EMPLOYEE;

-- �μ�(DEPARTMENT) ���̺� ��ü ��ȸ
SELECT * FROM DEPARTMENT;

-- ����(JOB) ���̺� ��ü ��ȸ
SELECT * FROM JOB;

-- ���̺��� Ư�� �÷��� ��ϵ� ������ ��ȸ�Ϸ���
-- �� : ���� ���̺��� ���(EMP_ID), �̸�(EMP_NAME), �ֹι�ȣ(EMP_NO) ��ȸ
SELECT EMP_ID, EMP_NAME, EMP_NO
FROM EMPLOYEE;

-- ���� ���̺��� ���(MGR_ID), �̸�(NAME), �޿�(SALARY), ���ʽ�����Ʈ ��ȸ(BONUS_PCT)
SELECT EMP_ID, EMP_NAME, SALARY, BONUS_PCT
FROM EMPLOYEE;

-- ���� ���̺��� ���(MGR_ID), �̸�(NAME), �����ڵ�(JOB_ID), �Ի���(HIRE_DATE), �μ��ڵ� ��ȸ(DEPT_ID)

SELECT EMP_ID, EMP_NAME, JOB_ID, HIRE_DATE, DEPT_ID
FROM EMPLOYEE;

--SELECT ���� ���� ����� ���� ����
-- �÷��� ��ϵ� ���� ��꿡 ����� ����� �����
-- �� : ���� ���̺��� ���, �̸�, �޿�, ����(�޿�*12)�� ��ȸ
SELECT EMP_ID, EMP_NAME, SALARY, SALARY * 12
FROM EMPLOYEE;

-- SELECT ���� �Լ��� ����� ���� ����
-- �����Ǵ� �Լ��� �ľ��ϰ� ���� Ȯ���ϰ� �����
-- �Լ��� �÷��� ��ϵ� ���� �о, �Լ��� ó���� ����� ��ȯ��
-- �� : ���� ���̺��� ���, �̸�, �ֹι�ȣ �� 6�ڸ��� ��ȸ
SELECT EMP_ID, EMP_NAME, SUBSTR(EMP_NO, 1, 6)
FROM EMPLOYEE;

-- ��ȸ���� 2 : Ư�� ��(ROW, ���� ���� �� ��)���� ��ȸ
-- ������ �����ϴ� ����� ��� ����, ���ϴ� �÷����� �����ϴ� �����
-- �������� ����� : WHERE �÷��� �񱳿����� �񱳰� 
-- WHERE ���� FROM �� ������ ��ġ��

-- �� : ���� �������� ��ȥ����(��ȥ��) �����鸸 ��ȸ�Ѵ�
SELECT *
FROM EMPLOYEE
--WHERE MARRIAGE = 'Y'; -- ���� ��ġ�ϴ� ��(��)�� ���
WHERE MARRIAGE = 'y';   -- ��ϵ� ���� ��ҹ��� �����ؾ� ��

-- ��ȥ�� ���� ���� ��ȸ
SELECT *
FROM EMPLOYEE
WHERE MARRIAGE = 'N';

-- ��ȸ���� 3 : 
-- ������ �����ϴ� ������ ��� ==> ���ϴ� �÷��� �����ϴ� ��ȸ��
-- �� : ���� �������� �����ڵ尡 'J4'�� �������� ���, �̸�, �����ڵ�, �޿� ��ȸ
SELECT EMP_ID, EMP_NAME, JOB_ID, SALARY
FROM EMPLOYEE
WHERE JOB_ID ='J4';

-- �����ڵ� 'J4'�� ���� ���޸��� ��ȸ�Ѵٸ�
SELECT JOB_TITLE
FROM JOB
WHERE JOB_ID = 'J4';

-- ��ȸ���� 4 :
-- ���� �������� '90'�� �μ��� �ٹ��ϴ� �������� ���, �̸�, �μ��ڵ�, �����ڻ�� ��ȸ
SELECT EMP_ID, EMP_NAME, DEPT_ID, MGR_ID
FROM EMPLOYEE
WHERE DEPT_ID = '90';

-- 90�� �μ��� �μ�����?

SELECT DEPT_NAME
FROM DEPARTMENT
WHERE DEPT_ID = '90';

-- SELECT ������ �⺻ 1���� ���̺� ���� ��ȸ��
-- �ʿ��� ��� ���� ���� ���̺��� �ϳ��� ���ļ�(����, JOIN) ���ϴ� �÷��� ��ȸ�� ���� ����
-- �� : ���� ���̺�� �μ� ���̺��� ���ļ�, ���, �̸�, �μ��ڵ�, �μ��� ��ȸ
SELECT EMP_ID, EMP_NAME, DEPT_ID, DEPT_NAME
FROM EMPLOYEE
JOIN DEPARTMENT USING (DEPT_ID)
WHERE DEPT_ID = '90';

-- ������ '����'�� ���� ���� ��ȸ
-- ���, �̸�, �����ڵ�, ���޸�, �޿�, ���ʽ�����Ʈ
SELECT EMP_ID, EMP_NAME, JOB_ID, JOB_TITLE, SALARY, BONUS_PCT
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '����';

-- ���� �������� ���, �̸�, �޿�, ���ʽ�����Ʈ, ���ʽ�����Ʈ�� ����� ���� ��ȸ
SELECT EMP_ID, EMP_NAME, SALARY, BONUS_PCT,
        (SALARY + (SALARY * BONUS_PCT))* 12
FROM EMPLOYEE;
-- �����ͺ��̽������� ����� ���� NULL �� ������, ����� NULL ��
-- ����� ���� NULL�̸�, ������� �����ڲ� NULL�� �ٸ� ������ �ٲٸ� ��
-- ���� �Լ� �̿��� : NVL(�÷���, NULL�϶� �ٲ� ��)
SELECT EMP_ID, EMP_NAME, SALARY, BONUS_PCT,
        (SALARY + (SALARY * NVL(BONUS_PCT, 0)))* 12
FROM EMPLOYEE;

-- ��Ī (ALIAS)
SELECT EMP_ID AS ���, EMP_NAME �̸�, SALARY �޿�, BONUS_PCT ���ʽ�����Ʈ,
        (SALARY + (SALARY * NVL(BONUS_PCT, 0)))* 12 ���ʽ����뿬��
FROM EMPLOYEE;

/*
SELECT ���� �ۼ� ���� :
������� : ��
5 :     SELECT * | �÷��� [AS] ��Ī, ���� [AS] ��Ī
1 :     FROM ��ȸ�� ����� ���̺��
2 :     WHERE �÷��� �񱳿����� �񱳰�
3 :     GROUP BY �÷��� | ����
4 :     HAVING �׷��Լ� �񱳿����� �񱳰� (������ �����ϴ� �׷��� ���)
6 :     ORDER BY �÷��� ���ı���, SELECT ���� ������ �׸� ���� ���Ĺ��, ��Ī [ASC] | DESC;
*/

-- SELECT ���� �÷��� | ���� �ڿ� ��Ī(ALIAS)�� ����� �� ����
-- �÷��� AS ��Ī, ���� AS ��Ī
-- AS �� �����ص� �� => �÷��� ��Ī, ���� ��Ī
-- ���ǻ��� :
-- ��â�� ����, ����, ��ȣ�� ���ԵǸ� �ݵ�� ""�� ����� ��, "��Ī"
-- ��Ī�� ���Ǵ� ���ڼ��� ���Ѿ���
-- ���� ��Ī�� �⺻ �빮�ڷ� ǥ�õ� => "�ҹ���", "��ҹ���ȥ��" ����ǥ �����

SELECT EMP_ID ���, EMP_NAME �̸�, SALARY "�޿�(��)", BONUS_PCT "���ʽ� ����Ʈ",
        (SALARY + (SALARY * NVL(BONUS_PCT, 0))) * 12 "1��ҵ�"
FROM EMPLOYEE;

-- ���ͷ�(LITERAL) : ���ڿ���
-- SELECT ���� ���ͷ�(���ڿ���) ����� �� ����
SELECT EMP_ID ���, EMP_NAME �̸�, '����' �ٹ�����
FROM EMPLOYEE;

-- DISTINCT
-- SELECT ���� �÷��� �տ� �����
-- SELECT DISTINCT �÷���
-- SELECT ���� �ѹ��� ����� �� ����
-- �÷��� �ߺ� ��ϵ� ���� �Ѱ��� �����϶�� �ǹ���

-- �÷��� ��ϵ� ���� ������ �ľ��� �� ����ϸ� ����
SELECT DISTINCT MARRIAGE
FROM EMPLOYEE;

SELECT DISTINCT DEPT_ID
FROM EMPLOYEE
ORDER BY 1 ASC;

-- DISTINCT : 1���� �����
--SELECT DISTINCT DEPT_ID, DISTINCT JOB_ID -- ERROR
--FROM EMPLOYEE;

SELECT DISTINCT DEPT_ID, JOB_ID -- �� �÷����� ��� �ϳ��� ������ ���� �ߺ��� �Ǵ���
FROM EMPLOYEE;

-- ���� �߿��� �������� �����鸸 ��ȸ 
SELECT DISTINCT MGR_ID
FROM EMPLOYEE
WHERE MGR_ID IS NOT NULL
ORDER BY 1 ASC;

-- WHERE �� **********************************
/*
�۵����� : 
FROM ���� �۵��ǰ� ���� WHERE ���� �۵���
=> ���̺��� ã�Ƽ�, ���̺� ����� ���� �߿� ������ �����ϴ� ���� �ִ� ��(������)�� ���
WHERE �÷��� �񱳿����� �񱳰� => �������̶�� ��

�񱳿����� : > (ũ�� �ʰ�), < (������, �̸�), >= (ũ�ų� ������, �̻�), <= (�۰ų� ������, ����),
            = (������), != (�����ʴ���, <>, ^=)
            IN, NOT IN, LIKE, NOT LIKE, BETWEEN AND, NOT BETWEEN AND
�������� : AND, OR
*/

-- ���� ���̺��� �μ��ڵ尡 '90'�� ���� ���� ��ȸ 
-- ��� �׸� ��ȸ
SELECT *
FROM EMPLOYEE
WHERE DEPT_ID = '90'; -- ���ǰ� ��ġ�ϴ� ���� ��ϵ� ��(ROW)���� ���

-- ���� �� �޿��� 4�鸸���� ���� �޴� (4�鸸�� �ʰ��ϴ�) ���� ��� ��ȸ
-- ���, �̸�, �޿� : ��Ī ó��
SELECT EMP_ID ���, EMP_NAME �̸�, SALARY �޿�
FROM EMPLOYEE
WHERE SALARY > 4000000;

-- 90�� �μ��� �ٹ��ϴ� ���� �� �޿��� 2�鸸�� �ʰ��ϴ� ���� ���� ��ȸ
-- ���, �̸�, �޿�, �μ��ڵ� : ��Ī ó��
SELECT EMP_ID ���, EMP_NAME �̸�, SALARY �޿�, DEPT_ID �μ��ڵ�
FROM EMPLOYEE
WHERE DEPT_ID = '90' AND SALARY > 2000000; -- ����� : 3��

-- 90 �Ǵ� 20�� �μ��� �ٹ��ϴ� ���� ��ȸ
-- ���, �̸�, �ֹι�ȣ, ��ȣ��ȣ, �μ��ڵ� : ��Ī ó��
-- �μ��ڵ�� ������������ ó����
SELECT EMP_ID ���, EMP_NAME �̸�, EMP_NO �ֹι�ȣ, PHONE ��ȭ��ȣ, DEPT_ID �μ��ڵ�
FROM EMPLOYEE
--WHERE DEPT_ID = '90' OR DEPT_ID = '20'
WHERE DEPT_ID IN ('20', '90')
--ORDER BY DEPT_ID ASC;  -- ��� : 6��
--ORDER BY 5 ASC;
--ORDER BY �μ��ڵ� ASC:
ORDER BY �μ��ڵ�;

-- ���� 1 :
-- �޿��� 2�鸸�̻� 4�鸸������ ���� ��ȸ
-- ���, �̸�, �޿�, �����ڵ�, �μ��ڵ� : ��Īó��
SELECT EMP_ID ���, EMP_NAME �̸�, SALARY �޿�, JOB_ID �����ڵ�, DEPT_ID �μ��ڵ�
FROM EMPLOYEE
--WHERE SALARY >= 2000000 AND SALARY <= 4000000;  -- ���: 16��
WHERE SALARY BETWEEN 2000000 AND 4000000;

-- ���� 2 : 
-- �Ի����� 1995�� 1�� 1�Ϻ��� 2000�� 12�� 31�� ���̿� �Ի��� ���� ��ȸ
-- ���, �̸�, �Ի���, �μ��ڵ� : ��Ī
-- ��¥ �����ʹ� ��ϵ� ��¥����� ��ġ�ǰ� �ۼ���\
-- ��¥ �����ʹ� ���� ����ǥ�� ���� ǥ���� : '1995/01/01' �Ǵ� '95/01/01'
SELECT EMP_ID ���, EMP_NAME �̸�, HIRE_DATE �Ի���, DEPT_ID �μ��ڵ�
FROM EMPLOYEE
--WHERE HIRE_DATE >= '95/01/01' AND HIRE_DATE <= '2000/12/31'; -- ��� : 7��
WHERE HIRE_DATE BETWEEN '95/01/01' AND '200/12/31';

-- ���� ������ : ||
-- �ڹٿ��� "HELLO" + "WORLD" => "HELLO WORLD"
-- SELECT ������ ��ȸ�� �÷������� ���� ó���� �ϳ��� ������ ���� �� ����� �� ����
-- WHERE ������ �񱳰� ���� ���� �Ѱ��� ������ ���� �� ����ϱ⵵ ��

SELECT EMP_NAME || '�� �޿���' || SALARY || '�� �Դϴ�' AS �޿�����
FROM EMPLOYEE
WHERE DEPT_ID ='90';

-- ���� 3 : 
-- 2000�� 1�� 1�� ���Ŀ� �Ի��� ��ȥ�� ���� ��ȸ
-- �̸�, �Ի���, �����ڵ�, �μ��ڵ�, �޿�, ��ȥ���� : ��Ī ó��
-- �Ի糯¥ �ڿ� '�Ի�' ���� ���� �����
-- �޿��� �ڿ��� '(��)' ���� ���� �����
-- ��ȥ���δ� ���ͷ� ����� : '��ȥ' ���� ä��

SELECT EMP_NAME �̸�, HIRE_DATE || ' �Ի�' �Ի���, JOB_ID �����ڵ�, DEPT_ID �μ��ڵ�,
        SALARY || '(��)' �޿�, '��ȥ' ��ȥ����
FROM EMPLOYEE
WHERE HIRE_DATE >= '00/01/01' AND MARRIAGE = 'Y'; -- ��� : 13��

-- BETWEEN AND ������
-- WHERE �÷��� BETWEEN ������ AND ū��
-- �÷��� ��ϵ� ���� ������ �̻��̸鼭 ū�������� ���̶�� �ǹ���
-- WHERE �÷��� >= ������ AND �÷��� <= ū�� �� ����
-- ��¥ �����Ϳ� ����� �� ����

-- IN ������
-- WHERE �÷��� IN ('��', '��', ...)
-- WHERE �÷��� = '��' OR �÷��� = '��' OR.....�� ����

-- LIKE ������
-- ���ϵ�ī�� ����(%, _)�� �̿��ؼ� ���� ������ ������
-- �÷��� ��ϵ� ���� ���õ� �������ϰ� ��ġ�ϴ� ������ ��� �� �����
-- WHERE �÷��� LIKE '��������'
-- % : 0�� �̻��� ���ڵ�, _ : ���� ���ڸ� 

-- ���� �达�� ���� ��ȸ
-- ���, �̸�, ��ȭ��ȣ, �̸��� : ��Ī
SELECT EMP_ID ���, EMP_NAME �̸�, PHONE ��ȭ��ȣ, EMAIL �̸���
FROM EMPLOYEE
WHERE EMP_NAME LIKE '��%'; -- 3��

-- ���� �达�� �ƴ� ���� ��ȸ
SELECT EMP_ID ���, EMP_NAME �̸�, PHONE ��ȭ��ȣ, EMAIL �̸���
FROM EMPLOYEE
--WHERE EMP_ NAME NOT LIKE '��%';  -- 19��
WHERE NOT EMP_NAME LIKE '��%'; 

-- �������� �̸��� '��'�ڰ� ����ִ� ���� ��ȸ
SELECT EMP_ID ���, EMP_NAME �̸�, PHONE ��ȭ��ȣ, EMAIL �̸���
FROM EMPLOYEE
WHERE EMP_NAME LIKE '��%'; -- 1��

-- ��ȭ��ȣ�� ������ 4�ڸ��̸鼭 9�� ���� ��ȣ�� ���� ���� ��ȸ
-- �̸�, ��ȭ��ȣ
SELECT EMP_NAME �̸�, PHONE ��ȭ��ȣ
FROM EMPLOYEE
--WHERE PHONE LIKE'__9_______'; --2��
WHERE PHONE LIKE '___9%'; -- 3�� : ������ 9�� �����ϴ� �׷� ���õ�

-- ������ ������ ���� ��ȸ
-- ���, �̸�, �ֹι�ȣ, ��ȭ��ȣ ��Ī
SELECT EMP_ID ���, EMP_NAME �̸�, EMP_NO �ֹι�ȣ, PHONE ��ȭ��ȣ
FROM EMPLOYEE
--WHERE EMP_NO LIKE '______2%' OR EMP_NO LIKE '______4%'; -- 8��
WHERE SUBSTR(EMP_NO, 8, 1) IN ('2', '4');

-- ESCAPE OPTION
-- WHERE �÷��� LIKE '�������Ͼȿ� ��ȣ���ڻ��' ESCAPE '��ȣ����'
-- ��ϵ� �÷����� ���ϵ�ī�� ���� (_, %)�� ���� ���ڰ� ���� ��, �������Ͽ��� ������ �� ���
-- '���� ���п��ȣ���� ��ϰ�'

-- �̸��Ͽ��� ��ϵ� '_' ���� �ձ��ڰ� 3������ ���� ��ȸ
SELECT EMP_NAME, EMAIL
FROM EMPLOYEE
--WHERE EMAIL LIKE '___%' ESCAPE '\'; -- 1��
WHERE EMAIL LIKE '___#_%' ESCAPE '#';




