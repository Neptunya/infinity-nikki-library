from scraper_helper import *
import json

# 1920x1080
img_box = [657, 214, 311, 434]
name_box = [1340, 125, 427, 46]
compendium_interval = 166
name_card = [579, 215, 250, 38]
card_x_interval = 472
card_y_interval = 179
hay_img = [1300, 403, 553, 332]
source_offset = [60, 30, 420, 75]

with open('./python/json/labels.json') as f:
    labels_data = json.load(f)
    
with open('./python/json/colors.json') as f:
    colors_data = json.load(f)

with open('./python/json/source.json') as f:
    source_data = json.load(f)
    
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

def img_to_str_mod2(n):
    file = f'./python/images/clothing_item_scraper/{n}.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 155, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/{n}_processed.png', thresh)
    text = str.strip(pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/{n}_processed.png')))
    filtered_text = text.replace("\n", " ")
    filtered_text = re.sub(r"[^a-zA-Z' .-]", "", filtered_text)
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
            pg.moveTo(197, 781)
            pg.scroll(-400)
        else: 
            pg.moveTo(197, 781)
            pg.scroll(-607)
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
                pg.screenshot('./python/images/clothing_item_scraper/name.png', region=(name_card[0] + (j * card_x_interval), name_card[1] + (i * card_y_interval), name_card[2], name_card[3]))
                name = img_to_str_mod('name')
                if name.strip() or ():
                    print(name)
                    add_unique_value(label, name)
                elif i == 0 and j == 0:
                    # in case threads of reunion blank entry
                    print(name)
                else:
                    with open('./python/json/colors.json', 'w') as f:
                        json.dump(labels_data, f, indent=4)
                    exit_loops = True
                    break

# color filter in compendium doesn't work
def scrape_colors(color):
    exit_loops = False
    for i in range(4):
        if exit_loops:
            break
        else:
            for j in range(3):
                pg.screenshot('./python/images/clothing_item_scraper/name.png', region=(name_card[0] + (j * card_x_interval), name_card[1] + (i * card_y_interval), name_card[2], name_card[3]))
                name = img_to_str_mod('name')
                if name.strip():
                    print(name)
                    add_unique_value(color, name)
                elif i == 0 and j == 0:
                    # in case threads of reunion blank entry
                    print(name)
                else:
                    with open('./python/json/colors.json', 'w') as f:
                        json.dump(colors_data, f, indent=4)
                    exit_loops = True
                    break

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
    data = {}
    data[name] = source
    source_data.update(data)
    with open('./python/json/source.json', 'w') as f:
        json.dump(source_data, f, indent=4)

def scrape_sources():
    prev_name = ""
    curr_name = img_to_str(sc("name", name_box))
    i = 0
    while prev_name != curr_name:
        get_source(curr_name)
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

in_w.activate()
pg.moveTo(90, 395)
time.sleep(2)
scrape_sources()
pg.moveTo(0, 0)


# scrape_labels("Simple")