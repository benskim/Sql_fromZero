--2017.08.28 ��ȭ����
/*
   ��ȭ����
      ��ȭ��ȣ
      ��ȭ��
      ������
      ����
      �⿬
      �帣
      ���
      ����ũ(��)
      ������
      �����ȣ����
      
   ��������
      �����ȣ
      �����
      ��ġ
      ���ų�¥����
      
   ��¥����
      ��¥��ȣ
      �ð���������
   �ð�����
      �ð���ȣ
      �ð�
*/
/*
DROP TABLE movie_info;
DROP TABLE theater_info;
DROP TABLE date_info;
DROP TABLE time_info;

CREATE TABLE movie_info(
   mno NUMBER,
   title VARCHAR2(200) CONSTRAINT mi_title_nn NOT NULL,
   poster VARCHAR2(260) CONSTRAINT mi_poster_nn NOT NULL,
   director VARCHAR2(100) CONSTRAINT mi_director_nn NOT NULL,
   actor VARCHAR2(100) CONSTRAINT mi_actor_nn NOT NULL,
   genre VARCHAR2(100) CONSTRAINT mi_genre_nn NOT NULL,
   grade VARCHAR2(100) CONSTRAINT mi_grade_nn NOT NULL,
   mlike NUMBER,
   regdate VARCHAR2(20) CONSTRAINT mi_regdate_nn NOT NULL,
   theater_no VARCHAR2(100),
   CONSTRAINT mi_mno_pk PRIMARY KEY(mno)
);
CREATE TABLE theater_info(
   tno NUMBER,
   tname VARCHAR2(100) CONSTRAINT mi_tname_nn NOT NULL,
   loc VARCHAR2(100) CONSTRAINT mi_loc_nn NOT NULL,
   date_no VARCHAR2(100),
   CONSTRAINT ti_tno_pk PRIMARY KEY(tno)
);
CREATE TABLE date_info(
   dno NUMBER,
   time_no VARCHAR2(100),
   CONSTRAINT di_dno_pk PRIMARY KEY(dno)
);
CREATE TABLE time_info(
   tno NUMBER,
   time VARCHAR2(20) CONSTRAINT ti_time_nn NOT NULL,
   CONSTRAINT time_pk PRIMARY KEY(tno)
);

INSERT INTO theater_info VALUES(1,'CGV','����','');
INSERT INTO theater_info VALUES(2,'CGV','��','');
INSERT INTO theater_info VALUES(3,'CGV','����','');
INSERT INTO theater_info VALUES(4,'CGV','����','');
INSERT INTO theater_info VALUES(5,'CGV','���','');
INSERT INTO theater_info VALUES(6,'CGV','����','');
INSERT INTO theater_info VALUES(7,'CGV','����','');
INSERT INTO theater_info VALUES(8,'CGV','¥��','');
INSERT INTO theater_info VALUES(9,'�Ե��ó׸�','�','');
INSERT INTO theater_info VALUES(10,'�Ե��ó׸�','����','');
INSERT INTO theater_info VALUES(11,'�Ե��ó׸�','���ȸ�','');
INSERT INTO theater_info VALUES(12,'�Ե��ó׸�','�Ѿ�','');
INSERT INTO theater_info VALUES(13,'�Ե��ó׸�','����','');
INSERT INTO theater_info VALUES(14,'�ް��ڽ�','���빮','');
INSERT INTO theater_info VALUES(15,'�ް��ڽ�','���빮','');
INSERT INTO theater_info VALUES(16,'�ް��ڽ�','���빮','');
INSERT INTO theater_info VALUES(17,'�ް��ڽ�','�ϴ빮','');
INSERT INTO theater_info VALUES(18,'���ѱ���','���','');
INSERT INTO theater_info VALUES(19,'���ѱ���','���','');
INSERT INTO theater_info VALUES(20,'�ް��ڽ�','����','');
COMMIT;
*/
--20170831 ����
/*
CREATE TABLE movie_reserve(
	no NUMBER,
	id VARCHAR2(20) CONSTRAINT mr_id_nn NOT NULL,
	title VARCHAR2(200) CONSTRAINT mr_title_nn NOT NULL,
 	theater VARCHAR2(100) CONSTRAINT mr_theater_nn NOT NULL,
	resday VARCHAR2(20) CONSTRAINT mr_resday_nn NOT NULL,
	restime VARCHAR2(20) CONSTRAINT mr_restime_nn NOT NULL,
	inwon VARCHAR2(20) CONSTRAINT mr_iwon_nn NOT NULL,
	price VARCHAR2(100) CONSTRAINT mr_price_nn NOT NULL,
	regdate DATE DEFAULT SYSDATE,
	reserve NUMBER(1) DEFAULT 0,
	CONSTRAINT mr_no_pk PRIMARY KEY(no),
	CONSTRAINT mr_id_fk FOREIGN KEY(id)
	REFERENCES member(id)
);
CREATE SEQUENCE mr_no_seq
		START WITH 1
		INCREMENT BY 1
		NOCYCLE
		NOCACHE;
*/


