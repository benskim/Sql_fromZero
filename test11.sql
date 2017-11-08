--2017.08.09 파일 업로드/다운로드
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
-- SEQUENCE : 자동 증가번호
/*
 생성 : CREATE SEQUENCE seq명
 삭제 : DROP SEQUENCE seq명
 속성 : start with => 시작 번호 start with 1 increment by 1
	increment by => 증가
	CACHE | NOCACHE => 미리 증가된 번호를 저장 주로 노케시 사용
	CYCLE | NOCYCLE => 반복 민부터 맥스 값까지
	MAXVALUE | MINVALUE =>거이 지정하지 않음 디폴트 값이 엄청 커서
*/
/*
CREATE SEQUENCE db_no_seq 
	start WITH 1 
	INCREMENT BY 1
	NOCACHE
	NOCYCLE;
*/
INSERT INTO databoard VALUES(db_no_seq.nextval,'홍길동','파일없음','파일이 없어요.','1234',SYSDATE,0,'',0);
INSERT INTO databoard VALUES(db_no_seq.nextval,'홍길동','파일없음','파일이 없어요.','1234',SYSDATE,0,'',0);
INSERT INTO databoard VALUES(db_no_seq.nextval,'홍길동','파일없음','파일이 없어요.','1234',SYSDATE,0,'',0);
COMMIT;
