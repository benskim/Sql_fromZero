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
 형식)
 CREATE TABLE table_name(
	컬럼명 데이터형 [제약조건],
	컬럼명 데이터형 [제약조건],
	컬럼명 데이터형 [제약조건]
	);
	CREATE TABLE table_name
	AS SELECT * FROm emp;
	=DROP : 삭제
	형식) DROP TABLE table_name;
	=ALTER : 수정
	  형식)
	  => 컬럼 추가 : ADD
	  => 컬럼 수정 : MODIFY
	  => 컬럼 삭제 : DROP CULUMN
	=TRUNCATE : 데이터만 잘라내기
	=RENAME : 테이블명 변경
*/
--CREATE TABLE myEmp2 AS SELECT * FROM emp;
--컬럼 추가 (부서명, 지역)
--ALTER TABLE myEmp2 ADD dname VARCHAR2(10);
--ALTER TABLE myEmp2 ADD loc VARCHAR2(10);
--ALTER TABLE myEmp2 MODIFY loc VARCHAR2(30);
--ALTER TABLE myEmp2 ADD addr VARCHAR(100) UNIQUE;
--ALTER TABLE myEmp2 DROP COLUMN addr;
--RENAME maAddr to myAddr;
--TRUNCATE TABLE myAddr;
--DROP TABLE myAddr;




