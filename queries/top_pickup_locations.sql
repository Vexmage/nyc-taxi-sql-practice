-- Top 10 pickup locations by total fare amount
SELECT
  PULocationID,
  SUM(total_amount) AS total_fare
FROM
  'data/yellow_tripdata_2023-01.parquet'
GROUP BY
  PULocationID
ORDER BY
  total_fare DESC
LIMIT 10;
