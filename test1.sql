/*
DROP TABLE myEmp;
CREATE TABLE myEmp(
	empno NUMBER(4),
	ename VARCHAR2(10),
	job VARCHAR2(9),
	mgr NUMBER(4),
	hiredate DATE,
	sal NUMBER(7,2),
	comm NUMBER(7,2),
	deptno NUMBER(2)	
);
*/

/*
DDL => P43
 = CREATE
 ����)
 CREATE TABLE table_name(
	�÷��� �������� [��������],
	�÷��� �������� [��������],
	�÷��� �������� [��������]
	);
	CREATE TABLE table_name
	AS SELECT * FROm emp;
	=DROP : ����
	����) DROP TABLE table_name;
	=ALTER : ����
	  ����)
	  => �÷� �߰� : ADD
	  => �÷� ���� : MODIFY
	  => �÷� ���� : DROP CULUMN
	=TRUNCATE : �����͸� �߶󳻱�
	=RENAME : ���̺�� ����
*/
--CREATE TABLE myEmp2 AS SELECT * FROM emp;
--�÷� �߰� (�μ���, ����)
--ALTER TABLE myEmp2 ADD dname VARCHAR2(10);
--ALTER TABLE myEmp2 ADD loc VARCHAR2(10);
--ALTER TABLE myEmp2 MODIFY loc VARCHAR2(30);
--ALTER TABLE myEmp2 ADD addr VARCHAR(100) UNIQUE;
--ALTER TABLE myEmp2 DROP COLUMN addr;
--RENAME maAddr to myAddr;
--TRUNCATE TABLE myAddr;
--DROP TABLE myAddr;




