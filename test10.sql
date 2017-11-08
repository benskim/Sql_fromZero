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
INSERT INTO diary VALUES(1,'aaa','4�ÿ� ����Ŭ ����..���� 2��',2017,8,8,SYSDATE);
INSERT INTO diary VALUES(2,'aaa','���̺� ������',2017,8,9,SYSDATE);
INSERT INTO diary VALUES(3,'aaa','jsp ����',2017,8,10,SYSDATE);
INSERT INTO diary VALUES(4,'aaa','��Ÿ�� ����ϳ�',2017,8,11,SYSDATE);
INSERT INTO diary VALUES(5,'aaa','�Ҳ��� �Ͽ���..',2017,8,12,SYSDATE);
COMMIT;