-- A median is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

-- 1
SELECT ROUND(AVG(LAT_N),4)
FROM (SELECT 
        ROW_NUMBER() OVER (ORDER BY LAT_N) row_num -- 데이터 순위 매기기
        , COUNT(*) OVER () n -- 데이터의 총 개수
        , LAT_N
    FROM STATION) t
    WHERE CASE 
    -- 데이터의 개수가 홀수인 경우
    WHEN MOD(n,2) = 1 THEN row_num = (n+1)/2
    -- 데이터의 개수가 짝수인 경우
    ELSE row_num IN (n/2,(n/2)+1)
END;

-- 2
SELECT 
    ROUND(AVG(LAT_N),4)
FROM (SELECT 
        LAT_N
        , PERCENT_RANK() OVER (ORDER BY LAT_N) p_rn
    FROM STATION) t
WHERE 
    p_rn = 0.5;