from sqlalchemy import create_engine, Table, Column, Integer,Float, String, MetaData, update
import pandas as pd

details = pd.read_csv('./python/csv/clothing_items_details.csv')
levels = pd.read_csv('./python/csv/clothing_item_lvls.csv')
engine = create_engine('postgresql://postgres:password@localhost:5432/infinity_nikki_items')
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

details_columns = [
    Column(name, infer_sqlalchemy_type(dtype), primary_key=(name == 'Name')) 
    for name, dtype in details.dtypes.items()
]

details_table = Table('item_details', metadata, *details_columns)
existing_data = pd.read_sql('SELECT item_details."Name" FROM item_details', con=engine)
filtered_details = details[~details['Name'].isin(existing_data['Name'])]
filtered_details.to_sql('item_details', con=engine, if_exists='append', index=False)

levels_columns = [
    Column(name, infer_sqlalchemy_type(dtype)) for name, dtype in levels.dtypes.items()
]
levels_table = Table('level_details', metadata, *levels_columns)
existing_data = pd.read_sql('SELECT level_details."Name" FROM level_details', con=engine)
filtered_lvls = levels[~levels['Name'].isin(existing_data['Name'])]
filtered_lvls.to_sql('level_details', con=engine, if_exists='append', index=False) 

for _, row in details.iterrows():
    row = row.where(pd.notna(row), None)
    with engine.connect() as conn:
        stmt = update(details_table).where(details_table.c.Name == row['Name']).values(**row.to_dict())
        conn.execute(stmt)
        conn.commit()

for _, row in levels.iterrows():
    row = row.where(pd.notna(row), None)
    with engine.connect() as conn:
        stmt = update(levels_table).where(
            levels_table.c.Name == row['Name'],
            levels_table.c.Level == row['Level']
        ).values(**row.to_dict())
        conn.execute(stmt)
        conn.commit()