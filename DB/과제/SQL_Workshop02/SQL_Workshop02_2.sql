-- SQL_Workshop02 ����

--10. �а��� �л����� ���Ͽ� "�а���ȣ", "�л���(��)" �� ���·� ����� ����� ������� 
--��µǵ��� �Ͻÿ�. 
SELECT DEPARTMENT_NO AS �а���ȣ, 
COUNT(*) AS "�л���(��)" 
FROM   TB_STUDENT 
GROUP BY DEPARTMENT_NO 
ORDER BY 1;

--11. ���� ������ �������� ���� �л��� ���� �� �� ���� �Ǵ� �˾Ƴ��� SQL ���� 
--�ۼ��Ͻÿ�. 
SELECT COUNT(*) 
FROM   TB_STUDENT 
WHERE COACH_PROFESSOR_NO IS NULL; 


--12. �й��� A112113�� ���� �л��� �⵵ �� ������ ���ϴ� SQL ���� �ۼ��Ͻÿ�. ��, 
--�̶� ��� ȭ���� ����� "�⵵", "�⵵ �� ����" �̶�� ������ �ϰ�, ������ �ݿø��Ͽ� 
--�Ҽ��� ���� �� �ڸ����� ǥ�� �Ѵ�. 
SELECT SUBSTR(TERM_NO, 1 ,4) AS �⵵, 
       ROUND(AVG(POINT), 1) AS "�⵵ �� ����"  
FROM   TB_GRADE 
WHERE  STUDENT_NO = 'A112113' 
GROUP BY SUBSTR(TERM_NO, 1, 4);
--13. �а� �� ���л� ���� �ľ��ϰ��� �Ѵ�. �а� ��ȣ�� ���л� ���� ǥ���ϴ� SQL ������ 
--�ۼ��Ͻÿ�.
-- �⵵�� ��� ������ ���� ���� ���
SELECT DEPARTMENT_NO AS �а��ڵ��, 
       SUM(CASE WHEN ABSENCE_YN ='Y' THEN 1  
        ELSE 0 END) AS "���л� ��" 
FROM   TB_STUDENT 
GROUP BY DEPARTMENT_NO --ORDER BY 1 
;    
--14.  �� ���б��� �ٴϴ� ��������(��٣���) �л����� �̸��� ã���� �Ѵ�. � SQL 
--������ ����ϸ� �����ϰڴ°�?
SELECT STUDENT_NAME AS �����̸�, 
       COUNT(*)     AS "������ ��" 
FROM   TB_STUDENT 
GROUP BY STUDENT_NAME 
HAVING COUNT(*) > 1;

--15. �й��� A112113 �� ���� �л��� �⵵, �б� �� ������ �⵵ �� ���� ���� , �� 
--������ �⵵ ������ ǥ���ϴ� SQL ���� �ۼ��Ͻÿ�. (��, ������ �Ҽ��� 1�ڸ������� 
--�ݿø��Ͽ� ǥ�� �Ѵ�.) 
SELECT SUBSTR(TERM_NO, 1, 4) AS �⵵, 
       SUBSTR(TERM_NO, 5, 2) AS �б�, 
    ROUND(AVG(POINT), 1) AS ���� 
FROM   TB_GRADE 
WHERE  STUDENT_NO = 'A112113' 
GROUP BY ROLLUP(SUBSTR(TERM_NO, 1, 4),SUBSTR(TERM_NO, 5, 2));

