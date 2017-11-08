--2017.08.09 ���� ���ε�/�ٿ�ε�
/*
CREATE TABLE dataBoard(
	no NUMBER,
	name VARCHAR2(34) CONSTRAINT db_name_nn NOT NULL,
	subject VARCHAR2(1000) CONSTRAINT db_subject_nn NOT NULL,
	content CLOB CONSTRAINT db_content_nn NOT NULL,
	pwd VARCHAR2(10) CONSTRAINT db_pwd_nn NOT NULL,
	regdate DATE DEFAULT SYSDATE,
	hit NUMBER DEFAULT 0,
	filename VARCHAR2(260),
	filesize NUMBER DEFAULT 0,
	CONSTRAINT db_no_pk PRIMARY KEY(no)
);
*/
-- SEQUENCE : �ڵ� ������ȣ
/*
 ���� : CREATE SEQUENCE seq��
 ���� : DROP SEQUENCE seq��
 �Ӽ� : start with => ���� ��ȣ start with 1 increment by 1
	increment by => ����
	CACHE | NOCACHE => �̸� ������ ��ȣ�� ���� �ַ� ���ɽ� ���
	CYCLE | NOCYCLE => �ݺ� �κ��� �ƽ� ������
	MAXVALUE | MINVALUE =>���� �������� ���� ����Ʈ ���� ��û Ŀ��
*/
/*
CREATE SEQUENCE db_no_seq 
	start WITH 1 
	INCREMENT BY 1
	NOCACHE
	NOCYCLE;
*/
INSERT INTO databoard VALUES(db_no_seq.nextval,'ȫ�浿','���Ͼ���','������ �����.','1234',SYSDATE,0,'',0);
INSERT INTO databoard VALUES(db_no_seq.nextval,'ȫ�浿','���Ͼ���','������ �����.','1234',SYSDATE,0,'',0);
INSERT INTO databoard VALUES(db_no_seq.nextval,'ȫ�浿','���Ͼ���','������ �����.','1234',SYSDATE,0,'',0);
COMMIT;
