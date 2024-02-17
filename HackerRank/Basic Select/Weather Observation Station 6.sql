-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.

-- 1
SELECT 
    DISTINCT CITY
FROM 
    STATION
WHERE 
    CITY REGEXP '^[aeiouAEIOU]';

-- 2
SELECT 
    CITY
FROM 
    STATION
WHERE 
    LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');