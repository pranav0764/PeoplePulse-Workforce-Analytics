import pandas as pd
from sqlalchemy import create_engine
import os

engine = create_engine(
    "mysql+pymysql://root:root123@localhost:3306/peoplepulse_db"
)

print("CSV Exists:", os.path.exists("data/raw/attrition.csv"))
print("CSV Size:", os.path.getsize("data/raw/attrition.csv"))

attrition = pd.read_csv("data/raw/attrition.csv")

attrition.to_sql(
    "attrition",
    con=engine,
    if_exists="replace",
    index=False
)

print("Attrition imported successfully!")