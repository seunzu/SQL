USE programmers_string_date;

CREATE TABLE PRODUCT (
	PRODUCT_ID INTEGER PRIMARY KEY NOT NULL,
    PRODUCT_CODE VARCHAR(8) NOT NULL,
    PRICE INTEGER NOT NULL
);

SHOW TABLES;

INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_CODE, PRICE) VALUES 
(1, 'A1000011', 10000),
(2, 'A1000045', 9000),
(3, 'C3000002', 22000),
(4, 'C3000006', 15000),
(5, 'C3000010', 30000),
(6, 'K1000023', 17000);

SELECT * FROM PRODUCT;

SELECT 
    LEFT(PRODUCT_CODE, 2) AS CATEGORY, COUNT(*) AS PRODUCTS
FROM
    PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY;