from sqlalchemy import create_engine, Table, Column, Integer,Float, String, MetaData, PrimaryKeyConstraint, ForeignKeyConstraint
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
levels_table.append_constraint(PrimaryKeyConstraint('Name', 'Level'))
levels_table.append_constraint(ForeignKeyConstraint(['Name'], ['item_details.Name']))
levels_table.create(engine)
levels.to_sql('level_details', con=engine, if_exists='replace', index=False) 