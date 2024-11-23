import json
import pandas as pd
import csv
import os

with open('./python/json/costs.json') as f:
    costs_data = json.load(f)

def merge_csv():
    file_list = os.listdir('D:/Documents/infinity_nikki_library/python/csv/unprocessed')
    df = pd.DataFrame()
    for file in file_list:
        df_temp = pd.read_csv(f'D:/Documents/infinity_nikki_library/python/csv/unprocessed/{file}')
        df = pd.concat([df, df_temp], ignore_index=True)
    df.to_csv('D:/Documents/infinity_nikki_library/python/csv/full_item_data.csv', index=False)

def get_style(row):
    style_columns = ['Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool']
    max_style = row[style_columns].idxmax()
    row['Style'] = max_style
    return row

def add_style():
    df = pd.read_csv('./python/csv/full_item_data.csv')
    df = df.apply(get_style, axis=1)
    df.to_csv("./python/csv/full_item_data.csv", index=False)

def add_makeup():
    items = pd.read_csv('./python/csv/full_item_data.csv')
    makeup = pd.read_csv('./python/csv/makeup.csv')
    df = pd.concat([items, makeup], ignore_index=True)
    int_cols = ['Level', 'Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool', 'Blings','Threads', 'Bubbles']
    for c in int_cols:
        df[c] = df[c].fillna(0).astype("int64")
    df.to_csv("./python/csv/full_item_data.csv", index=False)

def split_csv():
    df = pd.read_csv('./python/csv/full_item_data.csv')
    t1 = df.drop(labels=['Labels', 'Source'], axis=1, inplace=False)
    t1.to_csv('./python/csv/clothing_item_lvls.csv', index=False)
    
    t2 = df.drop(labels=['Level','Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool', 'Blings', 'Threads', 'Bubbles'], axis=1, inplace=False)
    t2 = t2.drop_duplicates(subset=['Name'])
    t2.to_csv('./python/csv/clothing_items_details.csv', index=False)

def get_costs(row):
    slot, rarity, level = row['Slot'], str(row['Rarity']), str(row['Level'])
    cost_values = costs_data.get("costs", {}).get(slot, {}).get(rarity, {}).get(level, {})
    row['Blings'] = cost_values.get('blings', row['Blings'])
    row['Threads'] = cost_values.get('threads', row['Threads'])
    row['Bubbles'] = cost_values.get('bubbles', row['Bubbles'])
    return row

def add_costs():
    df = pd.read_csv('./python/csv/clothing_item_lvls.csv')
    df = df.apply(get_costs, axis=1)
    df.to_csv("./python/csv/clothing_item_lvls.csv", index=False)

def add_labels():
    with open('./python/json/labels.json', 'r') as f:
        data = json.load(f)
    csv_file = './python/csv/clothing_items_details.csv'
    updated_rows = []
    with open(csv_file, 'r', newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        fieldnames = reader.fieldnames
        for row in reader:
            for label, items in data['labels'].items():
                if row['Name'] in items:
                    current_labels = row['Labels'].split(', ') if row['Labels'] else []
                    if label not in current_labels:
                        current_labels.append(label)
                        row['Labels'] = ', '.join(current_labels)
            updated_rows.append(row)
            
    with open('./python/csv/clothing_items_details.csv', 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(updated_rows)

def add_sources():
    with open('./python/json/source.json', 'r') as f:
        data = json.load(f)
    csv_file = './python/csv/clothing_items_details.csv'
    updated_rows = []
    with open(csv_file, 'r', newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        fieldnames = reader.fieldnames
        for row in reader:
            item_name = row["Name"]
            
            if item_name in data:
                row["Source"] = data[item_name]
            else:
                row["Source"] = "" 
            updated_rows.append(row)
            
    with open('./python/csv/clothing_items_details.csv', 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(updated_rows)

def add_outfits_and_recolors_details():
    df = pd.read_csv(f'./python/csv/clothing_items_details.csv')
    df['Name'] = df['Name'].fillna('').astype(str)
    
    if 'Outfit' not in df.columns:
        df['Outfit'] = '' 
    df['Outfit'] = df['Outfit'].fillna('').astype(str)
    
    with open('./python/json/outfits.json') as f:
        outfits_data = json.load(f)

    for item_name, item_info in outfits_data["outfits"].items():
        outfit_name = item_info.get("Outfit","")
        df.loc[df['Name'] == item_name, 'Outfit'] = outfit_name

        recolors = item_info.get("Recolor", [])
        for recolor_dict in recolors:
            for recolor_name, recolored_outfit in recolor_dict.items():
                matching_rows = df[df['Name'] == item_name].copy()

                matching_rows['Name'] = recolor_name
                matching_rows['Outfit'] = recolored_outfit
                matching_rows['Source'] = f'A recolor of {item_name} from {outfit_name}.'

                df = pd.concat([df, matching_rows], ignore_index=True)
    df.to_csv(f'./python/csv/clothing_items_details.csv', index=False)

def add_outfits_and_recolors_lvls():
    df = pd.read_csv(f'./python/csv/clothing_item_lvls.csv')
    df['Name'] = df['Name'].fillna('').astype(str)
    
    if 'Outfit' not in df.columns:
        df['Outfit'] = '' 
    df['Outfit'] = df['Outfit'].fillna('').astype(str)
    with open('./python/json/outfits.json') as f:
        outfits_data = json.load(f)

    for item_name, item_info in outfits_data["outfits"].items():
        outfit_name = item_info.get("Outfit","")
        df.loc[df['Name'] == item_name, 'Outfit'] = outfit_name

        recolors = item_info.get("Recolor", [])
        for recolor_dict in recolors:
            for recolor_name, recolored_outfit in recolor_dict.items():
                matching_rows = df[df['Name'] == item_name].copy()

                matching_rows['Name'] = recolor_name
                matching_rows['Outfit'] = recolored_outfit

                df = pd.concat([df, matching_rows], ignore_index=True)
    df.to_csv(f'./python/csv/clothing_item_lvls.csv', index=False)

# merge_csv()
# add_style()
# add_makeup()
# split_csv()
# add_costs()
# add_labels()
# add_sources()
# add_outfits_and_recolors_details()
# add_outfits_and_recolors_lvls()

'''TODO: 
- generate popup pg for items
- sketches + materials
'''