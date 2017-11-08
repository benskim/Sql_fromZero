--2017.07.28 DDL(VIEW)
/*
CREATE TABLE student(
	hakbun NUMBER,
	name VARCHAR2(34) CONSTRAINT std_name_nn NOT NULL,
	kor NUMBER,
	eng NUMBER,
	math NUMBER,
	CONSTRAINT std_hd_pk PRIMARY KEY(hakbun)
);
INSERT INTO student VALUES(1,'È«±æµ¿',100,70,95);
INSERT INTO student VALUES(2,'½ÉÃ»ÀÌ',75,85,100);
INSERT INTO student VALUES(3,'½ÉºÀ»ç',10,15,20);
*/
/*
CREATE OR REPLACE VIEW std_view(hakbun,name,kor,eng,math,total,avg)
AS
 SELECT hakbun,name,kor,eng,math,(kor+eng+math),ROUND((kor+eng+math)/3,2) FROM student;
SELECT * FROM std_view;
*/
/*
INSERT INTO student VALUES(4,'È«±æµ¿',70,85,93);
COMMIT;
SELECT * FROM std_view;
*/