/*
	PK, NN, NN, CHECK
CREATE TABLE 판매전표(
	전표번호 VARCHAR2(12),
	판매일자 DATE,
	고객명 VARCHAR2(34),
	총액 NUMBER	
);
CREATE TABLE 제품(
	제품번호 VARCHAR2(12),
	제품명 VARCHAR2(50),
	제품단가 NUMBER	
);
CREATE TABLE 전표상세(
	전표번호 VARCHAR2(12),
	제품번호 VARCHAR2(12),
	수량 NUMBER,
	단가 NUMBER,
	금액 NUMBER
);
*/
/*
ALTER TABLE 판매전표 ADD CONSTRAINT 판매전표_전표번호_pk PRIMARY KEY(전표번호);
ALTER TABLE 판매전표 ADD CONSTRAINT 판매전표_총액_ch CHECK(총액>0);
ALTER TABLE 판매전표 MODIFY 판매일자 CONSTRAINT 판매전표_판매일자_nn NOT NULL;
ALTER TABLE 판매전표 MODIFY 고객명 CONSTRAINT 판매전표_고객명_nn NOT NULL;
*/
/*
ALTER TABLE 제품 ADD CONSTRAINT 제품_제품번호_pk PRIMARY KEY(제품번호);
ALTER TABLE 제품 ADD CONSTRAINT 제품_제품단가_ck CHECK(제품단가>0);
ALTER TABLE 제품 MODIFY 제품명 CONSTRAINT 제품_제품명_nn NOT NULL;
*/
/*
ALTER TABLE 전표상세 ADD CONSTRAINT 전표상세_전표번호_pk PRIMARY KEY(전표번호);
ALTER TABLE 전표상세 ADD CONSTRAINT 전표상세_금액_ch CHECK(금액);
ALTER TABLE 전표상세 MODIFY 수량 CONSTRAINT 전표상세_수량_nn NOT NULL;
ALTER TABLE 전표상세 MODIFY 단가 CONSTRAINT 전표상세_단가_nn NOT NULL;
ALTER TABLE 전표상세 ADD CONSTRAINT 전표상세_전표번호_fk FOREIGN KEY(전표번호)
REFERENCES 판매전표(전표번호);
ALTER TABLE 전표상세 ADD CONSTRAINT 전표상세_제품번호_fk FOREIGN KEY(전표번호)
REFERENCES 제품(제품번호);
*/
/*
--제약 조건 삭제
ALTER TABLE 전표상세 DROP CONSTRAINT 전표상세_전표번호_fk;
ALTER TABLE 전표상세 DROP CONSTRAINT 전표상세_제품번호_fk;
*/
ALTER TABLE 전표상세 ADD CONSTRAINT 전표상세_전표번호_fk FOREIGN KEY(전표번호)
REFERENCES 판매전표(전표번호);
ALTER TABLE 전표상세 ADD CONSTRAINT 전표상세_제품번호_fk FOREIGN KEY(전표번호)
REFERENCES 제품(제품번호);


