CREATE TABLE CRICKET(
    NAME VARCHAR(50),
    CITY VARCHAR(50),
    AGE INT
);

INSERT INTO CRICKET VALUES('SACHIN TENDULKAR','MUMBAI',30)
INSERT INTO CRICKET VALUES('RAHUL DRAVID','BOMBAY',35)
INSERT INTO CRICKET VALUES('M.S.DHONI','JHARKHAND',31)
INSERT INTO CRICKET VALUES('SURESH RAINA','GUJARAT',30)

SELECT * FROM CRICKET


SELECT *INTO WORLDCUP FROM CRICKET

SELECT * FROM WORLDCUP

SELECT NAME,CITY INTO T20 FROM CRICKET 
WHERE 1=0

SELECT * FROM T20

SELECT * INTO IPL FROM CRICKET
WHERE 1=0

SELECT * FROM IPL