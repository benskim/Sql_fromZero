--2017-08-02 RANKÇÔ¼ö
SELECT hakbun,name,kor,eng,math,(kor+eng+math) as total,
ROUND((kor+eng+math)/3,2) as avg,
DENSE_RANK() OVER(ORDER BY (kor+eng+math) DESC) rank
FROM student;