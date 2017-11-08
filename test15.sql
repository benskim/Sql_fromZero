--2017.09.06 댓글형 개시판
/*
create table freeBoard(
no NUMBER,
name VARCHAR2(34) CONSTRAINT fb2_name_nn NOT NULL,
subject VARCHAR2(100) CONSTRAINT fb2_sub_nn NOT NULL,
content CLOB CONSTRAINT fb2_cont_nn NOT NULL,
pwd VARCHAR2(10) CONSTRAINT fb2_pwd_nn NOT NULL,
regdate DATE DEFAULT SYSDATE,
hit NUMBER DEFAULT 0,
CONSTRAINT fb2_no_pk PRIMARY KEY(no)
);
commit;
*/
/*
CREATE TABLE freeBoardReply(
   no NUMBER,
   bno NUMBER,
   id VARCHAR2(20) CONSTRAINT fbr_id_nn NOT NULL,
   name VARCHAR2(34) CONSTRAINT fbr_name_nn NOT NULL,
   msg VARCHAR2(4000) CONSTRAINT fbr_msg_nn NOT NULL,
   regdate DATE DEFAULT SYSDATE,
   group_id NUMBER,
   group_step NUMBER,
   group_tab NUMBER,
   root NUMBER,
   depth NUMBER,
   CONSTRAINT fbr_no_pk PRIMARY KEY(no),
   CONSTRAINT fbr_bno_fk FOREIGN KEY(bno)
   REFERENCES freeboard(no)
);
commit;
*/

INSERT INTO freeBoardReply VALUES(1,11,'hong','홍길동','댓글 처리 완료되엇습니다.',SYSDATE,1,0,0,0,1);
INSERT INTO freeBoardReply VALUES(2,11,'shim','심청이','댓글 처리 완료되엇습니다.',SYSDATE,1,1,1,1,0);
commit;
