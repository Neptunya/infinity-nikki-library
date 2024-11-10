import pandas as pd
from PIL import Image

def crop_map_img(num):
    im = Image.open(fr"src/images/photo-expeditions/{num}_map.png")
    
    original_width, original_height = im.size
    target_width, target_height = 1440, 810
    
    left = (original_width - target_width) / 2
    top = (original_height - target_height) / 2
    right = (original_width + target_width) / 2
    bottom = (original_height + target_height) / 2
    
    cropped_im = im.crop((left, top, right, bottom))
    save_loc = f"src/images/photo-expeditions/{num}_map_cropped.png"
    cropped_im.save(save_loc, format="PNG")
    return save_loc

data = pd.read_csv('src/scripts/python/csv/IN Data - Photo Expeditions.csv')

photo_expedition_cards = []
missing_entries = []
for _, row in data.iterrows():
    if pd.isnull(row['Name']):
        missing_entries.append(f"{row['#']}")
        card = f"""
            <div class="card" id="loc-{row['#']}">
                <h2>{row['#']}. Has yet to be discovered</h2>
                <p>Contributed By: This could be you!</p>
            </div>"""
    else:
        save_loc = crop_map_img(f"{row['#']}")
        card = f"""
            <div class="card" id="loc-{row['#']}">
                <h2>{row['#']}. {row['Name']}</h2>
                <p>Contributed By: {row['Contributor']}<br>{row['Teleport']}, {row['Area']}</p>
                <img src="/{save_loc}" />
                <img src="/src/images/photo-expeditions/{row['#']}_pic.jpeg" />
            </div>"""
    photo_expedition_cards.append(str(card))

with open('src/pages/resources/photo-expeditions.astro', 'w') as f:
    f.write(f"""---
import PhotoExpeditionsLayout from '../../layouts/PhotoExpeditionsLayout.astro';
import '../../styles/global.css';
import '../../styles/photo-expeditions.css';
---

<PhotoExpeditionsLayout>
    <div class="card" id="loc-0">
        <p>
            Enter a number above <br>
            We are currently missing entries for photo spots: {", ".join(missing_entries)} <br>
        </p>
    </div>
    {"".join(photo_expedition_cards)}
</PhotoExpeditionsLayout>
""")