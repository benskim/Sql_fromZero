--2017-08-03 REQUEST/RESPONSE = Freeboard
CREATE TABLE freeboard(
	no NUMBER,
	name VARCHAR2(34) CONSTRAINT fb_name_nn NOT NULL,
	subject VARCHAR2(4000) CONSTRAINT fb_subject_nn NOT NULL,
	content CLOB CONSTRAINT fb_content_nn NOT NULL,
	pwd VARCHAR2(10) CONSTRAINT fb_pwd_nn NOT NULL,
	regdate DATE DEFAULT SYSDATE,
	hit NUMBER DEFAULT 0,
	CONSTRAINT fb_no_pk PRIMARY KEY(no)
);
INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');

INSERT INTO freeboard(no,name,subject,content,pwd)
VALUES((SELECT NVL(MAX(no)+1,1) FROM freeboard),'홍길동','jsp 일반 게시판 만들기','Request.Response사용법','1234');
COMMIT;