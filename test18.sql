--2017.09.20 PL/SQL
--��� ���ǹ�(if,if-else,��������),�ݺ���(while,for,loop
/*
IF
����
    IF 	���ǹ� THEN
	ó����
    END IF:
===========================
    IF (deptno=10) THEN   <===== ���� ǥ�ð� == �� �ƴϰ� ��ȣ�� �����ص� ����� ����
	dname:='������';
    END IF;
===========================
    IF (���ǹ�) THEN
	ó����
    ELSE
	ó����
    END IF;
===========================
    IF (deptno=10) THEN
	dname:='������';
    ELSIF (����) THEN  <====== ELSEIF �� �ƴϰ� ELSIF
	ó����
    ELSIF (����) THEN
	ó����
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
		vdname:='������';
	END IF;
	IF vdeptno=20 THEN
		vdname:='��ȹ��';
	END IF;
	IF vdeptno=30 THEN
		vdname:='���ߺ�';
	END IF;
	
	DBMS_OUTPUT.PUT_LINE('�̸�:'||vename);
	DBMS_OUTPUT.PUT_LINE('����:'||vjob);
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
		vdname:='������';
	ELSIF vdeptno=20 THEN
		vdname:='��ȹ��';
	ELSIF vdeptno=30 THEN
		vdname:='���ߺ�';
	END IF;
	
	DBMS_OUTPUT.PUT_LINE('�̸�:'||vename);
	DBMS_OUTPUT.PUT_LINE('����:'||vjob);
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
	DBMS_OUTPUT.PUT_LINE(vename||'���� ��������'||vcomm||'�̰� �޿���'||vsal||'�Դϴ�.');
	ELSE
	DBMS_OUTPUT.PUT_LINE(vename||'���� �������� ���� �޿���'||vsal||'�Դϴ�.');
	END IF;
END;
/