WITH user_rank AS (
SELECT USER_ID
     , PROBLEM_ID
     , SUBMITTED
     , TIMESTAMP
     , ROW_NUMBER() OVER (PARTITION BY USER_ID, PROBLEM_ID ORDER BY TIMESTAMP) AS "ranking" 
FROM SUBMISSIONS
)

, test2 AS (
SELECT ur.USER_ID
     , ur.ranking
     , (CASE WHEN ur.SUBMITTED=p.CORRECT_ANSWER then "yes" ELSE "no" END) AS "answer"
FROM user_rank ur
    LEFT JOIN PROBLEMS p ON ur.problem_id=p.problem_id
)

SELECT ranking AS NTH_SUBMISSION
     , ROUND(COUNT(CASE WHEN answer="yes" THEN 1 END) / COUNT(*) *100, 0) AS CORRECT_RATE
FROM test2
GROUP BY 1
ORDER BY 1
