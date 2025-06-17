# NYC Taxi SQL Practice

This repo is a sandbox to practice real-world SQL using the NYC Taxi `.parquet` trip data and DuckDB.

## 📂 Project Structure

- `data/` — Contains the `.parquet` file. **Not pushed to GitHub.**
- `queries/` — SQL practice files.
- `notebooks/` — Python scripts/notebooks using DuckDB.
- `venv/` — Local virtual environment (not pushed).

## ✅ How to use

1. Create & activate venv:
python -m venv venv
.\venv\Scripts\Activate
2. Install dependencies:
   pip install duckdb pandas numpy

3. Download the `.parquet` from [NYC TLC](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page) and place it in `data/`.

4. Run:
python notebooks/test_duckdb.py