SELECT 
    R.contest_id,
    ROUND(COUNT(R.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register R
GROUP BY 1
ORDER BY 2 DESC, 1 ASC;