WITH
    sb AS (
        SELECT
        measured_at AS today,
        pm10,
        LEAD(measured_at) OVER (ORDER BY measured_at) AS next_day,
        LEAD(pm10) OVER (ORDER BY measured_at) AS next_pm10
        FROM
        measurements
    )

SELECT
    today,
    next_day,
    pm10,
    next_pm10
FROM
    sb
WHERE
    pm10 < next_pm10