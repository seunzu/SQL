-- 1
SELECT
    *
FROM
    tips
WHERE
    (size, total_bill) IN (
        SELECT
            size,
            MAX(total_bill) AS Max
        FROM
            tips
        GROUP BY
            size
    )
ORDER BY
    size ASC;

-- 2
WITH 
    size_max AS (
SELECT 
    size, 
    max(total_bill) AS Max
FROM 
    tips
GROUP BY 
    size
)

SELECT 
    *
FROM 
    tips
WHERE 
    (size, total_bill) IN (SELECT * FROM size_max)
ORDER BY 
    size ASC;