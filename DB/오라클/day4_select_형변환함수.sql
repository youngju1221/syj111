--day4_select_����ȯ�Լ�.sql

-- Ÿ��(�ڷ���) ��ȯ �Լ� -------------------------------------------------------------
-- ������(CHAR, VARCHAR2, LONG, CLOB), ������(NUMBER), ��¥��(DATE)

-- �ڵ�����ȯ (�Ͻ��� ����ȯ) �Ǵ� ���
-- ��ǻ�� ���� ��Ģ : ���� ������ �������� ����� �� �ִ�.
SELECT 25 + '10' -- NUMBER + CHARACTER => NUMBER + NUMBER (�ڵ�����ȯ)
FROM DUAL;

SELECT *
FROM EMPLOYEE
WHERE EMP_ID = 100; -- CHAR = NUMBER => CHAR = CHAR (�ڵ�����ȯ)
-- WHERE EMP_ID = '100';
-- WHERE TO_NUMBER(EMP_ID) = 100;

SELECT FLOOR(MONTHS_BETWEEN(SYSDATE, '00/12/31')) -- DATE - CHARACTER (�ڵ�����ȯ)
FROM DUAL; -- DATE - DATE ������

-- �ڵ�����ȯ�� �� �Ǵ� ��찡 ����
SELECT SYSDATE - '15/03/25' -- DATE - CHARACTER
FROM DUAL;

-- ����� ����ȯ �ʿ��� => ����ȯ �Լ� �����
SELECT SYSDATE - TO_DATE('15/03/25') -- DATE - CHARACTER => DATE - DATE
FROM DUAL;

-- TO_CHAR() �Լ� -----------------------------------------
-- NUMBER(���� : ����, �Ǽ�)�� DATE(��¥, �ð�)�� ���� ��� ����(FORMAT)�� �����ϴ� �Լ�
-- ������ ����� ����� ���ڿ�(CHARACTER)�� ���ϵ�
-- TO_CHAR(���� | ��¥, '������ �������� ����')

-- ���ڿ� ���� ����
-- TO_CHAR(���� | ���ڰ� ��ϵ� �÷��� | ����, '������ ���乮�ڵ� ����')
-- �ַ� ��ȭ���� ǥ��(L), õ���� ������ ǥ��(,), �Ҽ��� �ڸ��� ����(.), ġ���� ǥ��(EEEE) ��

SELECT EMP_NAME �̸�,
        TO_CHAR(SALARY, 'L99,999,999') �޿�,
        TO_CHAR(NVL(BONUS_PCT, 0), '90.00')
FROM EMPLOYEE;

-- ��¥�� ���� ����
-- TO_CHAR(TO_DATE("��¥���ڿ�") | ��¥�� ��ϵ� �÷��� | DATE Ÿ�Թ�ȯ�Լ���, '������ ���� ���ڵ� ����')
-- ����� �ú��� ���� �б� ���� ��� ó�� �������� ������ �� ����

-- �⵵ ��� ����
SELECT SYSDATE -- NLS_DATE_FORMATE : RR//MM//DD
        , TO_CHAR(SYSDATE, 'YYYY'), TO_CHAR(SYSDATE, 'RRRR')
        , TO_CHAR(SYSDATE, 'YY'), TO_CHAR(SYSDATE, 'RR')
        , TO_CHAR(SYSDATE, 'YEAR'), TO_CHAR(SYSDATE, 'RRRR"��"')
FROM DUAL;

-- ���� ��� ����
SELECT SYSDATE -- NLS_DATE_FORMATE : RR//MM//DD
        , TO_CHAR(SYSDATE, 'MM'), TO_CHAR(SYSDATE, 'RM')
        , TO_CHAR(SYSDATE, 'MONTH'), TO_CHAR(SYSDATE, 'MON')
        , TO_CHAR(SYSDATE, 'YYYY"��" fmMM"��"'), TO_CHAR(SYSDATE, 'RRRR"��" MM"��"')
FROM DUAL;

-- ��¥�� ��� ����
SELECT SYSDATE -- NLS_DATE_FORMATE : RR//MM//DD
        , TO_CHAR(SYSDATE, '"1�����" DDD "��°"')
        , TO_CHAR(SYSDATE, '"������" DD "��°"') 
        , TO_CHAR(SYSDATE, '"�ֱ���" D "��°"'), 
         TO_CHAR(SYSDATE, 'RRRR"��" MM"��" fmDD"��"')
FROM DUAL;

-- �б�, ���Ͽ� ��� ����
SELECT SYSDATE 
        , TO_CHAR(SYSDATE, 'Q "��б�"')
        , TO_CHAR(SYSDATE, 'DAY') 
        , TO_CHAR(SYSDATE, 'DY')   
FROM DUAL;

-- �ú��� ���� | ���� �� ��� ����
SELECT SYSTIMESTAMP
        , TO_CHAR(SYSDATE, 'HH24"��" MI"��" SS"��"')
        , TO_CHAR(SYSDATE, 'AM HH:MI:SS') 
        , TO_CHAR(SYSDATE, 'PM HH24:MI:SS')   
FROM DUAL;

-- ���� �������� �̸�, �Ի��� ��ȸ
-- �Ի��Ͽ� ���� ���� : 2024�� 8�� 1�� (��) �Ի�

SELECT EMP_NAME �̸�,
        TO_CHAR(HIRE_DATE, 'YYYY"��" fmMM"��" DD"�� ("DY") �Ի�"') �Ի���,
        TO_CHAR(HIRE_DATE, 'RRRR"��" MON fmDD"�� ("DY") �Ի�"') �Ի���
FROM EMPLOYEE; -- fm ���� ���� �ȿ��� �ѹ��� ����� �� ����

-- ��¥ ������ �񱳿���� ���ǻ��� :
-- ��¥�� ��ϵ� �����Ϳ� ��¥�� �ð��� ���� ����� ������ �񱳽�, �� �����ʹ� equal �� �ƴ�
-- '24/08/01' '24/08/01 12:08:30' 

-- Ȯ��
SELECT EMP_NAME �̸�,
        TO_CHAR(HIRE_DATE, 'YYYY-MM-DD AM HH:MM:SS') �Ի���,
        TO_CHAR(HIRE_DATE, 'YYYY-MM-DD AM HH24:MI:SS') �Ի���
FROM EMPLOYEE;
-- �Ѽ��⸸ �ð� �����͸� ������ ����, �ٸ� �������� �ð� �����Ͱ� ����

-- ��¥�� �ð��� ���� ��ϵǾ� �ִ� ���� �񱳿���� ��¥�� ���� �� ����
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE = '90/04/01'; -- 0��
-- '2090-04-01 13:30:30' = '2090-04-01' : ���� �ʴ�

-- �ذ��� 1 : ��¥�����Ϳ� ���� ����
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE TO_CHAR(HIRE_DATE, 'RR/MM/DD')= '90/04/01';

-- �ذ��� 2 : LIKE ������ ���
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE LIKE '90/04/01';

-- �ذ��� 3 : SUBSTR() ���
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE SUBSTR(HIRE_DATE, 1, 8) = '90/04/01';

-- �ذ��� 4 : ��¥ ���� ���� ���
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE FLOOR(HIRE_DATE - TO_DATE('2090/04/01')) = 0;

-- �ذ��� 5 : �񱳰� ��¥�����͸� �ٲ�
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE SUBSTR(HIRE_DATE, 1, 8) = TO_DATE('90/04/01 13:30:30', 'YY/MM/DD HH24:MI:SS');

-- TO_DATE() ------------------------------------------------------------------
-- TO_DATE('��������¥' | ��������¥�� ��ϵ� �÷���, '�� ���ڿ� ��Ī�� ���乮�ڵ�')
-- ���� ���ڼ��� ���� �׶����� �ݵ�� ���ƾ� ��

SELECT TO_DATE('20161225', 'RRRRMMDD'),
        TO_CHAR(TO_DATE('20161225', 'RRRRMMDD'), 'DY')
FROM DUAL;

-- RR �� YY �� ����
-- ���ڸ� �⵵�� ���ڸ� �⵵�� �ٲ� ��
-- ���� �⵵�� (24 : 50���� ����) �� ��
-- �ٲ� �⵵�� 50�̸��̸� ���� ����(2000)�� ���� : '14'�̸� 'RRRR' => 2014 �� ��
-- �ٲ� �⵵�� 50�̻��̸� ���� ����(1900)�� ���� : '95'�̸� 'RRRR' => 1995 �� ��

SELECT HIRE_DATE,
        TO_CHAR(HIRE_DATE, 'RRRR'),
        TO_CHAR(HIRE_DATE, 'YYYY')
FROM EMPLOYEE; -- �⵵�� 2�ڸ����� 4�ڸ��� �ٲ� �� Y, R �ƹ��ų� ���

-- ���� �⵵(24��)�� �ٲ� �⵵�� �� �� 50�̸��̸�, Y | R �ƹ��ų� ����ص� ��
SELECT TO_DATE('160505', 'YYMMDD'),
        TO_CHAR(TO_DATE('160505', 'YYMMDD'), 'YYYY-MM-DD'),
        TO_CHAR(TO_DATE('160505', 'RRMMDD'), 'RRRR-MM-DD'),
        TO_CHAR(TO_DATE('160505', 'RRMMDD'), 'YYYY-MM-DD'),
        TO_CHAR(TO_DATE('160505', 'YYMMDD'), 'RRRR-MM-DD')
FROM DUAL;

-- ���� �⵵(24��)�� 50�̸��̰�, �ٲ� �⵵�� 50�̻��� ��
-- ���ڸ� ��¥�� �ٲܶ� �⵵�� Y ��� : ���� ����(2000)�� �����
-- R ���ÿ��� ���� ����(1900)�� �����
SELECT TO_DATE('970325', 'YYMMDD'),
        TO_CHAR(TO_DATE('970325', 'YYMMDD'), 'YYYY-MM-DD'), -- 2097
        TO_CHAR(TO_DATE('970325', 'RRMMDD'), 'RRRR-MM-DD'), -- 1997
        TO_CHAR(TO_DATE('970325', 'RRMMDD'), 'YYYY-MM-DD'),  -- 1997
        TO_CHAR(TO_DATE('970325', 'YYMMDD'), 'RRRR-MM-DD') -- 2097
FROM DUAL;

-- ��� : ���ڸ� TO_DATE() �� ��¥�� �ٲ� �� �⵵ ���뿡 'R' ����ϸ� ��
-- �⵵ 2�ڸ��� 4�ڸ��� �ٲ� ���� Y, R �ƹ��ų� ����ص� ��

-- ��Ÿ �Լ� -----------------------------------------------------------------------------------

-- NVL() �Լ�
-- ������� : NVL(�÷���, �÷����� NULL�� �� �ٲ� ��)
SELECT EMP_NAME, BONUS_PCT, DEPT_ID, JOB_ID
FROM EMPLOYEE;

SELECT EMP_NAME,
        NVL(BONUS_PCT, 0.0),
        NVL(DEPT_ID, '00'),
        NVL(JOB_ID, 'JO')
FROM EMPLOYEE;

-- NVL2() �Լ� 
-- ������� : NVL2(�÷���, �ٲܰ�1, �ٲܰ�2)
-- �ش� �÷� ���� ������ �ٲܰ�1�� �ٲٰ�, NULL�̸� �ٲܰ�2�� ������

-- ���� �������� ���ʽ�����Ʈ�� 0.2�̸��̰ų� NULL �� ������ ��ȸ
-- ���, �̸�, ���ʽ�����Ʈ, ���溸�ʽ�����Ʈ : ��Ī ó��
-- ���溸�ʽ�����Ʈ : ���ʽ�����Ʈ ���� ������ 0.15�� �ٲٰ�, NULL�̸� 0.05�� �ٲ�


SELECT EMP_ID ���, EMP_NAME �̸�, BONUS_PCT ���ʽ�����Ʈ,
        NVL2(BONUS_PCT, 0.15, 0.05) ���溸�ʽ�����Ʈ
FROM EMPLOYEE
WHERE BONUS_PCT < 0.2 
OR BONUS_PCT IS NULL; --17��

-- DECODE() �Լ�
/*
������� :
DECODE(���� | �÷���, ������, ���� ������ ������ ��, ......, ������N, ���ð�N)
�Ǵ�
DECODE(���� | �÷���, ������, ���� ������ ������ ��, ......, ������N, ���ð�N, ��� ���ð��� �ƴ� �� ������ ��)

�ڹ��� SWITCH ���� ���۱����� ������ �Լ���
*/

-- 50�� �μ��� �ٹ��ϴ� �������� �̸�, ���� ��ȸ 
-- ���� ���� : �ֹι�ȣ 8��° ���� 1 | 3 �̸� ����, 2 | 4 �̸� ����
-- ���� ���� �������������ϰ�, ���� ������ �̸� ���� ������������ ó����
SELECT EMP_NAME �̸�,
        DECODE(SUBSTR(EMP_NO, 8, 1), '1', '����', '2', '����', '3', '����', '4', '����')����
FROM EMPLOYEE
WHERE DEPT_ID = '50'
ORDER BY ����, �̸�; -- ������������(ASC)�� ������ �� ����

SELECT EMP_NAME �̸�,
        DECODE(SUBSTR(EMP_NO, 8, 1), '1', '����', '3', '����', '����')����
FROM EMPLOYEE
WHERE DEPT_ID = '50'
--ORDER BY ����, �̸�; -- SELECT ���� ���� ��Ī, �÷���, �׸� ���� ���� ��� ������
ORDER BY 2, 1;

-- ���� �̸��� �������� ��� ��ȸ
SELECT EMP_NAME, MGR_ID
FROM EMPLOYEE;

-- ������ ����� NULL�̸� '000'���� �ٲ�
-- 1. NVL() ���
SELECT EMP_NAME, MGR_ID, NVL(MGR_ID, '000')
FROM EMPLOYEE;

-- 2. DECODE() ���
SELECT EMP_NAME, MGR_ID, DECODE(MGR_ID, NULL, '000', MGR_ID)
FROM EMPLOYEE;

-- ���޺� �޿� �λ���� �ٸ� ��, 
-- 1. DECODE() ����� ���
SELECT EMP_ID, JOB_ID,
        TO_CHAR(SALARY, 'L99,999,999'),
        TO_CHAR(DECODE(JOB_ID, 'J7', SALARY * 1.1,
                                'J6', SALARY * 1.15,
                                'J5', SALARY * 1.2,
                                SALARY * 1.05), 'L99,999,999') �λ�޿�
FROM EMPLOYEE;

-- 2. CASE ǥ���� ����� ��� : �ڹ��� ���� IF���� ���� ���� ������ ����
SELECT EMP_ID, JOB_ID,
        TO_CHAR(SALARY, 'L99,999,999'),
        TO_CHAR(CASE JOB_ID
                    WHEN 'J7' THEN SALARY * 1.1
                    WHEN 'J6' THEN SALARY * 1.15
                    WHEN 'J5' THEN SALARY * 1.2
                    ELSE SALARY * 1.05
                  END, 'L99,999,999') �λ�޿�
FROM EMPLOYEE;

-- CASE ǥ���� ��� 2 : 
-- ������ �޿��� ����� �Űܼ� ���� ó��
SELECT EMP_ID, EMP_NAME, SALARY,
        CASE WHEN SALARY <= 3000000 THEN '�ʱ�'
                WHEN SALARY <= 4000000 THEN '�߱�'
                ELSE '���'
        END ����
FROM EMPLOYEE
ORDER BY ����;


-- *************************************************************************

-- ORDER BY �� ---------------------------------------------------------
/*
������� : 
    ORDER BY ���ı��� ���Ĺ��, ���ı���2 ���Ĺ��, .........
�ۼ���ġ : SELECT ���� ���� �������� �ۼ���
������� : ���� �������� �۵���
���ı��� : SELECT ���� �÷���, ��Ī, SELECT ���� ������ �׸��� ����(1, 2, 3...)
���Ĺ�� : ASC(��������) | DESC 
    ASCending : ������������, DESCending : ������������
*/

-- ���� �������� �μ��ڵ尡 50 �Ǵ� NULL �� ������ ��ȸ
-- �̸�, �޿�
-- �޿����� �������������ϰ�, ���� �޿��� �̸����� ������������ ó����

SELECT EMP_NAME �̸�, SALARY �޿�
FROM EMPLOYEE
WHERE DEPT_ID = '50' OR DEPT_ID IS NULL
--ORDER BY SALARY DESC, EMP_NAME;
--ORDER BY �޿� DESC, �̸�;
ORDER BY 2 DESC, 1;

-- 2003�� 1�� 1�� ���� �Ի��� ���� ��� ��ȸ 
-- ��, �ش� ��¥�� ������
-- �̸�, �Ի���, �μ��ڵ�, �޿� : ��Ī
-- �μ��ڵ� ���� �������������ϰ�, ���� �μ��ڵ忡 ���ؼ��� �Ի��� ���� �������������ϰ�, �Ի��ϵ� ������ �̸����� ������������ ó����
SELECT EMP_NAME �̸�, HIRE_DATE �Ի���, DEPT_ID �μ��ڵ�, SALARY �޿�
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('20030101', 'RRRRMMDD')
--ORDER BY DEPT_ID DESC NULLS LAST, HIRE_DATE ASC, EMP_NAME ASC; -- 11��
--ORDER BY �μ��ڵ� DESC NULLS LAST, �Ի���, �̸�;
ORDER BY 3 DESC NULLS LAST, 2, 1;

-- ORDER BY ���� NULL ��ġ ���� ���� : 
-- ORDER BY ���ı��� ���Ĺ�� NULLS LAST : NULL �� �Ʒ��ʿ� ��ġ��
-- ORDER BY ���ı��� ���Ĺ�� NULLS FIRST : NULL �� ���ʿ� ��ġ�� (�⺻)


