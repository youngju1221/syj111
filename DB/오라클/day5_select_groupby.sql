-- day5_select_groupby.sql

-- GROUP BY �� -------------------------------------------------
-- ���� ������ ���� �� ��ϵ� �÷��� ������ ���� ������ �׷����� ������
-- GROUP BY �÷��� | �÷��� ���� ����
-- ���� ������ �׷����� ��� �׷��Լ��� �����
-- SELECT ���� GROUP BY �� ���� �׷캰 �׷��Լ� ��� ������ �ۼ���

-- �÷��� ��ϵ� �� Ȯ��
SELECT DISTINCT DEPT_ID
FROM EMPLOYEE
ORDER BY 1; -- 7��

SELECT EMP_ID, DEPT_ID
FROM EMPLOYEE
ORDER BY DEPT_ID;

-- �μ��� �޿��� �հ� ��ȸ
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_ID
ORDER BY 1 DESC NULLS LAST;

SELECT DEPT_ID,
        SUM(SALARY) �μ����޿��հ�,
        FLOOR(AVG(SALARY)) �μ����޿����,
        COUNT(SALARY) �μ���������,
        MAX(SALARY) �μ����޿�ū��,
        MIN(SALARY) �μ����޿�������
FROM EMPLOYEE
GROUP BY DEPT_ID
ORDER BY 1 ASC NULLS LAST;

-- GROUP BY ������ �׷����� ���� ���� ������ ����� ���� ����
-- ���� �������� ������ �޿��հ�, �޿����(õ�������� �ݿø���), ������ ��ȸ
-- ������ ��������������
SELECT DECODE(SUBSTR(EMP_NO, 8, 1), '1', '��', '3', '��') ����,
        SUM(SALARY) �޿��հ�,
        ROUND(AVG(SALARY), -4) �޿����,
        COUNT(*) ������
FROM EMPLOYEE
GROUP BY DECODE(SUBSTR(EMP_NO, 8, 1), '1', '��', '3', '��')
ORDER BY ����;

-- GROUP BY ���� �Լ� ------------------------------------------------------------------

-- ROLLUP() �Լ�
-- GROUP BY ������ �����
-- �׷캰�� ��� ����� ����� ���� ����� �����踦 ǥ���ϴ� �Լ���
-- EXCEL �� �κ��հ� ����, �Ұ� ó��

-- Ȯ��
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_ID;

-- NULL ����
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_ID IS NOT NULL
GROUP BY DEPT_ID;

-- ROLLUP() ���
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_ID IS NOT NULL
GROUP BY ROLLUP(DEPT_ID);

-- ������ Ȯ��
SELECT DEPT_ID,
        SUM(SALARY) �μ����޿��հ�,
        FLOOR(AVG(SALARY)) �μ����޿����,
        COUNT(SALARY) �μ���������,
        MAX(SALARY) �μ����޿�ū��,
        MIN(SALARY) �μ����޿�������
FROM EMPLOYEE
WHERE DEPT_ID IS NOT NULL
GROUP BY ROLLUP(DEPT_ID);

-- ���� : �μ��ڵ�� �����ڵ带 �Բ� �׷����� ����, �޿��� �հ踦 ����
-- NULL�� ������, ROLLUP() ���
SELECT DEPT_ID, JOB_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_ID IS NOT NULL AND JOB_ID IS NOT NULL
GROUP BY DEPT_ID, JOB_ID
ORDER BY 1 DESC;

-- ���� �׷� ��� ROLLUP
SELECT DEPT_ID, JOB_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_ID IS NOT NULL AND JOB_ID IS NOT NULL
GROUP BY ROLLUP(DEPT_ID, JOB_ID)
ORDER BY 1 DESC;

-- ������ �׷� ROLLUP ����
SELECT DEPT_ID, JOB_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_ID IS NOT NULL AND JOB_ID IS NOT NULL
GROUP BY ROLLUP(DEPT_ID), ROLLUP(JOB_ID)
ORDER BY 1 DESC;

-- ������ �׷� ROLLUP �ٲ㼭 ����
SELECT DEPT_ID, JOB_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_ID IS NOT NULL AND JOB_ID IS NOT NULL
GROUP BY ROLLUP(JOB_ID), ROLLUP(DEPT_ID)
ORDER BY 1 DESC;

-- CUBE() �Լ�
SELECT DEPT_ID, JOB_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_ID IS NOT NULL AND JOB_ID IS NOT NULL
GROUP BY CUBE(DEPT_ID, JOB_ID)
ORDER BY 1 DESC;