USE programmers_join;

SELECT
    A.PRODUCT_ID,
    A.PRODUCT_NAME,
    (A.PRICE*SUM(B.AMOUNT)) AS TOTAL_SALES
FROM FOOD_PRODUCT AS A
JOIN FOOD_ORDER AS B USING (PRODUCT_ID)
WHERE B.PRODUCE_DATE LIKE '2022-05%'
GROUP BY 2
ORDER BY 3 DESC, 1 ASC