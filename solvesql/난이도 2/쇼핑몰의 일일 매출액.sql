SELECT
    DATE(A.order_purchase_timestamp) AS dt,
    ROUND(SUM(B.payment_value), 2) AS revenue_daily
FROM
    olist_orders_dataset AS A
    JOIN olist_order_payments_dataset AS B USING (order_id)
WHERE
    DATE(A.order_purchase_timestamp) >= '2018-01-01'
GROUP BY
    1
ORDER BY
    1;