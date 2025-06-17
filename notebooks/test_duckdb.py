import duckdb

result = duckdb.query("""
    SELECT *
    FROM 'data/yellow_tripdata_2023-01.parquet'
    LIMIT 5
""").to_df()

print(result)
