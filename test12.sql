-- 2017.08.14 답변형 게시판
/*
		=> ORDER BY group_id DESC,grou_step ASC
		        no  group_id   group_stemp   group_tab     root      depth
	AAAA	        1       2	0		0 	    0		2
	  =>BBBBB       2	2	1		1 	    1		1
	     =>CCCC     3	2	2		2	    2		0
	  =>yyyy	7	2	3		1	    1		0
	DDDD            4	1	0		0	    0		1
	  =>EEEEE       5	1	1		1	    4		1
	     =>KKKK     6	1	2		2	    5		0
	MMMMMM
	  =>
*/
/*
CREATE TABLE replyBoard(
	no NUMBER,
	name VARCHAR2(34) CONSTRAINT rb_name_nn NOT NULL,
	subject VARCHAR2(1000) CONSTRAINT rb_subject_nn NOT NULL,
	content CLOB CONSTRAINT rb_content_nn NOT NULL,
	pwd VARCHAR2(10) CONSTRAINT rb_pwd_nn NOT NULL,
	regdate DATE DEFAULT SYSDATE,
	hit number DEFAULT 0,
	group_id NUMBER,
	group_step NUMBER DEFAULT 0,
	group_tab NUMBER DEFAULT 0,
	root NUMBER DEFAULT 0,
	depth NUMBER DEFAULT 0,
	CONSTRAINT rb_no_pk PRIMARY KEY(no)
);
*/
*/
--SEQUENCES
CREATE SEQUENCE rb_no_seq
	START WITH 1
	INCREMENT BY 1
	NOCYCLE
	NOCACHE;
*/
/*
SELECT empno,ename,job,hiredate,rownum
FROM (SELECT empno,ename,job,hiredate FROM emp ORDER BY empno DESC);

SELECT empno,ename,job,hiredate,num
FROM (SELECT empno,ename,job,hiredate,rownum as num
FROM (SELECT empno,ename,job,hiredate FROM emp ORDER BY empno DESC))
WHERE num BETWEEN 11 AND 20;
*/
/*
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard));
*/
/*
	111  0
	111  1
	111  2
*/
--SELECT group_id FROM replyBoard;
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id,group_step,group_tab)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',222,1,1);
INSERT INTO replyBoard(no,name,subject,content,pwd,group_id,group_step,group_tab)
VALUES(rb_no_seq.nextval,'홍길동','답변형 게시판','인라인뷰..SQL조립','1234',222,2,2);
COMMIT;