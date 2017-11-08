--2017-07-28 DDL(VIEW)
/*
뷰 (View)
=> 하나이상의 테이블을 참조하여 데이터를 저장하고 있는것이 아니라 sql문을 저장하고 있는 형태
(데이터가 존재하지 앟기 때문에 보안 좋다)
=> 복잡한 SQL문장을 단순화 시킬 수 있다.
뷰의 종류
 1) 단순뷰 : 테이블 1개만 참조 (DML 가능)
 2) 복합뷰 : 테이블 2개이상 참조(JOIN,SUBQUERY)
    DML을 사용할 수 없다.
 ==============================================
 3) 인라인뷰 : 테이블 대신 select~
 ==============================================
 4) OPTION (DML사용)
   WITH CHECK OPTION
   WITH READ ONLY
 뷰생성
 1) 단순뷰 생성
	CREATE VIEW view_name AS
	SELECT ~ ===> 수정하려면 기존 테이블을 드롭해야하므로 불편
 	CREATE OR REPLACE VIEW view_name AS 
	SELECT ~ ==>ALTER 마음대로수정해도 덮어써주므로 편리
	==>삭제 : DROP VIEW view_name;
 2) 복합뷰 생성
 	=> JOIN
	JOIN
 	  = INNER JOIN
	    1. EQUI_JOIN (=) emp.deptno=dept,deptno
		===================
		= NATURAL JOIN	<= 반드시 같은 컬럼명이 존재 : 같은 컬럼을 알아서 찾아오기 때문에 조건이 필요하지 않다.
		= JOIN-USING	<= 반드시 같은 컬럼명이 존재 : 같은 컬럼을 알아서 찾아오기 때문에 조건이 필요하지 않다.
		=================== 
		= Oracle JOIN => emp.deptno=dept.deptno
 		= ANSI JOIN => emp JOIN dept ON emp.deptno=dept.deptno
	    2. NON-EQUE_JOIN (=이 아닌 다른 연산자)
	  = OUTER JOIN
	    1. LEFT OUTER JOIN
	    2. RIGTHE OUTER JOIN
 	    3. FULL OUTER JOIN
	  = SELF JOIN  => mgr=empno 데이터값이 같아야됨 컬럼명은 달라도 됨
*/
--CREATE OR REPLACE VIEW emp_view AS SELECT * FROM emp;
--DROP VIEW emp_view;
/*
--NON_EQUE_JOIN
SELECT empno,ename,job,hiredate,sal,grade
FROM emp,salgrade
WHERE sal BETWEEN losal AND hisal;
*/
--WHERE sal>=losal AND sal<=hisal;
/*
SELECT e1.ename "본인",e2.ename "사수"
FROM emp e1,emp e2
WHERE e1.mgr=e2.empno;
*/
/* 
--view 밑에 하위 sql 문을 저자한후 불러오므로 편리함.(복합뷰)
CREATE OR REPLACE VIEW emp_dept
AS
SELECT empno,ename,job,hiredate,sal,dname,loc,grade
FROM emp,dept,salgrade
WHERE emp.deptno = dept.deptno
AND sal BETWEEN losal AND hisal;
*/
/*
CREATE OR REPLACE VIEW dept_view
AS
SELECT * FROM dept WITH READ ONLY;
-- WITH READ ONLY 를 붙이면 뷰에서 DDL 이 불가능하게 함 DEFAULT 값은 WITH CHECK OPTION 이므로 수정가능
INSERT INTO dept_view VALUES(50,'서울','개발부');
--뷰에서 인서트해도 테이블에 추가가 된다 주의 해야함
*/
/*
SELECT empno,ename,sal,rownum
FROM emp
WHERE rownum>=1 AND rownum<=10;
*/
-- emp => empno,ename,sal => 급여가 많은 순으로 5명만 출력 (인라인뷰)TOP-N
SELECT empno,ename,sal,rownum
FROM (SELECT empno,ename,sal FROM emp ORDER BY sal DESC)
WHERE rownum<=5;