from pathlib import Path
import duckdb

# Resolve the base project directory
BASE_DIR = Path(__file__).resolve().parent.parent

QUERIES_DIR = BASE_DIR / "queries"

# Loop through all .sql files
for sql_file in sorted(QUERIES_DIR.glob("*.sql")):
    print(f"\n=== Running: {sql_file.name} ===")

    # Read query
    with open(sql_file) as f:
        query = f.read()

    # Run and show result
    result = duckdb.query(query).to_df()
    print(result.head(10))  # Show only first 10 rows for big queries
