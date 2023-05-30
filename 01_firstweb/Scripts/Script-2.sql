INSERT INTO MEMBER VALUES ('abcde','1234','아무개','M',25,'abcde@naver.com','01012345678','서울시 강남구','운동,등산,독서',DEFAULT);
INSERT INTO MEMBER VALUES ('qwerty','asdf','김말년','F',30,'qwerty@naver.com','01098765432','서울시 관악구','운동,등산',DEFAULT);
INSERT INTO MEMBER VALUES ('admin','1234','관리자','F',33,'admin@naver.com','01012345678','서울시 강남구','독서',DEFAULT);
SELECT * FROM MEMBER;

ALTER TABLE MEMBER MODIFY EMAIL VARCHAR2(200);
ALTER TABLE MEMBER MODIFY PHONE VARCHAR2(200);

