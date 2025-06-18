-- Top 10 longest trips by distance
SELECT
  VendorID,
  tpep_pickup_datetime,
  tpep_dropoff_datetime,
  trip_distance,
  total_amount
FROM
  'data/yellow_tripdata_2023-01.parquet'
ORDER BY
  trip_distance DESC
LIMIT 10;
