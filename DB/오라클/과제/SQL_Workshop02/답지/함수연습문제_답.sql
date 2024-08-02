--�Լ� ��������
--
--1. ������� �ֹι�ȣ�� ��ȸ��
--  ��, �ֹι�ȣ 9��° �ڸ����� �������� '*'���ڷ� ä��
--  �� : ȫ�浿 771120-1******
SELECT EMP_NAME ������, 
        RPAD(SUBSTR(EMP_NO, 1, 8), 14, '*') �ֹι�ȣ
FROM EMPLOYEE;


--2. ������, �����ڵ�, ����(��) ��ȸ
--  ��, ������ ��57,000,000 ���� ǥ�õǰ� ��
--     ������ ���ʽ�����Ʈ�� ����� 1��ġ �޿���
SELECT EMP_NAME ������, NVL(JOB_ID, '����') �����ڵ�, 
        TO_CHAR((SALARY + (SALARY * NVL(BONUS_PCT, 0)) * 12), 
                    'L999,999,999') "����(��)"
FROM EMPLOYEE;


--3. �μ��ڵ尡 50, 90�� ������ �߿��� 2004�⵵�� �Ի��� ������ 
--   �� ��ȸ��.
--	��� ����� �μ��ڵ� �Ի���
SELECT EMP_ID ���, EMP_NAME �����, DEPT_ID �μ��ڵ�, HIRE_DATE �Ի���
FROM EMPLOYEE
WHERE DEPT_ID IN ('50', '90') AND HIRE_DATE LIKE '04/%';


--4. ������, �Ի���, �Ի��� ���� �ٹ��ϼ� ��ȸ
--  ��, �ָ��� ������
SELECT EMP_NAME ������, HIRE_DATE �Ի���, 
        LAST_DAY(HIRE_DATE) - HIRE_DATE "�Ի��� ���� �ٹ��ϼ�"
FROM EMPLOYEE;


--5. ������, �μ��ڵ�, �������, ����(��) ��ȸ
--  ��, ��������� �ֹι�ȣ���� �����ؼ�, 
--     ������ ������ �����Ϸ� ��µǰ� ��.
--  ���̴� �ֹι�ȣ���� �����ؼ� ��¥�����ͷ� ��ȯ�� ����, �����
SELECT EMP_NAME ������, DEPT_ID �μ��ڵ�,
		SUBSTR(EMP_NO, 1, 2) || '��' || 
        SUBSTR(EMP_NO, 3, 2) || '��' || 
        SUBSTR(EMP_NO, 5, 2) || '��' �������,
		EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM 
                        TO_DATE(SUBSTR(EMP_NO, 1, 4), 'RRMM')) ����
FROM EMPLOYEE;


--6. �������� �Ի��Ϸ� ���� �⵵�� ������, �� �⵵�� �Ի��ο����� ���Ͻÿ�.
--  �Ʒ��� �⵵�� �Ի��� �ο����� ��ȸ�Ͻÿ�.
--  => to_char, decode, sum ���
--
--	-------------------------------------------------------------
--	��ü������   2001��   2002��   2003��   2004��
--	-------------------------------------------------------------
SELECT COUNT(*) ��ü������,
        SUM(DECODE(TO_CHAR(HIRE_DATE, 'YYYY'), 2001, 1, 0)) "2001��",
        SUM(DECODE(TO_CHAR(HIRE_DATE, 'YYYY'), 2002, 1, 0)) "2002��",
        SUM(DECODE(TO_CHAR(HIRE_DATE, 'YYYY'), 2003, 1, 0)) "2003��",
        SUM(DECODE(TO_CHAR(HIRE_DATE, 'YYYY'), 2004, 1, 0)) "2004��"
FROM EMPLOYEE;

--7.  �μ��ڵ尡 50�̸� �ѹ���, 60�̸� ��ȹ��, 90�̸� �����η� ó���Ͻÿ�.
--   ��, �μ��ڵ尡 50, 60, 90 �� ������ ������ ��ȸ��
--  => case ���
--	�μ��ڵ� ���� �������� ������.
SELECT DEPT_ID �μ��ڵ�, 
        CASE DEPT_ID 
            WHEN '50' THEN '�ѹ���'
            WHEN '60' THEN '��ȹ��'
            WHEN '90' THEN '������' 
        END AS "�μ���"
FROM EMPLOYEE
WHERE DEPT_ID IN('50', '60', '90') 
ORDER BY DEPT_ID ASC;


