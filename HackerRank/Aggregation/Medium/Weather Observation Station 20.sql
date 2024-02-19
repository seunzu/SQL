-- A median is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

SELECT 
    ROUND(LAT_N, 4) AS Median_Latitude
FROM (
    SELECT LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS Row_Num,
        COUNT(*) OVER () AS Total_Rows
    FROM STATION
) AS Subquery
WHERE 
    Row_Num IN ((Total_Rows + 1) / 2, (Total_Rows + 2) / 2);