--2017.08.21 PL/SQL
/*
	PROCEDURE : 기느을 수행하는 함수의 일종 (리턴형이 없음)
	1) 변수 선언
		-입력(생략)  	IN 	(Call By VALUE)
		-출력		OUT	(Call By Reference)
		-입출력		INOUT	(Call By VALUE, Call By Reference)
		SELECT empno,ename FROM emp
		WHERE empno=7788;
		=> (INOUT empno, OUT ename) ==>ename*
		생성
		CREATE PROCEDURE pro_name(aoroqustn)
		IS 
		  지역변수	
		BEGIN
		  구현
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
	--OUT 앞에는 자바에서 받을 변수 명을 써줘야함
)
IS
BEGIN
	SELECT name,kor,eng,math INTO pname,pkor,peng,pmath
	FROM student2
	WHERE hakbun=phakbun;
END;
/
*/
--자바에서 pResult 를 resultset으로 받으면 전체 값을 다 받을  수 있음
CREATE OR REPLACE PROCEDURE std_selectAll(
	pResult OUT SYS_REFCURSOR
)
IS
BEGIN
	OPEN pResult FOR
	SELECT * FROM student2;
END;
/