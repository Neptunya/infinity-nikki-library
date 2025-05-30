from scraper_helper import *
import json
import csv
import winsound

# 1920x1080
img_box = [647, 214, 311, 434]
name_box = [1340, 125, 475, 46]
compendium_interval = 166
name_card = [579, 215, 250, 38]
card_x_interval = 472
card_y_interval = 179
hay_img = [1300, 403, 553, 332]
source_offset = [60, 30, 420, 75]
expand_items = [1650, 992]

with open('./python/json/labels.json') as f:
    labels_data = json.load(f)
    
with open('./python/json/source.json') as f:
    source_data = json.load(f)

    
def sc(name, vals): 
    pg.screenshot(f'./python/images/clothing_item_scraper/{name}.png', region=(vals[0], vals[1], vals[2], vals[3]))
    return name

def add_unique_value(label, value):
    if value not in labels_data["labels"][label]:
        labels_data["labels"][label].append(value)
        print(value)
        with open('./python/json/labels.json', 'w') as f:
            json.dump(labels_data, f, indent=4)

def img_to_str_mod(n):
    file = f'./python/images/clothing_item_scraper/n.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 155, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/n_processed.png', thresh)
    text = str.strip(pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/n_processed.png')))
    filtered_text = re.sub(r"[^a-zA-Z' -]", "", text)
    while filtered_text.startswith(" ") or filtered_text.startswith("-") or filtered_text.startswith("'"):
        filtered_text = filtered_text[1:]
    while filtered_text.endswith(" ") or filtered_text.endswith("-") or filtered_text.endswith("'"):
        filtered_text = filtered_text[:-1]
    return filtered_text

def img_to_str_mod2(n):
    file = f'./python/images/clothing_item_scraper/n.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 155, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/n_processed.png', thresh)
    text = str.strip(pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/n_processed.png')))
    filtered_text = text.replace("\n", " ")
    filtered_text = re.sub(r"[^a-zA-Z' .-]", "", filtered_text)
    while filtered_text.startswith(" ") or filtered_text.startswith("-") or filtered_text.startswith("'"):
        filtered_text = filtered_text[1:]
    while filtered_text.endswith(" ") or filtered_text.endswith("-") or filtered_text.endswith("'"):
        filtered_text = filtered_text[:-1]
    return filtered_text

scale = 3
def img_to_num_mod(n):
    file = f'./python/images/clothing_item_scraper/{n}.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    w = int(gray.shape[1] * scale)
    h = int(gray.shape[0] * scale)
    upscaled = cv2.resize(gray, (w, h), interpolation=cv2.INTER_LANCZOS4)
    thresh = cv2.threshold(upscaled, 195, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/n_processed.png', thresh)
    out = pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/n_processed.png'),
                                      config='--psm 7 -c tessedit_char_whitelist=0123456789')
    out = re.sub(r'\D', '', out)
    return int(out)

def scrape_imgs():
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    i = 0
    while prev_name != curr_name:
        sc(f'../../../public/images/items/{curr_name}', img_box)
        prev_name = curr_name
        if i < 3:
            lc2(90, 395 + (i * compendium_interval))
        elif i == 3:
            pg.moveTo(197, 781)
            pg.scroll(-400)
        else: 
            pg.moveTo(197, 781)
            pg.scroll(-607)
        pg.click()
        time.sleep(0.5)
        curr_name = img_to_str(sc("name", name_box))
        i += 1

def single_img():
    name = img_to_str(sc("name", name_box))
    print(name)
    sc(f'../../../public/images/items/{name}', img_box)

def single_item():
    name = img_to_str(sc("name", name_box))
    get_glow_up_stats(name)
    #get_source(name)
    sc(f'../../../public/images/items/{name}', img_box)

def scrape_labels(label):
    for i in range(4):
        for j in range(3):
            pg.screenshot('./python/images/clothing_item_scraper/name.png', region=(name_card[0] + (j * card_x_interval), name_card[1] + (i * card_y_interval), name_card[2], name_card[3]))
            name = img_to_str_mod('name')
            if name.strip():
                add_unique_value(label, name)
            else:
                with open('./python/json/labels.json', 'w') as f:
                    json.dump(labels_data, f, indent=4)
                return 

def get_source(name):
    needle_img = './python/images/clothing_item_scraper/divider.png'
    hay_img = './python/images/clothing_item_scraper/hay.png'
    pg.screenshot(hay_img)
    img_rgb = cv2.imread(hay_img)
    img_gray = cv2.cvtColor(img_rgb, cv2.COLOR_BGR2GRAY)
    template = cv2.imread(needle_img, cv2.IMREAD_GRAYSCALE)
    res = cv2.matchTemplate(img_gray, template, cv2.TM_CCOEFF_NORMED)
    _, _, _, max_loc = cv2.minMaxLoc(res)
    pg.screenshot('./python/images/clothing_item_scraper/source.png', region=(
        max_loc[0]+source_offset[0], max_loc[1]+source_offset[1], source_offset[2], source_offset[3]))
    source = img_to_str_mod2('source')
    print(f"{name}: {source}")
    if name not in source_data:
        source_data.update({name: source})
        with open('./python/json/source.json', 'w') as f:
            json.dump(source_data, f, indent=4)

def scrape_sources():
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    i = 0
    while prev_name != curr_name:
        #get_source(curr_name)
        prev_name = curr_name
        if i < 3:
            lc2(90, 395 + (i * compendium_interval))
        elif i == 3:
            pg.moveTo(197, 781)
            pg.scroll(-400)
        else: 
            pg.moveTo(197, 777)
            pg.scroll(-607)
        
        pg.click()
        time.sleep(0.5)
        curr_name = img_to_str(sc("name", name_box))
        i += 1

stat_window = [1513, 228, 50, 19]
stat_y_interval = 53
stat_x_interval = 246
gu_data = './python/csv/unprocessed/1-5a-gu.csv'
def get_glow_up_stats(n):
    r = [n, 11]
    n = 'gu_stat'
    for i in range(3):
        pg.screenshot(f'./python/images/clothing_item_scraper/s.png', region=(
            stat_window[0],  stat_window[1]+(stat_y_interval * i),  stat_window[2],  stat_window[3]))
        try:
            r.append(img_to_num_mod("s"))
        except ValueError:
            r.append(0)
    for i in range(2):
        pg.screenshot(f'./python/images/clothing_item_scraper/s.png', region=(
            stat_window[0]+stat_x_interval,  stat_window[1]+(stat_y_interval * i),  stat_window[2],  stat_window[3]))
        try:
            r.append(img_to_num_mod("s"))
        except ValueError:
            r.append(0)
    with open(gu_data, 'a', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(r)

new_data = './python/csv/unprocessed/1-5a-gu.csv'
def glow_up_stats_to_new(n, rarity):
    r = [n, rarity, None, None, 11]
    
    for i in range(3):
        pg.screenshot(f'./python/images/clothing_item_scraper/{n}.png', region=(
            stat_window[0],  stat_window[1]+(stat_y_interval * i),  stat_window[2],  stat_window[3]))
        try:
            r.append(img_to_num_mod(n))
        except ValueError:
            r.append(0)
    for i in range(2):
        pg.screenshot(f'./python/images/clothing_item_scraper/{n}.png', region=(
            stat_window[0]+stat_x_interval,  stat_window[1]+(stat_y_interval * i),  stat_window[2],  stat_window[3]))
        try:
            r.append(img_to_num_mod(n))
        except ValueError:
            r.append(0)
    
    r.extend([0, 0, 0, None, None])
    
    with open(new_data, 'a', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(r)

def scrape_glow_up_stats():
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    i = 0
    while prev_name != curr_name:
        get_glow_up_stats(curr_name)
        prev_name = curr_name
        if i < 3:
            lc2(90, 395 + (i * compendium_interval))
        elif i == 3:
            pg.moveTo(197, 781)
            pg.scroll(-400)
        else: 
            pg.moveTo(197, 777)
            pg.scroll(-607)
        
        pg.click()
        time.sleep(0.5)
        curr_name = img_to_str(sc("name", name_box))
        i += 1

def extract_unique_vals(data):
    unique_values = set()

    if isinstance(data, dict):
        for value in data.values():
            unique_values.update(extract_unique_vals(value))
    elif isinstance(data, list):
        for item in data:
            unique_values.update(extract_unique_vals(item))
    else:
        unique_values.add(data)

    return unique_values

def print_unique_vals():
    file_path = './python/json/source.json'
    with open(file_path, 'r') as file:
        json_data = json.load(file)

    unique_values = extract_unique_vals(json_data)
    sorted_values = sorted(unique_values)
    print('Unique Values in JSON:')
    for value in sorted_values:
        print(value)

def print_items_csv(name):
    f = f'./python/csv/unprocessed/{name}'
    unique_names = set()
    with open(f, mode='r', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for row in reader:
            unique_names.add(row['Name'])
    for unique_name in unique_names:
        print(f'"{unique_name}",')

def print_no_source():
    file_path = './python/csv/clothing_items_details.csv'
    with open(file_path, "r", encoding="utf-8") as csvfile:
        reader = csv.DictReader(csvfile)
    
        print("Rows where 'Source' is empty or null:")
        for row in reader:
            if not row['Source']: 
                print(row)

def print_new_makeup():
    makeup = set()
    with open('./python/csv/makeup.csv', mode='r', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for row in reader:
            makeup.add(row['Name'])
    for i in range(4):
        for j in range(3):
            pg.screenshot('./python/images/clothing_item_scraper/name.png', region=(name_card[0] + (j * card_x_interval), name_card[1] + (i * card_y_interval), name_card[2], name_card[3]))
            name = img_to_str_mod('name').strip()
            if name and name not in makeup:
                print(name)

outfits_json = './python/json/outfits.json'
def get_evos(evos):
    outfit_names = []
    outfit_names.append(img_to_str(sc("name", name_box)))
    evo_interval = 70
    evo_start = [1201, 423]
    
    for i in range(evos - 1):
        if i == 3:
            lc2(evo_start[0], evo_start[1] + 250)
        else: 
            lc2(evo_start[0], evo_start[1] + (evo_interval * i))
        time.sleep(0.5)
        outfit_names.append(img_to_str(sc("name", name_box)))
    
    item_names = []
    
    lc2(evo_start[0], evo_start[1] - evo_interval)
    lc(expand_items)
    names = scrape_outfit_items()
    item_names.append(names)
    lc(back)
    
    for i in range(evos - 1):
        if i == 3:
            lc2(evo_start[0], evo_start[1] + 250)
        else: 
            lc2(evo_start[0], evo_start[1] + (evo_interval * i))
        time.sleep(0.5)
        lc(expand_items)
        names = scrape_outfit_items()
        item_names.append(names)
        lc(back)
    
    json_str = ""
    
    if evos == 1:
        for i in range(len(item_names[0])):
                json_str += f'"{item_names[0][i]}": {{"Outfit": "{outfit_names[0]}", "Recolor": [{{}}]}},\n'
    
    if evos == 2:
        for i in range(len(item_names[0])):
            json_str += f'"{item_names[0][i]}": {{"Outfit": "{outfit_names[0]}", "Recolor": [{{"{item_names[1][i]}": "{outfit_names[1]}"}}]}},\n'
    
    if evos == 4:
        for i in range(len(item_names[0])):
            json_str += f'''
            "{item_names[0][i]}": {{"Outfit": "{outfit_names[0]}", "Recolor": [{{
                "{item_names[1][i]}": "{outfit_names[1]}",
                "{item_names[2][i]}": "{outfit_names[2]}",
                "{item_names[3][i]}": "{outfit_names[3]}"
            }}]}},
            '''
    if evos == 5:
        for i in range(len(item_names[0])):
            json_str += f'''
            "{item_names[0][i]}": {{"Outfit": "{outfit_names[0]}", "Recolor": [{{
                "{item_names[1][i]}": "{outfit_names[1]}",
                "{item_names[2][i]}": "{outfit_names[2]}",
                "{item_names[3][i]}": "{outfit_names[3]}",
                "{item_names[4][i]}": "{outfit_names[4]}"
            }}]}},
            '''
    
    print(json_str)

def scrape_outfit_items():
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    if not curr_name.strip():
        curr_name = prev_name + "_fix"
    image_name = curr_name.replace(':', '_')
        
    i = 0
    
    names = []
    
    while prev_name != curr_name:
        #get_glow_up_stats(curr_name)
        #get_source(curr_name)
        time.sleep(0.5)
        sc(f'../../../public/images/items/{image_name}', img_box)
        
        names.append(curr_name)
        prev_name = curr_name
        
        if i < 3:
            lc2(90, 395 + (i * compendium_interval))
        elif i == 3:
            pg.moveTo(197, 781)
            pg.scroll(-400)
        else: 
            pg.moveTo(197, 830)
            pg.scroll(-607)
        
        pg.click()
        time.sleep(0.5)
        curr_name = img_to_str(sc("name", name_box))
        image_name = curr_name.replace(':', '_')
        i += 1
    
    return names

def scrape_outfit_stats():
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    if not curr_name.strip():
        curr_name = prev_name + "_fix"
    image_name = curr_name.replace(':', '_')
        
    i = 0
    
    names = []
    
    while prev_name != curr_name:
        get_glow_up_stats(curr_name)
        time.sleep(0.5)
        
        names.append(curr_name)
        prev_name = curr_name
        
        if i < 3:
            lc2(90, 395 + (i * compendium_interval))
        elif i == 3:
            pg.moveTo(197, 781)
            pg.scroll(-400)
        else: 
            pg.moveTo(197, 830)
            pg.scroll(-607)
        
        pg.click()
        time.sleep(0.5)
        curr_name = img_to_str(sc("name", name_box))
        i += 1
    
def scrape_new_suit():
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    i = 0
    while prev_name != curr_name:
        get_glow_up_stats(curr_name)
        #get_source(curr_name)
        sc(f'../../../public/images/items/{curr_name}', img_box)
        prev_name = curr_name
        if i < 3:
            lc2(90, 395 + (i * compendium_interval))
        elif i == 3:
            pg.moveTo(197, 781)
            pg.scroll(-400)
        else: 
            pg.moveTo(197, 830)
            pg.scroll(-607)
        
        pg.click()
        time.sleep(0.5)
        curr_name = img_to_str(sc("name", name_box))
        i += 1

def scrape_recolor_pics():
    recolor_name = img_to_str(sc("name", name_box))
    if ':' in recolor_name:
        split_index = recolor_name.index(':')
        outfit = recolor_name[:split_index].strip()
        recolor = recolor_name[split_index:].strip()
    else:
        outfit = recolor_name.strip()
        recolor = ""
    
    with open("./python/txt/recolors.txt", "a", encoding="utf-8") as f:
        f.write(f"'{outfit}': '{recolor}',\n")
    
    lc(expand_items)
    
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    if not curr_name.strip():
        curr_name = prev_name + "_fix"
    image_name = curr_name.replace(':', '_')
        
    i = 0
    
    names = []
    
    while prev_name != curr_name:
        time.sleep(0.5)
        sc(f'../../../public/images/items/{image_name}', img_box)
        
        names.append(curr_name)
        prev_name = curr_name
        
        if i < 3:
            lc2(90, 395 + (i * compendium_interval))
        elif i == 3:
            pg.moveTo(197, 781)
            pg.scroll(-400)
        else: 
            pg.moveTo(197, 830)
            pg.scroll(-607)
        
        pg.click()
        time.sleep(0.5)
        curr_name = img_to_str(sc("name", name_box))
        image_name = curr_name.replace(':', '_')
        i += 1
    
    return names


time.sleep(0.5)
#get_evos(5)
#scrape_outfit_stats()
#scrape_outfit_items()
scrape_recolor_pics()
#single_img()
#single_item()
pg.moveTo(10, 10)
winsound.PlaySound("SystemExclamation", winsound.SND_ALIAS)

