--2017.08.21 PL/SQL
/*
	PROCEDURE : ����� �����ϴ� �Լ��� ���� (�������� ����)
	1) ���� ����
		-�Է�(����)  	IN 	(Call By VALUE)
		-���		OUT	(Call By Reference)
		-�����		INOUT	(Call By VALUE, Call By Reference)
		SELECT empno,ename FROM emp
		WHERE empno=7788;
		=> (INOUT empno, OUT ename) ==>ename*
		����
		CREATE PROCEDURE pro_name(aoroqustn)
		IS 
		  ��������	
		BEGIN
		  ����
		END;
		/
*/
/*
CREATE TABLE student2(
	hakbun NUMBER PRIMARY KEY,
	name VARCHAR2(34) NOT NULL,
	kor NUMBER CHECK(kor>=0),
	eng NUMBER CHECK(eng>=0),
	math NUMBER CHECK(math>=0)
);
*/
/*
--DROP PROCEDURE pro_name;
CREATE OR REPLACE PROCEDURE std_insert(
	pname student2.name%TYPE,
	pkor student2.kor%TYPE,
	peng student2.eng%TYPE,
	pmath student2.math%TYPE
)
IS
BEGIN
	INSERT INTO student2 VALUES(
		(SELECT NVL(MAX(hakbun)+1,1) FROM student2),
		pname,pkor,peng,pmath);
END;
/
*/
/*
CREATE OR REPLACE PROCEDURE std_update(
	phakbun student2.hakbun%TYPE,
	pname student2.name%TYPE,
	pkor student2.kor%TYPE,
	peng student2.eng%TYPE,
	pmath student2.math%TYPE
)
IS
BEGIN
	UPDATE student2 SET
	name=pname,kor=pkor,eng=peng,math=pmath
	WHERE hakbun=phakbun;
	COMMIT;
END;
/
*/
/*
CREATE OR REPLACE PROCEDURE std_delete(
	phakbun student2.hakbun%TYPE
)
IS 
BEGIN
	DELETE FROM student2
	WHERE hakbun=phakbun;
	COMMIT;
END;
/
*/
/*
CREATE OR REPLACE PROCEDURE std_select(
	phakbun student2.hakbun%TYPE,
	pname OUT student2.name%TYPE,
	pkor OUT student2.kor%TYPE,
	peng OUT student2.eng%TYPE,
	pmath OUT student2.math%TYPE
	--OUT �տ��� �ڹٿ��� ���� ���� ���� �������
)
IS
BEGIN
	SELECT name,kor,eng,math INTO pname,pkor,peng,pmath
	FROM student2
	WHERE hakbun=phakbun;
END;
/
*/
--�ڹٿ��� pResult �� resultset���� ������ ��ü ���� �� ����  �� ����
CREATE OR REPLACE PROCEDURE std_selectAll(
	pResult OUT SYS_REFCURSOR
)
IS
BEGIN
	OPEN pResult FOR
	SELECT * FROM student2;
END;
/