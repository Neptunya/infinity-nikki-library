import json
import pandas as pd
import csv

with open('./python/json/costs.json') as f:
    costs_data = json.load(f)

def split_csv():
    df = pd.read_csv('./python/csv/clothing_item_data.csv')
    t1 = df.drop(labels=['Labels', 'Source'], axis=1, inplace=False)
    t1.to_csv('./python/csv/clothing_item_lvls.csv', index=False)
    
    t2 = df.drop(labels=['Level','Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool', 'Blings', 'Threads', 'Bubbles'], axis=1, inplace=False)
    t2 = t2.drop_duplicates(subset=['Name'])
    t2.to_csv('./python/csv/clothing_items.csv', index=False)

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
    csv_file = './python/csv/clothing_items.csv'
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
            
    with open('./python/csv/clothing_items.csv', 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(updated_rows)

def add_sources():
    with open('./python/json/source.json', 'r') as f:
        data = json.load(f)
    csv_file = './python/csv/clothing_items.csv'
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
            
    with open('./python/csv/clothing_items.csv', 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(updated_rows)

def add_outfits_and_recolors(f):
    df = pd.read_csv(f'./python/csv/{f}.csv')
    with open('./python/json/outfits.json') as f:
        outfits_data = json.load(f)

    for item_name, item_info in outfits_data["outfits"].items():
        outfit_name = item_info.get("Outfit", "Unknown Outfit")
        df.loc[df['Name'] == item_name, 'Outfit'] = outfit_name

        recolors = item_info.get("Recolor", [])
        for recolor_dict in recolors:
            for recolor_name, recolored_outfit in recolor_dict.items():
                matching_rows = df[df['Name'] == item_name].copy()

                matching_rows['Name'] = recolor_name
                matching_rows['Outfit'] = recolored_outfit
                matching_rows['Source'] = f'A recolor of {item_name} from {outfit_name}.'

                df = pd.concat([df, matching_rows], ignore_index=True)
    df.to_csv(f'./python/csv/{f}.csv', index=False)

# split_csv()
# add_costs()
# add_labels()
# add_sources()
# add_outfits_and_recolors()

'''TODO: 
- makeup
  - csv w/makeup name, slot, rarity, and source
- turn csvs into sql
- generate table in db page w/sql call
- generate popup pg for items
- sketches + materials
'''