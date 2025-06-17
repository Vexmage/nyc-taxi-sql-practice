SELECT 
  passenger_count, 
  SUM(total_amount) AS total_fare
FROM 'data/yellow_tripdata_2023-01.parquet'
GROUP BY passenger_count
ORDER BY total_fare DESC
LIMIT 10;