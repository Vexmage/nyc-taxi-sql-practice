-- Total fare per day in January 2023
SELECT
  DATE(tpep_pickup_datetime) AS trip_date,
  SUM(total_amount) AS daily_fare,
  COUNT(*) AS trip_count
FROM
  'data/yellow_tripdata_2023-01.parquet'
GROUP BY
  trip_date
ORDER BY
  trip_date;
