USE programmers_isNull;

CREATE TABLE ANIMAL_INS2 (
    ANIMAL_ID VARCHAR(20) PRIMARY KEY NOT NULL,
    ANIMAL_TYPE VARCHAR(20) NOT NULL,
    DATETIME DATETIME NOT NULL,
    INTAKE_CONDITION VARCHAR(20) NOT NULL,
    NAME VARCHAR(50),
    SEX_UPON_INTAKE VARCHAR(20) NOT NULL
);

SHOW TABLES;

INSERT INTO ANIMAL_INS2 (ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE) VALUES
('A434523', 'Cat', '2015-11-20 14:18:00', 'Normal', NULL, 'Spayed Female'),
('A562649', 'Dog', '2014-03-20 18:06:00', 'Sick', NULL, 'Spayed Female'),
('A524634', 'Dog', '2015-01-02 18:54:00', 'Normal', '*Belle', 'Intact Female'),
('A465637', 'Dog', '2017-06-04 08:17:00', 'Injured', '*Commander', 'Neutered Male');

SELECT * FROM ANIMAL_INS2;

SELECT 
    ANIMAL_ID
FROM
    ANIMAL_INS2
WHERE
    NAME IS NOT NULL;