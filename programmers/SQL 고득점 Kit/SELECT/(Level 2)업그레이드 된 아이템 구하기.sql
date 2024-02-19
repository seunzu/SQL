USE programmers_select;

CREATE TABLE ITEM_INFO (
    ITEM_ID INTEGER PRIMARY KEY NOT NULL,
    ITEM_NAME VARCHAR(20) NOT NULL,
    RARITY VARCHAR(20) NOT NULL,
    PRICE INTEGER NOT NULL
);

CREATE TABLE ITEM_FREE (
    ITEM_ID INTEGER PRIMARY KEY NOT NULL,
    PARENT_ITEM_ID INTEGER,
    FOREIGN KEY (ITEM_ID) REFERENCES ITEM_INFO(ITEM_ID)
);

SHOW TABLES;

INSERT INTO ITEM_INFO (ITEM_ID, ITEM_NAME, RARITY, PRICE)
VALUES 
    (0, 'ITEM_A', 'RARE', 10000),
    (1, 'ITEM_B', 'RARE', 9000),
    (2, 'ITEM_C', 'LEGEND', 11000),
    (3, 'ITEM_D', 'RARE', 10000),
    (4, 'ITEM_E', 'RARE', 12000);

INSERT INTO ITEM_FREE (ITEM_ID, PARENT_ITEM_ID)
VALUES 
    (0, NULL),
    (1, 0),
    (2, 0),
    (3, 1),
    (4, 1);

SELECT * FROM ITEM_INFO;

SELECT * FROM ITEM_FREE;

SELECT 
    ITEM_ID, ITEM_NAME, RARITY
FROM
    ITEM_INFO
        JOIN
    ITEM_FREE USING (ITEM_ID)
WHERE
    RARITY = 'RARE'
ORDER BY 1 DESC;
