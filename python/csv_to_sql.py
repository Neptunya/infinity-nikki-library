from sqlalchemy import create_engine, Table, Column, Integer,Float, String, MetaData 
import pandas as pd

details = pd.read_csv('./python/csv/clothing_items.csv')
levels = pd.read_csv('./python/csv/clothing_item_lvls.csv')
engine = create_engine('postgresql://postgres:password@localhost:1234/infinity_nikki_items')
metadata = MetaData()

def infer_sqlalchemy_type(dtype):
    if "int" in dtype.name:
        return Integer
    elif "float" in dtype.name:
        return Float
    elif "object" in dtype.name:
        return String(255)
    else:
        return String(255)

details_columns = [Column(name, infer_sqlalchemy_type(dtype)) for name, dtype in details.dtypes.items()]
details_table = Table('item_details', metadata, *details_columns)
details_table.create(engine)
details.to_sql('item_details', con=engine, if_exists='append', index=False) 

levels_columns = [Column(name, infer_sqlalchemy_type(dtype)) for name, dtype in levels.dtypes.items()]
levels_table = Table('level_details', metadata, *levels_columns)
levels_table.create(engine)
levels.to_sql('level_details', con=engine, if_exists='append', index=False) 

sq = "SELECT * FROM item_details"
tabledata = pd.read_sql_query(sq, engine)
print(tabledata)

sq = "SELECT * FROM level_details"
tabledata = pd.read_sql_query(sq, engine)
print(tabledata)