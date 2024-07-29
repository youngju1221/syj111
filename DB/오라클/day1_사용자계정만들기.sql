-- day1 : �����ڰ���(system/oracle) ���� �Ϲ� ����ڰ��� �����ϱ�

-- ���� ���ӵ� ����� ���� ����
show user;
SHOW USER;
show uSer;

/*
11g ������ ����Ŭ ��ġ�� ���͵� ���� ������ ������ �Ǿ���
scott/tiger, hr/hr => ���� ���̺�� �����͵��� ������ ��
18c ���ʹ� ������ �� ��
*/

-- ����� ���������
-- create user ���̵�� identified by ��ȣ;
-- 12c ���ʹ� ����ڰ���(���̵�) ���� ��, ���̵� ���� �տ� �ݵ�� c## �� �ٿ��� ��

-- �����ͺ��̽��� ����ڰ����� ��ȣ ���� �Ŀ� ������ �ο��ؾ� ��
-- ���� �ο� ��� ���� : 
-- grant ��������, ��������, ...... to ����ڰ���;
-- �������� : create session (�α׿� ����), create table, insert into, update, delete, select ���
-- ���� ���ѵ��� ��� ���� ��ü�� �̿��� ���� ���� : ��(ROLE) �̶�� ��
-- ����Ŭ�� �����ϴ� ���� �̿��� ���� ���� : CONNEXT ��, RESIURCE �� ��
-- ��� ���� : GRANT ���̸�, ���̸� TO ����ڰ���;

-- ������ ���� �����, ���Ѱ� ���̺� �����̽� �Ҵ�
CREATE USER c##student IDENTIFIED BY student;
grant CONNECT, RESOURCE to c##student;
ALTER USER c##student quota 1024M ON users;

-- ����Ŭ 12C ������ ����(GRANT)�� �ο��ϸ� ���̺� ������ ������ ��� ���� ��������
-- 18C ���ʹ� ���� �ο� �Ŀ� ���̺� �����̽�(TABLE SPACE)�� �Ҵ�޾ƾ�
-- ���̺� ������ ������ ���� ����� ����������
-- ����� ���� �������� ������
-- ��ɱ��� : 
-- ALTER USER ����ڰ��� QUOTA �Ҵ����ũ�� ON USERS;

-- ����ڰ��� : c##scott, ��ȣ�� tiger
-- ����� �߰� �����ϰ�, ���� �� �ڿ� ��� ��(Role)�� �̿��ؼ� ���Ѻο�
-- ���̺� �����̽� �Ҵ��� : 1024M

CREATE USER c##scott IDENTIFIED BY tiger;
grant CONNECT, RESOURCE to c##scott;
ALTER USER c##scott quota 1024M ON users;

/*
������ ���� : c##homework, ��ȣ : homework
���� �ο� : �� �̿� -connect, resourse
���̺����̽� �Ҵ� : 1024M
���� �信 '���������' �߰� ����ϱ�
����������� ����� ��ũ��Ʈ ������
*/
CREATE USER c##homework IDENTIFIED BY homework;
grant CONNECT, RESOURCE to c##homework;
ALTER USER c##homework quota 1024M ON users;

-- ����ڰ��� �����ϱ�
-- ����ڰ����� ������ ���� ��, �����ϰ� �ٽ� �������
-- ���� : DROP USER ����ڰ��� [CASCADE];

CREATE USER c##ttt IDENTIFIED BY ttt;

DROP USER c##ttt;
DROP USER c##ttt CASCADE;

-- �����ͺ��̽� ���ӽ� ���� �Ǵ� ��ȣ�� ��Ÿ�� ��� ������ �߻���Ű�ų�
-- �ڹ� �Ǵ� ���̽��� �ڵ�� SQL������ �����ͺ��̽��� �����ؼ� ���� ��û�� ���
-- SQL���� ������ ���� ��� (��� �ݺ��� ���)
-- �����ͺ��̽��� �ش� ����ڰ����� ��ۼ� ���� (LOCK)
-- �����ڰ������� ��� ����ڰ����� LOCK ���� ó���ؾ� ��
-- ���� : ALTER USER ����ڰ��� IDENTIFIED BY ��ȣ ACCOUNT UNLOCK;

-- ����ڰ��� ��ױ� (LOCK)
ALTER USER c##student IDENTIFIED BY student ACCOUNT LOCK;