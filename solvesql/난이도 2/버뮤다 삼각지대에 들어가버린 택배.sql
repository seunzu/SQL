SELECT
    DATE(order_delivered_carrier_date) AS delivered_carrier_date,
    COUNT(DISTINCT order_id) AS orders
FROM
    olist_orders_dataset
WHERE
    order_delivered_carrier_date LIKE '2017-01%'
    AND order_delivered_carrier_date IS NOT NULL
    AND order_delivered_customer_date IS NULL
GROUP BY
    1
ORDER BY
    1;