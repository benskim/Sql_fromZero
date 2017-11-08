--2017.08.17
/*
	17. �� �μ��� ��� �޿��� 2000 �̻��̸� �ʰ� �׷��� ������ �̸��� ����Ͻÿ�
*/
/*
SELECT deptno, CASE WHEN avg(sal)>=2000 THEN '�ʰ�'
		    WHEN avg(sal)<2000 THEN '�̸�'
		    END ��ձ޿�
FROM emp
GROUP BY deptno;
*/
/*
	18 ��� ���̺��� Ŀ�̼��� NULL�� �ƴ� ����� �μ���ġ CHICAGO�� ����� ���, �����, �μ���ġ�� ���
*/
/*
SELECT empno,ename,loc
FROM emp,dept
WHERE emp.deptno=dept.deptno
AND comm IS NOT NULL
AND loc='CHICAGO';
*/
/*
	19 ��� ����� ������ �μ����� ���
	=�μ��� NULL �̸� ���߷�
	=�μ����� ���
*/
/*
INSERT INTO emp VALUES(8000,'TOM','MANAGER',7788,SYSDATE,3000,10,NULL);
COMMIT;
*/
/*
SELECT ename,CASE WHEN emp.deptno IS NULL THEN '���߷�'
		  WHEN emp.deptno IS NOT NULL THEN dept.dname
		END dname
FROM emp,dept
WHERE emp.deptno=dept.deptno(+);
*/
/*
	20. 20�� �μ����� �ٹ��ϴ� ����� ���,�̸�,�Ŵ������,�Ŵ����� �� ����Ͻÿ�
	    ���
	= SELF JOIN
*/
/*
SELECT e1.empno,e1.ename,e2.empno,e2.ename
FROM emp e1,emp e2
WHERE e1.mgr=e2.empno
AND e1.deptno=20;
*/
/*
	22. ������ CLERK�̰ų�MANAGER => IN
*/
/*
SELECT empno,ename FROM emp
WHERE job IN('CLERK','MANAGER');
*/
/*
	23. ����̸� �� 1���� *�ڿ� 2���� ex) SCOTT => S*OT
	SUBSTR, RPAD, CONCAT
*/
/*
SELECT ename, SUBSTR(REPLACE(ename,SUBSTR(ename,2,1),'*'),1,4) "�����"
FROM emp;
*/
/*
SELECT ename, CONCAT(RPAD(SUBSTR(ename,1,1),2,'*'),SUBSTR(ename,3,2)) "�����"
FROM emp;
*/
/*
	24. emp���̺��� �μ��ο��� 4���� ���� �μ��� �μ���ȣ,�ο���,�޿��� ����� ��
*/
/*
SELECT deptno,COUNT(*),SUM(sal) FROM emp
GROUP BY deptno
HAVING COUNT(*)>4;
*/
/*
	25. �� �μ����� ������� ���
		=�μ��� ������� ������ ��� emp => 40 dept => 40
		=�������� deptno
*/
SELECT dept.deptno,dname,count(emp.empno)
FROM emp,dept
WHERE emp.deptno(+)=dept.deptno
GROUP BY dept.deptno,dname
ORDER BY dept.deptno ASC;