from scraper_helper import *
import json

# 1920x1080
img_box = [657, 214, 311, 434]
name_box = [1340, 125, 427, 46]
compendium_interval = 166
name_card = [579, 215, 250, 38]
card_x_interval = 472
card_y_interval = 179

with open('./python/json/labels.json') as f:
    labels_data = json.load(f)

def sc(name, vals): 
    pg.screenshot(f'./python/images/clothing_item_scraper/{name}.png', region=(vals[0], vals[1], vals[2], vals[3]))
    return name

def add_unique_value(label, value):
    if label in labels_data["labels"] and value not in labels_data["labels"][label]:
        labels_data["labels"][label].append(value)

def img_to_str_mod(n):
    file = f'./python/images/clothing_item_scraper/{n}.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 155, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/{n}_processed.png', thresh)
    text = str.strip(pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/{n}_processed.png')))
    filtered_text = re.sub(r"[^a-zA-Z' -]", "", text)
    while filtered_text.startswith(" ") or filtered_text.startswith("-") or filtered_text.startswith("'"):
        filtered_text = filtered_text[1:]
    while filtered_text.endswith(" ") or filtered_text.endswith("-") or filtered_text.endswith("'"):
        filtered_text = filtered_text[1:]
    return filtered_text

def scrape_imgs():
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    i = 0
    while prev_name != curr_name:
        sc(f'/item_img/{curr_name}', img_box)
        prev_name = curr_name
        if i < 3:
            lc2(90, 395 + (i * compendium_interval))
        elif i == 3:
            pg.moveTo(90, 791)
            pg.scroll(-400)
        else: 
            pg.moveTo(90, 791)
            pg.scroll(-600)
        pg.click()
        time.sleep(0.5)
        curr_name = img_to_str(sc("name", name_box))
        i += 1

def scrape_labels(label):
    exit_loops = False
    for i in range(4):
        if exit_loops:
            break
        else:
            for j in range(3):
                pg.screenshot(f'./python/images/clothing_item_scraper/name{i}{j}.png', region=(name_card[0] + (j * card_x_interval), name_card[1] + (i * card_y_interval), name_card[2], name_card[3]))
                name = img_to_str_mod(f'name{i}{j}')
                if name.strip():
                    print(name)
                    add_unique_value(label, name)
                else:
                    with open('./python/json/labels.json', 'w') as f:
                        json.dump(labels_data, f, indent=4)
                    exit_loops = True
                    break

in_w.activate()
pg.moveTo(1846, 254)
time.sleep(2)
scrape_labels("Simple")
pg.moveTo(0, 0)