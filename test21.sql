--2017.09.21
/*
NO
TITLE
SINGER
MUSIC
*/
CREATE OR REPLACE PROCEDURE music_insert(
	ptitle music.title%TYPE,
	psinger music.singer%TYPE,
	pmusic music.music%TYPE
)
IS
BEGIN
 	INSERT INTO music VALUES(
    		(SELECT NVL(MAX(no)+1,1) FROM music),ptitle,psinger,pmusic);
	COMMIT;
END;
/