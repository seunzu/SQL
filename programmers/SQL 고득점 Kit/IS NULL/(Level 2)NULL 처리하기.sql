USE programmers_isNull;

CREATE TABLE ANIMAL_INS3 (
	ANIMAL_ID VARCHAR(20) PRIMARY KEY NOT NULL,
    ANIMAL_TYPE VARCHAR(20) NOT NULL,
    DATETIME DATETIME NOT NULL,
    INTAKE_CONDITION VARCHAR(20) NOT NULL,
    NAME VARCHAR(50),
    SEX_UPON_INTAKE VARCHAR(20) NOT NULL
);

INSERT INTO ANIMAL_INS3 (ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE) VALUES 
('A350276', 'Cat', '2017-08-13 13:50:00', 'Normal', 'Jewel', 'Spayed Female'),
('A350375', 'Cat', '2017-03-06 15:01:00', 'Normal', 'Meo', 'Neutered Male'),
('A368930', 'Dog', '2014-06-08 13:20:00', 'Normal', NULL, 'Spayed Female');

SHOW TABLES;

SELECT * FROM ANIMAL_INS3;

SELECT 
    ANIMAL_TYPE,
    COALESCE(NAME, 'No name') AS NAME,
    SEX_UPON_INTAKE
FROM
    ANIMAL_INS3;