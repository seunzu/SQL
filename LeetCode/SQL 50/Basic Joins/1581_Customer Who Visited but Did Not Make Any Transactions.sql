SELECT V.customer_id, COUNT(*) count_no_trans
FROM Visits V
LEFT JOIN Transactions T USING (visit_id)
WHERE T.visit_id IS NULL
GROUP BY V.customer_id;