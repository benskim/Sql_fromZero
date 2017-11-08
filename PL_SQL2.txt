--2017.09.20 PL/SQL
--제어문 조건문(if,if-else,다중이프),반복문(while,for,loop
/*
IF
형식
    IF 	조건문 THEN
	처리문
    END IF:
===========================
    IF (deptno=10) THEN   <===== 같다 표시가 == 이 아니고 괄호를 생략해도 상관이 없음
	dname:='영업부';
    END IF;
===========================
    IF (조건문) THEN
	처리문
    ELSE
	처리문
    END IF;
===========================
    IF (deptno=10) THEN
	dname:='영업부';
    ELSIF (조건) THEN  <====== ELSEIF 가 아니고 ELSIF
	처리문
    ELSIF (조건) THEN
	처리문
    END IF;
*/
/*
DECLARE
	vdeptno emp.deptno%TYPE;
	vename emp.ename%TYPE;
	vjob emp.job%TYPE;
	vdname dept.dname%TYPE;
BEGIN
	SELECT ename,job,deptno INTO vename,vjob,vdeptno
	FROM emp
	WHERE empno=7788;
	IF vdeptno=10 THEN
		vdname:='영업부';
	END IF;
	IF vdeptno=20 THEN
		vdname:='기획부';
	END IF;
	IF vdeptno=30 THEN
		vdname:='개발부';
	END IF;
	
	DBMS_OUTPUT.PUT_LINE('이름:'||vename);
	DBMS_OUTPUT.PUT_LINE('직위:'||vjob);
	DBMS_OUTPUT.PUT_LINE('qntjaud:'||vdname);
END;
/
DECLARE
	vdeptno emp.deptno%TYPE;
	vename emp.ename%TYPE;
	vjob emp.job%TYPE;
	vdname dept.dname%TYPE;
BEGIN
	SELECT ename,job,deptno INTO vename,vjob,vdeptno
	FROM emp
	WHERE empno=7788;
	IF vdeptno=10 THEN
		vdname:='영업부';
	ELSIF vdeptno=20 THEN
		vdname:='기획부';
	ELSIF vdeptno=30 THEN
		vdname:='개발부';
	END IF;
	
	DBMS_OUTPUT.PUT_LINE('이름:'||vename);
	DBMS_OUTPUT.PUT_LINE('직위:'||vjob);
	DBMS_OUTPUT.PUT_LINE('qntjaud:'||vdname);
END;
/
*/
---------------------------------
DECLARE
	vename emp.ename%TYPE;
	vcomm emp.comm%TYPE;
	vsal emp.sal%TYPE;
BEGIN
	SELECT ename,comm,sal INTO vename,vcomm,vsal
	FROM emp
	WHERE empno=7654;

	IF vcomm>0 THEN
	DBMS_OUTPUT.PUT_LINE(vename||'님의 성과급은'||vcomm||'이고 급여는'||vsal||'입니다.');
	ELSE
	DBMS_OUTPUT.PUT_LINE(vename||'님의 성과급은 없고 급여는'||vsal||'입니다.');
	END IF;
END;
/