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
변수 타입
1) 스칼라 변수 타입 	pno NUMBER
2) %TYPE		pno music.no%TYPE => 뮤직의no 타입을 가져와서 똑같이 지정해줌	||한두개 가져올때 편함
3) %ROWTYPE	=> pmusic music%ROWTYPE(no,title,singer,music)				||테이블 하나에서 여러개를 가져올때
4) RECORD 	=> RECORD (no.title) => 조인한걸 한번에 가져올때 쓰면 편함		||테이블이 섞여있는 곳에서 필요한 것 만 가져올때
5) CURSOR = ResultSet  => 자바에서 arraylist						||
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
1)선언부
   DECLARE 
   변수 선언
2)구현부
   BEGIN
     EXCEPTION 예외처리 종류
   END;
    /
3)예외처리부
   WHEN TOO MANY ROWS THEN => 여러개를받을수 있는 커서로 받아야 하는데 다른 타입으로 받았을경우
			   => 자바에서는 조건문에 없는 값이 들어갓을때 (결과 집합을 소모했음)
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
	DBMS_OUTPUT.PUT_LINE('사번:'||pempno);
	DBMS_OUTPUT.PUT_LINE('이름:'||pename);
	DBMS_OUTPUT.PUT_LINE('직위:'||pjob);
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
	DBMS_OUTPUT.PUT_LINE('사번:'||pemp.empno);
	DBMS_OUTPUT.PUT_LINE('이름:'||pemp.ename);
	DBMS_OUTPUT.PUT_LINE('직위:'||pemp.job);
	DBMS_OUTPUT.PUT_LINE('입사일:'||pemp.hiredate);
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
	DBMS_OUTPUT.PUT_LINE('사번:'||pemp.empno);
	DBMS_OUTPUT.PUT_LINE('이름:'||pemp.ename);
	DBMS_OUTPUT.PUT_LINE('직위:'||pemp.job);
	DBMS_OUTPUT.PUT_LINE('입사일:'||pemp.hiredate);
END;
/
*/
--RECORD
ACCEPT pno PROMPT '사번:';
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
  DBMS_OUTPUT.PUT_LINE('사번:'||ed.empno);
  DBMS_OUTPUT.PUT_LINE('이름:'||ed.ename);
  DBMS_OUTPUT.PUT_LINE('직위:'||ed.job);
  DBMS_OUTPUT.PUT_LINE('부서명:'||ed.dname);
  DBMS_OUTPUT.PUT_LINE('근무지:'||ed.loc);
END;
/






































