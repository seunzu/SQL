USE programmers_isNull;

CREATE TABLE ITEM_INFO (
    ITEM_ID INTEGER PRIMARY KEY NOT NULL,
    ITEM_NAME VARCHAR(20) NOT NULL,
    RARITY VARCHAR(20) NOT NULL,
    PRICE INTEGER NOT NULL
);

CREATE TABLE ITEM_TREE (
    ITEM_ID INTEGER PRIMARY KEY NOT NULL,
    PARENT_ITEM_ID INTEGER,
    FOREIGN KEY (ITEM_ID) REFERENCES ITEM_INFO(ITEM_ID)
);

SHOW TABLES;

INSERT INTO ITEM_INFO (ITEM_ID, ITEM_NAME, RARITY, PRICE)
VALUES 
    (0, 'ITEM_A', 'COMMON', 10000),
    (1, 'ITEM_B', 'LEGEND', 9000),
    (2, 'ITEM_C', 'LEGEND', 11000),
    (3, 'ITEM_D', 'UNIQUE', 10000),
    (4, 'ITEM_E', 'LEGEND', 12000);

INSERT INTO ITEM_TREE (ITEM_ID, PARENT_ITEM_ID)
VALUES 
    (0, NULL),
    (1, 0),
    (2, 0),
    (3, NULL),
    (4, 3);

SELECT * FROM ITEM_INFO;

SELECT * FROM ITEM_TREE;

SELECT 
    ITEM_ID, ITEM_NAME
FROM
    ITEM_INFO
WHERE
    ITEM_ID IN (SELECT 
            ITEM_ID
        FROM
            ITEM_TREE
        WHERE
            PARENT_ITEM_ID IS NULL)
ORDER BY 1;

