--2017.08.17
/*
	17. 각 부서별 평균 급여가 2000 이상이면 초과 그렇지 않으면 미만을 출력하시오
*/
/*
SELECT deptno, CASE WHEN avg(sal)>=2000 THEN '초과'
		    WHEN avg(sal)<2000 THEN '미만'
		    END 평균급여
FROM emp
GROUP BY deptno;
*/
/*
	18 사원 테이블에서 커미션인 NULL이 아닌 사원중 부서위치 CHICAGO인 사원의 사번, 사원명, 부서위치를 출력
*/
/*
SELECT empno,ename,loc
FROM emp,dept
WHERE emp.deptno=dept.deptno
AND comm IS NOT NULL
AND loc='CHICAGO';
*/
/*
	19 모든 사원의 사원명과 부서명을 출력
	=부서가 NULL 이면 대기발령
	=부서명을 출력
*/
/*
INSERT INTO emp VALUES(8000,'TOM','MANAGER',7788,SYSDATE,3000,10,NULL);
COMMIT;
*/
/*
SELECT ename,CASE WHEN emp.deptno IS NULL THEN '대기발령'
		  WHEN emp.deptno IS NOT NULL THEN dept.dname
		END dname
FROM emp,dept
WHERE emp.deptno=dept.deptno(+);
*/
/*
	20. 20번 부서에서 근무하는 사원의 사번,이름,매니저사번,매니저명 을 출력하시오
	    출력
	= SELF JOIN
*/
/*
SELECT e1.empno,e1.ename,e2.empno,e2.ename
FROM emp e1,emp e2
WHERE e1.mgr=e2.empno
AND e1.deptno=20;
*/
/*
	22. 직업이 CLERK이거나MANAGER => IN
*/
/*
SELECT empno,ename FROM emp
WHERE job IN('CLERK','MANAGER');
*/
/*
	23. 사원이름 앞 1글자 *뒤에 2글자 ex) SCOTT => S*OT
	SUBSTR, RPAD, CONCAT
*/
/*
SELECT ename, SUBSTR(REPLACE(ename,SUBSTR(ename,2,1),'*'),1,4) "사원명"
FROM emp;
*/
/*
SELECT ename, CONCAT(RPAD(SUBSTR(ename,1,1),2,'*'),SUBSTR(ename,3,2)) "사원명"
FROM emp;
*/
/*
	24. emp테이블에서 부서인원이 4명보다 많은 부서의 부서번호,인원수,급여의 평균의 합
*/
/*
SELECT deptno,COUNT(*),SUM(sal) FROM emp
GROUP BY deptno
HAVING COUNT(*)>4;
*/
/*
	25. 각 부서별로 사원수를 출력
		=부서별 사원수가 없더라도 출력 emp => 40 dept => 40
		=오름차순 deptno
*/
SELECT dept.deptno,dname,count(emp.empno)
FROM emp,dept
WHERE emp.deptno(+)=dept.deptno
GROUP BY dept.deptno,dname
ORDER BY dept.deptno ASC;