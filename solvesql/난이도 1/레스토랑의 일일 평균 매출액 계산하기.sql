-- 1
SELECT
    ROUND(AVG(sub.total), 2) AS 'avg_sales'
FROM
    (
        SELECT
            day,
            SUM(total_bill) AS 'total'
        FROM
            tips
        GROUP BY
            day
    ) AS sub

-- 2
WITH
    sub AS (
        SELECT
            day,
            SUM(total_bill) AS total
        FROM
            tips
        GROUP BY
            day
    )

SELECT
    ROUND(AVG(total), 2) AS avg_sales
FROM
    sub;