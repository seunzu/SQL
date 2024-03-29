USE programmers_join;

CREATE TABLE ANIMAL_INS (
	ANIMAL_ID VARCHAR(20) PRIMARY KEY NOT NULL,
    ANIMAL_TYPE VARCHAR(20) NOT NULL,
    DATETIME DATETIME NOT NULL,
    INTAKE_CONDITION VARCHAR(20) NOT NULL,
    NAME VARCHAR(50),
    SEX_UPON_INTAKE VARCHAR(20) NOT NULL
);

CREATE TABLE ANIMAL_OUTS (
	ANIMAL_ID VARCHAR(20) PRIMARY KEY NOT NULL,
    ANIMAL_TYPE VARCHAR(20) NOT NULL,
    DATETIME DATETIME NOT NULL,
	NAME VARCHAR(50),
    SEX_UPON_INTAKE VARCHAR(20) NOT NULL,
    FOREIGN KEY (ANIMAL_ID) REFERENCES ANIMAL_INS(ANIMAL_ID)
);

SHOW TABLES;

INSERT INTO ANIMAL_INS () VALUES
('A350276', 'Cat', '2017-08-13 13:50:00', 'Normal', 'Jewel', 'Spayed Female'),
('A381217', 'Dog', '2017-07-08 09:41:00', 'Sick', 'Cherokee', 'Neutered Male');

INSERT INTO ANIMAL_OUTS () VALUES
('A350276', 'Cat', '2018-01-28 17:51:00', 'Jewel', 'Spayed Female'),
('A381217', 'Dog', '2017-06-09 18:51:00', 'Cherokee', 'Neutered Male');

SELECT * FROM ANIMAL_INS;

SELECT * FROM ANIMAL_OUTS;

SELECT 
    ANIMAL_ID, AI.NAME
FROM
    ANIMAL_INS AS AI
        JOIN
    ANIMAL_OUTS AS AO USING (ANIMAL_ID)
WHERE
    AI.DATETIME > AO.DATETIME
ORDER BY AI.DATETIME;