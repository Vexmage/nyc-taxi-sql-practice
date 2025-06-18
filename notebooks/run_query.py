import duckdb

with open('queries/top_customers.sql') as f:
    query = f.read()

result = duckdb.query(query).to_df()
print(result)