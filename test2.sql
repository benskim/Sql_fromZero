--2017-07-26 DDL
/*
제약조건 : 원하는 데이터만 저장하기 위한 조건
(정형화된 데이터)
= NOT NULL : NULL 허용X (반드시 입력값 존재해야함)
= UNIQUE : 중복 허용X, NULL값을 허용
= PRIMARY KEY : NOT NULL + UNIQUE (숫자)
= FOREIGN KEY : 외래키 (다른 테이블의 데이터를 참조)
= CHECK	: 지정된 데이터만 사용할 수 있게 만든다.
= DEFAULT : 고정값을 지정

게시판 
 게시물 번호 : PRIMARY KEY
 이름 : NOT NULL
 제목 : NOT NULL
 내용 :
 비밀번호 : NOT NULL
 조회수 : DEFAULT 0
 등록일 : DEFAULT SYSDATE

댓글
 댓글번호 : PRIMARY KEY
 게시물 번호 : FOREIGN KEY
 ID : NOT NULL
 MSG : NOT NULL
 등록일 : DEFAULT SYSDATE

게시글을 지우게 되면 참조하고 잇는 댓글 먼저 지운 후 게시글을 삭제해야한다. 
만들때와 반대의 순서

& ' =변경=> & => ^, '=>" "  replace("&","^"), replace("'"," ")

영화 고유번호 : mno NUMBER PRIMARY KEY
영화제목 : title VARCHAR2(100) NOT NULL
영화 포스터 : poster VARCHAR2(260) NOT NULL
장르 : genre VARCHAR2(50)
개봉일 : regdate VARCHAR2(20) NOT NULL
감독 : director VARCHAR2(100) NOT NULL
출연 : actor VARCHAR2(500) NOT NULL
등급 : grade VARCHAR2(30)
누적관객 : showUser NUMBER
줄거리 : story CLOB NOT NULL
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
















