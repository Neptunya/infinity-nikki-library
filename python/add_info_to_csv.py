import json
import pandas as pd
import numpy as np
import csv
import os

with open('./python/json/costs.json') as f:
    costs_data = json.load(f)

def merge_csv(file):
    df = pd.DataFrame()
    df_temp = pd.read_csv(f'D:/Documents/infinity_nikki_library/python/csv/unprocessed/{file}.csv')
    df = pd.concat([df, df_temp], ignore_index=True)
    df.to_csv('D:/Documents/infinity_nikki_library/python/csv/full_item_data.csv', index=False)

def add_stats(file):
    df_temp = pd.read_csv(f'D:/Documents/infinity_nikki_library/python/csv/unprocessed/{file}.csv')
    
    stat_cols = ['Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool']
    multipliers = [1.25, 1.55, 1.9, 2.3, 2.75, 3.25, 3.8, 4.4, 5, 5.6]
    
    all_rows = []
    
    for _, row in df_temp.iterrows():
        base_stats = {col: np.floor(row[col] / 6.2).astype(int) for col in stat_cols}
        
        for level in range(12):
            new_row = row.copy()
            new_row['Level'] = level
            if level == 0:
                for col in stat_cols:
                    new_row[col] = base_stats[col]
            elif level <= 10:
                multiplier = multipliers[level - 1]
                for col in stat_cols:
                    new_row[col] = int(base_stats[col] * multiplier)
            all_rows.append(new_row)
    
    df_expanded = pd.DataFrame(all_rows)
    df_expanded.to_csv('D:/Documents/infinity_nikki_library/python/csv/full_item_data.csv', index=False)

def add_new():
    df_1 = pd.read_csv(f'D:/Documents/infinity_nikki_library/python/csv/clothing_item_lvls.csv')
    df_2 = pd.read_csv(f'D:/Documents/infinity_nikki_library/python/csv/new.csv')
    df = pd.concat([df_1, df_2], ignore_index=True)
    df.to_csv('D:/Documents/infinity_nikki_library/python/csv/clothing_item_lvls.csv', index=False)

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
    makeup = pd.read_csv('./python/csv/makeup_1-2a.csv')
    df = pd.concat([items, makeup], ignore_index=True)
    int_cols = ['Level', 'Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool', 'Blings','Threads', 'Bubbles']
    for c in int_cols:
        df[c] = df[c].fillna(0).astype("int64")
    df.to_csv("./python/csv/full_item_data.csv", index=False)

def add_missing_items():
    items = pd.read_csv('./python/csv/full_item_data.csv')
    missing = pd.read_csv('./python/csv/missing_items.csv')
    df = pd.concat([items, missing], ignore_index=True)
    int_cols = ['Level', 'Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool', 'Blings','Threads', 'Bubbles']
    for c in int_cols:
        df[c] = df[c].fillna(0).astype("int64")
    df.to_csv("./python/csv/full_item_data.csv", index=False)

def add_glow_up(file):
    glow_up_file = f'./python/csv/unprocessed/{file}-gu.csv'
    clothing_item_file = './python/csv/clothing_item_lvls.csv'
    glow_up_data = {}
    
    with open(glow_up_file, mode='r') as glow_up_csv:
        reader = csv.DictReader(glow_up_csv)
        for row in reader:
            glow_up_data[row['Name']] = {
                'Level': row['Level'],
                'Elegant': row['Elegant'],
                'Fresh': row['Fresh'],
                'Sweet': row['Sweet'],
                'Sexy': row['Sexy'],
                'Cool': row['Cool']
            }
    
    updated_items = []
    with open(clothing_item_file, mode='r') as clothing_csv:
        reader = csv.DictReader(clothing_csv)
        for row in reader:
            item_name = row['Name']
            item_level = int(row['Level'])
            
            if item_level == 10 and item_name in glow_up_data:
                updated_row = row.copy()
                for key in ['Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool']:
                    glow_value = glow_up_data[item_name][key]
                    updated_value = updated_row[key]
                    if not (float(updated_value) < float(glow_value) < 1.12 * float(updated_value)):
                        print(f"Validation failed for {item_name} {key}: {updated_value} vs {glow_value}")
                updated_row['Level'] = '11'
                updated_row['Elegant'] = glow_up_data[item_name]['Elegant']
                updated_row['Fresh'] = glow_up_data[item_name]['Fresh']
                updated_row['Sweet'] = glow_up_data[item_name]['Sweet']
                updated_row['Sexy'] = glow_up_data[item_name]['Sexy']
                updated_row['Cool'] = glow_up_data[item_name]['Cool']
                updated_items.append(updated_row)

    with open(clothing_item_file, mode='a', newline='') as output_csv:
        fieldnames = reader.fieldnames
        writer = csv.DictWriter(output_csv, fieldnames=fieldnames)
        writer.writerows(updated_items)

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
    if (row['Level'] == 0):
        row['Blings'] = cost_values.get('blings', row['Blings'])
        row['Threads'] = cost_values.get('threads', row['Threads'])
        row['Bubbles'] = cost_values.get('bubbles', row['Bubbles'])
    elif (row['Level'] == 11):
        cost_values_9 = costs_data.get("costs", {}).get(slot, {}).get(rarity, {}).get(str(9), {})
        cost_values_10 = costs_data.get("costs", {}).get(slot, {}).get(rarity, {}).get(str(10), {})
        row['Blings'] = cost_values_10.get('blings', row['Blings']) - cost_values_9.get('blings', row['Blings'])
        row['Threads'] = cost_values_10.get('threads', row['Threads']) - cost_values_9.get('threads', row['Threads'])
        row['Bubbles'] = cost_values.get('bubbles', row['Bubbles'])
    else:
        cost_values_prev = costs_data.get("costs", {}).get(slot, {}).get(rarity, {}).get(str(row['Level'] - 1), {})
        row['Blings'] = cost_values.get('blings', row['Blings']) - cost_values_prev.get('blings', row['Blings'])
        row['Threads'] = cost_values.get('threads', row['Threads']) - cost_values_prev.get('threads', row['Threads'])
        row['Bubbles'] = cost_values.get('bubbles', row['Bubbles']) - cost_values_prev.get('bubbles', row['Bubbles'])
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

def add_banners(): 
    with open('./python/json/banners.json', 'r') as f:
        data = json.load(f)

    csv_file = './python/csv/clothing_items_details.csv'
    updated_rows = []

    with open(csv_file, 'r', newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        fieldnames = reader.fieldnames

        if 'Banner' not in fieldnames:
            fieldnames.append('Banner')

        for row in reader:
            if 'Banner' not in row:
                row['Banner'] = ''

            for banner, items in data['banners'].items():
                if row['Name'] in items:
                    current_banner = row['Banner'].split(', ') if row['Banner'] else []
                    if banner not in current_banner:
                        current_banner.append(banner)
                        row['Banner'] = ', '.join(current_banner)
            updated_rows.append(row)
    
    with open(csv_file, 'w', newline='') as csvfile:
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

def sort_details():
    df = pd.read_csv(f'./python/csv/clothing_items_details.csv')
    slot_order = [
        'Hair','Dress','Outerwear','Top','Bottom','Socks','Shoes',
        'Hair Accessory','Headwear','Earrings','Neckwear','Bracelet','Choker','Gloves',
        'Face Decoration','Chest Accessory','Pendant','Backpiece','Ring','Arm Decoration','Handheld',
        'Base Makeup','Eyebrows','Eyelashes','Contact Lenses','Lips'
      ]
    df['Slot'] = pd.Categorical(df['Slot'], categories=slot_order, ordered=True)
    df_sorted = df.sort_values(by=['Rarity', 'Slot', 'Outfit'], ascending=[False, True, True])
    df_sorted.to_csv(f'./python/csv/clothing_items_details.csv', index=False)

# RUN GU FIX FIRST
file = '1-5a-fix1'
merge_csv(file)
add_stats(file)
add_style()
split_csv()
add_costs()
add_labels()
add_sources()
add_banners()
add_outfits_and_recolors_details()
add_outfits_and_recolors_lvls()
sort_details()