-- Number of trips per VendorID
SELECT
  VendorID,
  COUNT(*) AS trip_count,
  SUM(total_amount) AS total_fare
FROM
  'data/yellow_tripdata_2023-01.parquet'
GROUP BY
  VendorID
ORDER BY
  trip_count DESC;
