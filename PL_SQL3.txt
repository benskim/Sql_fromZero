-- 2017.09.21 PL/SPL
/*
	==> PL/SQL의 장점
	   1) 보안이 뛰어남
	   2) 반복을 제거
	   3) 속도가 빠르다(캐쉬메모리에 저장)
	   4) 내가 지우기 전까지 기록이 남아 잇음
	   5) 프로시져. 함수. 트리거
	      ==============
		관련된 묶어서 사용(패키지)
		*프로시져와 함수의 차이점(리턴의 유무) => substr
		  프로시져 : 기능처리(일반 호출) => CALL 프로시져명()
		  함수 : 값 ... => SELECT empMax().....WHERE
	PL/SQL
	1) 변수 선언
	   =스칼라(오라클일반변수) : 변수명 데이터형(NUMBER,VARCHAR2)
 	   =%TYPE => 기존의 테이블에서 정의된 데이터를 가지고 온다.
			vename emp.ename%TYPE ==> vename VARCHAR2(20)
			      ==========
	   =%ROWTYPE => 한개의 테이블 전체 데이터형을 읽어 올때
			vemp emp%ROWTYPE ==> vemp(empno,ename,....)
	   =RECORD => 사용자 정의 데이터 (필요한 데이터만 모아서 사용)
			TYPE record명 IS RECORD ==> 자바 (VO)
			(
				ename, sal, dname, loc
			)
	   =CURSOR => 여러개의 ROW를 받아서 처리(ResultSet...)
	2) 제어문
	   =조건문(IF, IF-ELSE, IF ~ ELSIF ~ ELSE)
	   =반복문(FOR, WHILE, LOOP)
	   *****데이터를 읽어올때
		SELECT ~~ INTO (데이터를 변수로 받는다.)
	3) 형식
	   선언부
	    => 변수선언
 	   구현부
	    => 구현
	   예외처리부
	    => 종료하지 않은 프로그램
	
	   이름 / 익명
	   이름
	     CREATE PROCEDURE pro_name(매개변수...)
	     IS 
   		변수선언
	     BEGIN
		구현
	     END;
	     / 

	     CREATE FUNCTION func_name(매개변수...): RETURN 데이터형
	     IS 
   		변수선언
	     BEGIN
		구현
		RETURN (값)
	     END;
	     / 

	     CREATE TRIGGER tri_name
	     IS
		변수선언
	     BEGIN
		구현
	     END;
	     /

	     DECLAE
		변수
	     BEGIN
		구현
	     END;
	     /

	    CURSOR => LIST
	    사용법
		1) CURSOR 선언
		   CURSOR cur_name IS
	  	   SELECT = FROM emp;
		2) CURSOR 연다
	  	   OPEN cur_name;
		3) 인출
		   PETCH cur_name; <=한줄만 읽을수 있음
		    **** cursor의 상태
		    %NOTFOUND : 종료 : rs.next() 데이터가 없을때까지 읽어라 (****) => 없다(false)
		    %FOUND : 찾앗냐 안찾앗냐
		    %ISOPEN : 커서를 열엿냐
		    %ROWCOUNT : 총 몇개를 읽었냐 (****)
		4) CLOSE cur_name;   <= rs.close()
*/
/*
SET SERVEROUTPUT ON;
DECLARE
	vempno emp.empno%TYPE;
	vename emp.ename%TYPE;
	vjob emp.job%TYPE;
	CURSOR emp_cur IS 
	 SELECT empno,ename,job FROM emp;
	 --SELECT * FROM emp; => vemp emp%ROWTYPE
	 --SELECT ~ FROM emp,dept; => RECORD
BEGIN
	OPEN emp_cur;
	LOOP
	 --while(true)
	 FETCH emp_cur INTO vempno,vename,vjob;
	 EXIT WHEN emp_cur%NOTFOUND;
	 DBMS_OUTPUT.PUT_LINE(vempno||' '||vename||' '||vjob);
	END LOOP;
END;
/
*/
/*
	FOR 문
	FOR 변수 IN 1..9 LOOP <=for(int i=1;i<=9;i++)
  	  DBMS_OUTPUT.PUT_LINE(i)
	END LOOP
*/
/*
DECLARE
	vemp emp%ROWTYPE;
	CURSOR emp_cur IS
	 SELECT * FROM emp;
BEGIN
	--for(EmpVO vo:list)
	FOR vemp IN emp_cur LOOP
	EXIT WHEN emp_cur%NOTFOUND;
	DBMS_OUTPUT.PUT_LINE(vemp.empno||' '||vemp.ename||' '||vemp.job);
	END LOOP;	
END;
/
*/
DECLARE
/*
class EmpDeptVO{
	int empno;
	String ename;
	...
	...
	FOR 변수 IN 1..9 LOOP <=for(int i=1;i<=9;i++)
	FOR 변수 IN CURSOR LOOP for(EmpVO vo:list)
}
*/
	TYPE emp_dept is RECORD
	(
		empno emp.empno%TYPE,
		ename emp.ename%TYPE,
		job emp.job%TYPE
		hiredate dept.hiredate%TYPE,
		dname dept.dname%TYPE,
		loc dept.loc%TYPE,
		grade salgrade.grade%TYPE
	);
	ed emp_dept; --EmpDeptVO vo;
	CURSOR emp_cur IS
		SELECT empno,ename,job,hiredate,dname,loc,grade
	FROM emp,dept
	WHERE emp.deptno=dept.deptno;
	AND sal BETWEEN losal AND hisal;
BEGIN
	FOR ed IN emp_cur LOOP
		EXIT WHEN emp_cur%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(ed.empno||' '||ed.ename||' '||ed.dname||' '||ed.loc||' '||ed.grade);
	END LOOP;
END;
/