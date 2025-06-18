-- Average trip distance grouped by passenger count
SELECT
  passenger_count,
  AVG(trip_distance) AS avg_distance,
  COUNT(*) AS trip_count
FROM
  'data/yellow_tripdata_2023-01.parquet'
GROUP BY
  passenger_count
ORDER BY
  passenger_count;
