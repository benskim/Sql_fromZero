--2017-08-08 Diary
/*
CREATE TABLE diary(
	no NUMBER,
	id VARCHAR2(20),
	msg CLOB CONSTRAINT diary_msg_nn NOT NULL,
	year NUMBER,
	month NUMBER,
	day NUMBER,
	regdate DATE DEFAULT SYSDATE,
	CONSTRAINT diary_no_pk PRIMARY KEY(no),
	CONSTRAINT diary_id_fk FOREIGN KEY(id)
	REFERENCES member(id)
);
*/
INSERT INTO diary VALUES(1,'aaa','4시에 오라클 시험..정답 2번',2017,8,8,SYSDATE);
INSERT INTO diary VALUES(2,'aaa','테이블 마감일',2017,8,9,SYSDATE);
INSERT INTO diary VALUES(3,'aaa','jsp 정리',2017,8,10,SYSDATE);
INSERT INTO diary VALUES(4,'aaa','불타는 토요일날',2017,8,11,SYSDATE);
INSERT INTO diary VALUES(5,'aaa','불꺼진 일요일..',2017,8,12,SYSDATE);
COMMIT;