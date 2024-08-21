CREATE TABLE STU_INFO(
    RNO INT,
    NAME VARCHAR(20),
    BRANCH VARCHAR(20)
);

INSERT INTO STU_INFO VALUES(101,'RAJU','CE');
INSERT INTO STU_INFO VALUES(102,'AMIT','CE');
INSERT INTO STU_INFO VALUES(103,'SANJAY','ME');
INSERT INTO STU_INFO VALUES(104,'NEHA','EC');
INSERT INTO STU_INFO VALUES(105,'MEERA','EE');
INSERT INTO STU_INFO VALUES(106,'MAHESH','ME');

SELECT * FROM STU_INFO;

CREATE TABLE RESULT(
    RNO INT,
    SPI DECIMAL(8,2)
);

INSERT INTO RESULT VALUES(101,8.8);
INSERT INTO RESULT VALUES(102,9.2);
INSERT INTO RESULT VALUES(103,7.6);
INSERT INTO RESULT VALUES(104,8.2);
INSERT INTO RESULT VALUES(105,7.0);
INSERT INTO RESULT VALUES(107,8.9);

SELECT * FROM RESULT;

CREATE TABLE EMPLOYEE_MASTER(
    EMPLOYEENO VARCHAR(20),
    NAME VARCHAR(20),
    MANAGERNO VARCHAR(20)
);

INSERT INTO EMPLOYEE_MASTER VALUES('E01','TARUN',NULL);
INSERT INTO EMPLOYEE_MASTER VALUES('E02','ROHAN','E02');
INSERT INTO EMPLOYEE_MASTER VALUES('E03','PRIYA','E01');
INSERT INTO EMPLOYEE_MASTER VALUES('E04','MILAN','E03');
INSERT INTO EMPLOYEE_MASTER VALUES('E05','JAY','E01');
INSERT INTO EMPLOYEE_MASTER VALUES('E06','ANJANA','E04');

SELECT * FROM EMPLOYEE_MASTER;

-- PART - A

SELECT * FROM STU_INFO
CROSS JOIN RESULT;

SELECT * FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

SELECT * FROM STU_INFO
LEFT OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

SELECT * FROM STU_INFO
RIGHT OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

SELECT * FROM STU_INFO
FULL OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

SELECT STU_INFO.RNO , NAME, BRANCH,SPI FROM STU_INFO
FULL OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO;

SELECT STU_INFO.RNO , NAME, BRANCH,SPI FROM STU_INFO
JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH='CE';

SELECT STU_INFO.RNO , NAME, BRANCH,SPI FROM STU_INFO
JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH<>'EC';

SELECT AVG(SPI) , BRANCH FROM RESULT
JOIN STU_INFO
ON RESULT.RNO = STU_INFO.RNO
GROUP BY BRANCH;

SELECT AVG(SPI) , BRANCH FROM RESULT
JOIN STU_INFO
ON RESULT.RNO = STU_INFO.RNO
GROUP BY BRANCH HAVING BRANCH IN('CE','ME');

-- PART - B

SELECT AVG(SPI) , BRANCH FROM RESULT
JOIN STU_INFO
ON RESULT.RNO = STU_INFO.RNO
GROUP BY BRANCH
ORDER BY AVG(RESULT.SPI);

SELECT MAX(SPI) , BRANCH FROM RESULT
JOIN STU_INFO
ON RESULT.RNO = STU_INFO.RNO
GROUP BY BRANCH
ORDER BY MAX(SPI);

-- PART - C

SELECT EMP.NAME AS EMPLOYEE , MNG.NAME AS MANAGER FROM EMPLOYEE_MASTER EMP
JOIN EMPLOYEE_MASTER MNG
ON EMP.EMPLOYEENO = MNG.MANAGERNO;