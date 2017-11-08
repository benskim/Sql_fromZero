-- 2017.07.27 DDL(Table)
/*
회원가입
id => VARCHAR2	PK
pwd => VARCHAR2	NOT NULL
name => VARCHAR2  NOT NULL
sex => VARCHAR2  CHECK
birthday => VARCHAR2  NOT NULL
email => VARCHAR2  UNIQUE
post => VARCHAR2 000-000  NOT NULL
addr1 => VARCHAR2  NOT NULL
addr2 => VARCHAR2  
tel => VARCHAR2 010-0013-1231  UNIQUE
content => CLOB  
regdate => DATE DEFAULT (SYSDATE)
*/
/*
CREATE TABLE member(
	id VARCHAR2(20),
	pwd VARCHAR2(10) CONSTRAINT member_pwd_nn NOT NULL,
	name VARCHAR2(30)  CONSTRAINT member_name_nn NOT NULL,
	sex VARCHAR2(4),
	birthday VARCHAR2(10) CONSTRAINT member_day_nn NOT NULL,
	email VARCHAR2(50),
	post VARCHAR2(7) CONSTRAINT member_post_nn NOT NULL,
	addr1 VARCHAR2(200) CONSTRAINT member_addr1_nn NOT NULL,
	addr2 VARCHAR2(200),
	tel VARCHAR2(13),
	content CLOB,
	regdate DATE DEFAULT SYSDATE,
	CONSTRAINT member_id_pk PRIMARY KEY(id),
	CONSTRAINT member_sex_ck CHECK(sex IN('남자','여자')),
	CONSTRAINT member_email_uk UNIQUE(email),
	CONSTRAINT member_tel_uk UNIQUE(tel)
);
*/
/*
--댓글형 게시판
no NUMBER PK
name VARCHAR2(34) NN
subject VARCHAR2(1000) NN
content CLOB NN
pwd VARCHAR2(10) NN
hit DEFAULT 0
regdate DEFAULT SYSDATE
댓글
no NUMBER PK
board_no NUMBER FK
id VARCHAR(20) NN
msg VARCHAR2(4000) NN
regdate DEFALULT SYSDATE
*/
/*
CREATE TABLE board(
no NUMBER,
name VARCHAR2(34) CONSTRAINT board_name_nn NOT NULL,
subject VARCHAR2(1000) CONSTRAINT board_subject_nn NOT NULL,
content CLOB CONSTRAINT board_content_nn NOT NULL,
pwd VARCHAR2(10) CONSTRAINT board_pwd_nn NOT NULL,
hit NUMBER DEFAULT 0,
regdate DATE DEFAULT SYSDATE,
CONSTRAINT board_no_pk PRIMARY KEY(no)
);
*/
CREATE TABLE reply(
no NUMBER,
board_no NUMBER,
id VARCHAR(20) CONSTRAINT reply_id_nn NOT NULL,
msg VARCHAR2(4000) CONSTRAINT reply_msg_nn NOT NULL,
regdate DATE DEFAULT SYSDATE,
CONSTRAINT reply_no_pk PRIMARY KEY(no),
CONSTRAINT reply_board_no_fk FOREIGN KEY(board_no)
REFERENCES board(no)
);