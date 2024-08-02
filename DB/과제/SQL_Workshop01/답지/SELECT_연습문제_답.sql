--SELECT ��������
--
--1. �μ��ڵ尡 90�̸鼭, �����ڵ尡 J2�� �������� ���, �̸�, �μ��ڵ�, �����ڵ�, �޿� ��ȸ��
--   ��Ī ������
SELECT EMP_ID ���, EMP_NAME �̸�, DEPT_ID �μ��ڵ�, JOB_ID �����ڵ�, SALARY �޿�
FROM EMPLOYEE
WHERE DEPT_ID = '90' AND JOB_ID = 'J2';

--2. �Ի����� '1982-01-01' �����̰ų�, �����ڵ尡 J3 �� �������� ���, �̸�, ������ ���, ���ʽ�����Ʈ ��ȸ��
SELECT EMP_ID ���, EMP_NAME �̸�, MGR_ID �����ڻ��, BONUS_PCT ���ʽ�����Ʈ
FROM EMPLOYEE
WHERE HIRE_DATE > '82/01/01' OR JOB_ID = 'J3';

--3. �����ڵ尡 J4�� �ƴ� �������� �޿��� ���ʽ�����Ʈ�� ����� ������ ��ȸ��.
--  ��Ī ������, ���, �����, �����ڵ�, ����(��)
--  ��, ���ʽ�����Ʈ�� null �� ���� 0���� �ٲپ� ����ϵ��� ��.
SELECT EMP_ID ���, EMP_NAME �����, JOB_ID �����ڵ�, 
      (SALARY + (SALARY * NVL(BONUS_PCT, 0))) * 12 || ' (��)' ����
FROM EMPLOYEE
WHERE JOB_ID != 'J4';

--4. ���ʽ�����Ʈ�� 0.1 �̻� 0.2 ������ �������� ���, �����, �̸���, �޿�, ���ʽ�����Ʈ ��ȸ��
SELECT EMP_ID ���, EMP_NAME �����, EMAIL �̸���, SALARY �޿�, BONUS_PCT ���ʽ�����Ʈ
FROM EMPLOYEE
WHERE BONUS_PCT BETWEEN 0.1 AND 0.2;


--5. ���ʽ�����Ʈ�� 0.1 ���� �۰ų�(�̸�), 0.2 ���� ����(�ʰ�) �������� ���, �����, ���ʽ�����Ʈ, �޿�, �Ի��� ��ȸ��
SELECT EMP_ID ���, EMP_NAME �����, EMAIL �̸���, SALARY �޿�, BONUS_PCT ���ʽ�����Ʈ
FROM EMPLOYEE
WHERE BONUS_PCT NOT BETWEEN 0.1 AND 0.2;

--6. '1982-01-01' ���Ŀ� �Ի��� �������� �����, ���ʽ�����Ʈ, �޿� ��ȸ��
SELECT EMP_NAME �����, BONUS_PCT ���ʽ�����Ʈ, SALARY �޿�
FROM EMPLOYEE
WHERE HIRE_DATE > '82/01/01';

--7. ���ʽ�����Ʈ�� 0.1, 0.2 �� �������� ���, �����, ���ʽ�����Ʈ, ��ȭ��ȣ ��ȸ��
SELECT EMP_ID ���, EMP_NAME �����, BONUS_PCT ���ʽ�����Ʈ, PHONE ��ȭ��ȣ
FROM EMPLOYEE
WHERE BONUS_PCT IN (0.1, 0.2);

--8. ���ʽ�����Ʈ�� 0.1�� 0.2�� �ƴ� �������� ���, �����, ���ʽ�����Ʈ, �ֹι�ȣ ��ȸ��
SELECT EMP_ID ���, EMP_NAME �����, BONUS_PCT ���ʽ�����Ʈ, EMP_NO �ֹι�ȣ
FROM EMPLOYEE
WHERE BONUS_PCT NOT IN (0.1, 0.2);

--9. ���� '��'���� �������� ���, �����, �Ի��� ��ȸ��
--  ��, �Ի��� ���� �������� ������
SELECT EMP_ID ���, EMP_NAME �����, HIRE_DATE �Ի���
FROM EMPLOYEE
WHERE EMP_NAME LIKE '��%'
ORDER BY HIRE_DATE ASC;


--10. �ֹι�ȣ 8��° ���� '2'�� ������ ���, �����, �ֹι�ȣ, �޿��� ��ȸ��
--  ��, �޿� ���� �������� ������
SELECT EMP_ID ���, EMP_NAME �����, EMP_NO �ֹι�ȣ, SALARY �޿�
FROM EMPLOYEE
WHERE EMP_NO LIKE '_______2%'
ORDER BY SALARY DESC;

