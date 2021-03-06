# Load libraries
import pandas as pd
from sqlalchemy import create_engine

# Create the database engine
engine = create_engine('sqlite:///data.db')

# Load hpd311calls without any SQL
hpd_calls = pd.read_sql("hpd311calls", engine)

# View the first few rows of data
print(hpd_calls.head())


# Create the database engine
engine = create_engine("sqlite:///data.db")

# Create a SQL query to load the entire weather table
query = """
SELECT ____ 
  FROM ____;
"""

# Load weather with the SQL query
weather = pd.read_sql("SELECT * FROM weather", engine)

# View the first few rows of data
print(weather.head())
