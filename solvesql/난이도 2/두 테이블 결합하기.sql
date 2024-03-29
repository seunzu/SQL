-- 1
SELECT
    A.ATHLETE_ID
FROM
    RECORDS A,
    EVENTS B
WHERE
    A.EVENT_ID = B.ID
    AND B.SPORT = 'Golf'
GROUP BY
    A.ATHLETE_ID;

-- 2
SELECT
    A.ATHLETE_ID
FROM
    RECORDS A
INNER JOIN
    EVENTS B ON A.EVENT_ID = B.ID
WHERE
    B.SPORT = 'Golf'
GROUP BY
    A.ATHLETE_ID;
