import json
import pandas as pd

costs_data = {}

def get_costs(row):
    slot, rarity, level = row['Slot'], str(row['Rarity']), str(row['Level'])
    cost_values = costs_data.get("costs", {}).get(slot, {}).get(rarity, {}).get(level, {})
    row['blings'] = cost_values.get('blings', row['Blings'])
    row['threads'] = cost_values.get('threads', row['Threads'])
    row['bubbles'] = cost_values.get('bubbles', row['Bubbles'])
    return row

def add_costs():
    with open('./python/json/costs.json') as f:
        costs_data = json.load(f)
    df = pd.read_csv('./python/csv/clothing_item_data.csv')
    df = df.apply(get_costs, axis=1)
    df.to_csv("./python/csv/clothing_item_data.csv", index=False)

def add_outfits_and_recolors():
    df = pd.read_csv('./python/csv/clothing_item_data.csv')
    with open('./python/json/outfits.json') as f:
        outfits_data = json.load(f)

    for item_name, item_info in outfits_data["outfits"].items():
        outfit_name = item_info["Outfit"]
        df.loc[df['Name'] == item_name, 'Outfit'] = outfit_name
        for recolor_dict in item_info.get("Recolor"):
            for recolor_name, recolored_outfit in recolor_dict.items():
                matching_rows = df[df['Name'] == item_name].copy()
                matching_rows['Name'] = recolor_name
                matching_rows['Outfit'] = recolored_outfit
                df = pd.concat([df, matching_rows], ignore_index=True)
    df.to_csv('./python/csv/clothing_item_data.csv', index=False)
    
#add_costs()
#add_outfits_and_recolors()


'''TODO: 
- add source to csv
	- also via dict {item: source}
- labels?
  - filter in compendium
  - dict {label: [items]}
- makeup
  - csv w/makeup name, slot, rarity, and source
- code to add abilities and source, recolors come last
- sketches + materials
'''