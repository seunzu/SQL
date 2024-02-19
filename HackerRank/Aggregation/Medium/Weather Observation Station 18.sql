-- Consider P_1(a, b) and P_2(c, d) to be two points on a 2D plane.
-- 1. a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
-- 2. b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
-- 3. c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
-- 4. d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
-- Query the Manhattan Distance between points P_1(a, b) and P_2(c, d) 
-- and round it to a scale of 4 decimal places.

SELECT 
    ROUND(ABS(MIN(LAT_N) - MAX(LAT_N))+ABS(MIN(LONG_W) - MAX(LONG_W)), 4)
FROM 
    STATION;