--2017.09.20
/*
CREATE TABLE music(
	no NUMBER PRIMARY KEY,
	title VARCHAR2(200) NOT NULL,
	singer VARCHAR2(100) NOT NULL,
	music VARCHAR2(30)
);
*/
/*
���� Ÿ��
1) ��Į�� ���� Ÿ�� 	pno NUMBER
2) %TYPE		pno music.no%TYPE => ������no Ÿ���� �����ͼ� �Ȱ��� ��������	||�ѵΰ� �����ö� ����
3) %ROWTYPE	=> pmusic music%ROWTYPE(no,title,singer,music)				||���̺� �ϳ����� �������� �����ö�
4) RECORD 	=> RECORD (no.title) => �����Ѱ� �ѹ��� �����ö� ���� ����		||���̺��� �����ִ� ������ �ʿ��� �� �� �����ö�
5) CURSOR = ResultSet  => �ڹٿ��� arraylist						||
*/
/*
CREATE OR REPLACE PROCEDURE musicInsert(
	pno music.no%TYPE,
	ptitle music.title%TYPE,
	psinger music.singer%TYPE,
	pmusic music.music%TYPE
)
INSERT INTO music VALUE(pno,ptitle,psinger,pmusic);
COMMIT;
CALL musicInsert(?,?,?,?)
*/
//PL-SQL=> PROCEDURE, FUNCTION, TRIGGER, INDEX
/*
1)�����
   DECLARE 
   ���� ����
2)������
   BEGIN
     EXCEPTION ����ó�� ����
   END;
    /
3)����ó����
   WHEN TOO MANY ROWS THEN => �������������� �ִ� Ŀ���� �޾ƾ� �ϴµ� �ٸ� Ÿ������ �޾������
			   => �ڹٿ����� ���ǹ��� ���� ���� ������ (��� ������ �Ҹ�����)
*/
/*
SET SERVEROUTPUT ON;
DECLARE
	pempno emp.empno%TYPE;
	pename emp.ename%TYPE;
	pjob emp.job%TYPE;
BEGIN
	SELECT empno,ename,job INTO pempno,pename,pjob
	FROM emp
	WHERE empno=7788;
	DBMS_OUTPUT.PUT_LINE('���:'||pempno);
	DBMS_OUTPUT.PUT_LINE('�̸�:'||pename);
	DBMS_OUTPUT.PUT_LINE('����:'||pjob);
END;
/
*/
/*
DECLARE
	pemp emp%ROWTYPE;
BEGIN
	SELECT * INTO pemp
	FROM emp
	WHERE empno=7788;
	DBMS_OUTPUT.PUT_LINE('���:'||pemp.empno);
	DBMS_OUTPUT.PUT_LINE('�̸�:'||pemp.ename);
	DBMS_OUTPUT.PUT_LINE('����:'||pemp.job);
	DBMS_OUTPUT.PUT_LINE('�Ի���:'||pemp.hiredate);
END;
/	
*/
/*
DECLARE
	pemp emp%ROWTYPE;
BEGIN
	SELECT * INTO pemp
	FROM emp
	WHERE empno=7788;
	DBMS_OUTPUT.PUT_LINE('���:'||pemp.empno);
	DBMS_OUTPUT.PUT_LINE('�̸�:'||pemp.ename);
	DBMS_OUTPUT.PUT_LINE('����:'||pemp.job);
	DBMS_OUTPUT.PUT_LINE('�Ի���:'||pemp.hiredate);
END;
/
*/
--RECORD
ACCEPT pno PROMPT '���:';
-- scanf("%d",&a)
DECLARE
  vno NUMBER(4):=&pno; 
  TYPE empdept IS RECORD
  (
   empno emp.empno%TYPE,
   ename emp.ename%TYPE,
   job emp.job%TYPE,
   dname dept.dname%TYPE,
   loc dept.loc%TYPE
  );
  ed empdept;
BEGIN
  SELECT empno,ename,job,dname,loc INTO ed FROM emp,dept
  WHERE emp.deptno=dept.deptno
  AND empno=vno;
  DBMS_OUTPUT.PUT_LINE('���:'||ed.empno);
  DBMS_OUTPUT.PUT_LINE('�̸�:'||ed.ename);
  DBMS_OUTPUT.PUT_LINE('����:'||ed.job);
  DBMS_OUTPUT.PUT_LINE('�μ���:'||ed.dname);
  DBMS_OUTPUT.PUT_LINE('�ٹ���:'||ed.loc);
END;
/






































