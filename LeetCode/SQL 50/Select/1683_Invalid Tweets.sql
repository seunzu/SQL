SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(Content) > 15;