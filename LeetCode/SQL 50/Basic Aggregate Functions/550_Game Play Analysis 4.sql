SELECT 
    ROUND(
        COUNT(DISTINCT a.player_id) 
        / (SELECT COUNT(DISTINCT player_id) FROM Activity),
    2) fraction
FROM Activity A
JOIN (
    SELECT player_id, MIN(event_date) first_login
    FROM Activity
    GROUP BY 1
) T
    ON A.player_id = T.player_id
    AND A.event_date = DATE_ADD(T.first_login, INTERVAL 1 DAY);