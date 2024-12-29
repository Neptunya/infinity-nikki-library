import requests
import json

future = [
    "Batwing Pulse",
    "Hexbreaker",
    "Violet Phantom",
    "Golden Petal Drift",
    "Golden Vines",
    "Golden Dance",
    "Golden Dawn",
    "Golden Kiss",
    "Fluffy Warmth",
    "Pink Sheep",
    "Journey with Daisy",
    "Twilight Hour",
    "Top View",
    "Oceanic Hero",
    "Azure Canvas",
    "Fruit Candy"
]

def get_unobtainable_items():
    url = "http://infinitynikkilibrary.com/api/items/?source=Currently%20Unobtainable&source=Recolor"
    response = requests.get(url)

    if response.status_code == 200:
        items = response.json()
        item_names = [item["Name"] for item in items if item["Name"] not in future]
    return item_names

def update_banners_json():
    unobtainable_items = get_unobtainable_items()
    with open("./python/json/banners.json", "r") as file:
        banners_data = json.load(file)
    
    banners_data["banners"]["Past Content"] = unobtainable_items
    with open("./python/json/banners.json", "w") as file:
        json.dump(banners_data, file, indent=4)

update_banners_json()