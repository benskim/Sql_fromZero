--2017-07-26 DDL
/*
�������� : ���ϴ� �����͸� �����ϱ� ���� ����
(����ȭ�� ������)
= NOT NULL : NULL ���X (�ݵ�� �Է°� �����ؾ���)
= UNIQUE : �ߺ� ���X, NULL���� ���
= PRIMARY KEY : NOT NULL + UNIQUE (����)
= FOREIGN KEY : �ܷ�Ű (�ٸ� ���̺��� �����͸� ����)
= CHECK	: ������ �����͸� ����� �� �ְ� �����.
= DEFAULT : �������� ����

�Խ��� 
 �Խù� ��ȣ : PRIMARY KEY
 �̸� : NOT NULL
 ���� : NOT NULL
 ���� :
 ��й�ȣ : NOT NULL
 ��ȸ�� : DEFAULT 0
 ����� : DEFAULT SYSDATE

���
 ��۹�ȣ : PRIMARY KEY
 �Խù� ��ȣ : FOREIGN KEY
 ID : NOT NULL
 MSG : NOT NULL
 ����� : DEFAULT SYSDATE

�Խñ��� ����� �Ǹ� �����ϰ� �մ� ��� ���� ���� �� �Խñ��� �����ؾ��Ѵ�. 
���鶧�� �ݴ��� ����

& ' =����=> & => ^, '=>" "  replace("&","^"), replace("'"," ")

��ȭ ������ȣ : mno NUMBER PRIMARY KEY
��ȭ���� : title VARCHAR2(100) NOT NULL
��ȭ ������ : poster VARCHAR2(260) NOT NULL
�帣 : genre VARCHAR2(50)
������ : regdate VARCHAR2(20) NOT NULL
���� : director VARCHAR2(100) NOT NULL
�⿬ : actor VARCHAR2(500) NOT NULL
��� : grade VARCHAR2(30)
�������� : showUser NUMBER
�ٰŸ� : story CLOB NOT NULL
*/
/*
CREATE TABLE movie(
	mno NUMBER PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	poster VARCHAR2(260) NOT NULL,
	genre VARCHAR2(50),
	regdate VARCHAR2(20) NOT NULL,
	director VARCHAR2(100) NOT NULL,
	actor VARCHAR2(500) NOT NULL,
	grade VARCHAR2(30),
	showUser NUMBER,
	story CLOB NOT NULL
);
*/
CREATE TABLE melon(
	musicno NUMBER PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	singer VARCHAR2(100) NOT NULL,
	image VARCHAR2(260) NOT NULL,
	ilike NUMBER NOT NULL,
	album VARCHAR2(100) NOT NULL
);
















