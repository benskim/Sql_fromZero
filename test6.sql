--2017-07-28 DDL(VIEW)
/*
�� (View)
=> �ϳ��̻��� ���̺��� �����Ͽ� �����͸� �����ϰ� �ִ°��� �ƴ϶� sql���� �����ϰ� �ִ� ����
(�����Ͱ� �������� �۱� ������ ���� ����)
=> ������ SQL������ �ܼ�ȭ ��ų �� �ִ�.
���� ����
 1) �ܼ��� : ���̺� 1���� ���� (DML ����)
 2) ���պ� : ���̺� 2���̻� ����(JOIN,SUBQUERY)
    DML�� ����� �� ����.
 ==============================================
 3) �ζ��κ� : ���̺� ��� select~
 ==============================================
 4) OPTION (DML���)
   WITH CHECK OPTION
   WITH READ ONLY
 �����
 1) �ܼ��� ����
	CREATE VIEW view_name AS
	SELECT ~ ===> �����Ϸ��� ���� ���̺��� ����ؾ��ϹǷ� ����
 	CREATE OR REPLACE VIEW view_name AS 
	SELECT ~ ==>ALTER ������μ����ص� ������ֹǷ� ��
	==>���� : DROP VIEW view_name;
 2) ���պ� ����
 	=> JOIN
	JOIN
 	  = INNER JOIN
	    1. EQUI_JOIN (=) emp.deptno=dept,deptno
		===================
		= NATURAL JOIN	<= �ݵ�� ���� �÷����� ���� : ���� �÷��� �˾Ƽ� ã�ƿ��� ������ ������ �ʿ����� �ʴ�.
		= JOIN-USING	<= �ݵ�� ���� �÷����� ���� : ���� �÷��� �˾Ƽ� ã�ƿ��� ������ ������ �ʿ����� �ʴ�.
		=================== 
		= Oracle JOIN => emp.deptno=dept.deptno
 		= ANSI JOIN => emp JOIN dept ON emp.deptno=dept.deptno
	    2. NON-EQUE_JOIN (=�� �ƴ� �ٸ� ������)
	  = OUTER JOIN
	    1. LEFT OUTER JOIN
	    2. RIGTHE OUTER JOIN
 	    3. FULL OUTER JOIN
	  = SELF JOIN  => mgr=empno �����Ͱ��� ���ƾߵ� �÷����� �޶� ��
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
SELECT e1.ename "����",e2.ename "���"
FROM emp e1,emp e2
WHERE e1.mgr=e2.empno;
*/
/* 
--view �ؿ� ���� sql ���� �������� �ҷ����Ƿ� ����.(���պ�)
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
-- WITH READ ONLY �� ���̸� �信�� DDL �� �Ұ����ϰ� �� DEFAULT ���� WITH CHECK OPTION �̹Ƿ� ��������
INSERT INTO dept_view VALUES(50,'����','���ߺ�');
--�信�� �μ�Ʈ�ص� ���̺� �߰��� �ȴ� ���� �ؾ���
*/
/*
SELECT empno,ename,sal,rownum
FROM emp
WHERE rownum>=1 AND rownum<=10;
*/
-- emp => empno,ename,sal => �޿��� ���� ������ 5�� ��� (�ζ��κ�)TOP-N
SELECT empno,ename,sal,rownum
FROM (SELECT empno,ename,sal FROM emp ORDER BY sal DESC)
WHERE rownum<=5;