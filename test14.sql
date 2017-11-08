--2017.08.28 영화예매
/*
   영화정보
      영화번호
      영화명
      포스터
      감독
      출연
      장르
      등급
      라이크(찜)
      개봉일
      극장번호참조
      
   극장정보
      극장번호
      극장명
      위치
      예매날짜참조
      
   날짜정보
      날짜번호
      시간정보참조
   시간정보
      시간번호
      시간
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

INSERT INTO theater_info VALUES(1,'CGV','신촌','');
INSERT INTO theater_info VALUES(2,'CGV','목동','');
INSERT INTO theater_info VALUES(3,'CGV','부평','');
INSERT INTO theater_info VALUES(4,'CGV','마포','');
INSERT INTO theater_info VALUES(5,'CGV','사요','');
INSERT INTO theater_info VALUES(6,'CGV','나라','');
INSERT INTO theater_info VALUES(7,'CGV','바이','');
INSERT INTO theater_info VALUES(8,'CGV','짜이','');
INSERT INTO theater_info VALUES(9,'롯데시네마','찌엔','');
INSERT INTO theater_info VALUES(10,'롯데시네마','서면','');
INSERT INTO theater_info VALUES(11,'롯데시네마','광안리','');
INSERT INTO theater_info VALUES(12,'롯데시네마','한양','');
INSERT INTO theater_info VALUES(13,'롯데시네마','신촌','');
INSERT INTO theater_info VALUES(14,'메가박스','서대문','');
INSERT INTO theater_info VALUES(15,'메가박스','남대문','');
INSERT INTO theater_info VALUES(16,'메가박스','동대문','');
INSERT INTO theater_info VALUES(17,'메가박스','북대문','');
INSERT INTO theater_info VALUES(18,'대한극장','평양','');
INSERT INTO theater_info VALUES(19,'대한극장','담양','');
INSERT INTO theater_info VALUES(20,'메가박스','강남','');
COMMIT;
*/
--20170831 예매
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


