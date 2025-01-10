from PIL import Image
import pytesseract
import pyautogui as pg
import pygetwindow as gw
import time
import cv2
import numpy as np
import re
import pydirectinput as pdi

pytesseract.pytesseract.tesseract_cmd = r'C:/Program Files/Tesseract-OCR/tesseract'
pg.FAILSAFE = True
pg.PAUSE = 0.5
in_w = gw.getWindowsWithTitle('Infinity Nikki')[0]

back = [76, 59]
upgrade = [1555, 551]
item_name = [263, 452, 212, 28]
item_lvl = [1370, 529, 158, 35]
initial_stat = [1350, 215, 95, 33]
stat_interval = 57
new_stat = [1612, 215, 115, 33]
rarity = [352, 404, 129, 34]

x_cards = [358, 625, 887, 1151, 1416, 1682]
x_cards_interval = 265
y_cards = [284, 653, 860]
y_cards_interval = [0, 369, 554, 576]
# 576 is last row

ss = ['Test', '']
fields = ['Name', 'Rarity', 'Slot', 'Outfit', 'Level', 'Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool', 'Blings', 'Threads', 'Bubbles', 'Labels', 'Source']
r = []
rows = []

def img_to_str(n):
    file = f'./python/images/clothing_item_scraper/{n}.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 197, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/{n}_processed.png', thresh)
    text = str.strip(pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/{n}_processed.png')))
    filtered_text = re.sub(r"[^a-zA-Z' -]", "", text)
    while filtered_text.startswith(" ") or filtered_text.startswith("-") or filtered_text.startswith("'"):
        filtered_text = filtered_text[1:]
    while filtered_text.endswith(" ") or filtered_text.endswith("-") or filtered_text.endswith("'"):
        filtered_text = filtered_text[:-1]
    return filtered_text

def img_to_num(n):
    file = f'./python/images/clothing_item_scraper/{n}.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 220, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/{n}_processed.png', thresh)
    out = pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/{n}_processed.png'), config='--psm 6')
    return int(out)

def lc(c):
    pg.moveTo(c[0], c[1])
    time.sleep(0.5)
    pg.click()

def lc2(x, y):
    pg.moveTo(x, y)
    time.sleep(0.5)
    pg.click()
    
def lc2_v2(x, y):
    pg.moveTo(x, y)
    time.sleep(0.5)
    pg.click()
    time.sleep(0.5)
    pg.mouseDown()
    time.sleep(0.2)
    pg.mouseUp()
    print("lc2_v2 click")

def get_name(x_mod, y_mod, last=False):
    if last: 
        pg.screenshot(f'./python/images/clothing_item_scraper/name.png', region=(item_name[0]+x_mod, item_name[1]+576, item_name[2], item_name[3]))
    else:
        pg.screenshot(f'./python/images/clothing_item_scraper/name.png', region=(item_name[0]+x_mod, item_name[1]+y_mod, item_name[2], item_name[3]))
    return img_to_str('name')

star_icon = './python/images/clothing_item_scraper/star.png'
def get_rarity(x_mod, y_mod):
    hay = f'./python/images/clothing_item_scraper/rarity.png'
    pg.screenshot(hay, region=(rarity[0]+x_mod, rarity[1]+y_mod, rarity[2], rarity[3]))
    img_rgb = cv2.imread(hay)
    img_gray = cv2.cvtColor(img_rgb, cv2.COLOR_BGR2GRAY)
    template = cv2.imread(star_icon, cv2.IMREAD_GRAYSCALE)
    
    res = cv2.matchTemplate(img_gray, template, cv2.TM_CCOEFF_NORMED)
    threshold = 0.80
    loc = np.where(res >= threshold)
    points = list(zip(*loc[::-1]))  # List of points (x, y) where matches were found
    
    # Function to check if a point is within `min_distance` of any point in a list
    min_distance = 8
    def is_far_enough(point, point_list, min_distance):
        for p in point_list:
            if np.sqrt((point[0] - p[0]) ** 2 + (point[1] - p[1]) ** 2) < min_distance:
                return False
        return True

    # Filter points to remove overlapping detections
    filtered_points = []
    for pt in points:
        if is_far_enough(pt, filtered_points, min_distance):
            filtered_points.append(pt)

    return len(filtered_points)

def get_lvl():
    pg.screenshot(f'./python/images/clothing_item_scraper/lvl.png', region=(item_lvl[0], item_lvl[1], item_lvl[2], item_lvl[3]))
    try:
        out = img_to_num('lvl')
    except ValueError:
        out = 20
    return out

def get_stats(s):
    stats = []
    for i in range(5):
        n = f'stat{i}'
        pg.screenshot(f'./python/images/clothing_item_scraper/{n}.png', region=(s[0], s[1] + (stat_interval * i), s[2], s[3]))
        try:
            stats.append(img_to_num(n))
        except ValueError:
            stats.append(0)
    return stats

def testMouse():
    pg.moveTo(0, 0)
    time.sleep(1)
    pg.moveTo(x_cards[0], y_cards[0])
    time.sleep(1)
    pg.moveTo(x_cards[0], y_cards[1])
    time.sleep(1)
    pg.moveTo(x_cards[0], y_cards[0])
    time.sleep(1)
    pg.click()
    

def get_item_details(x_card, y_card, last=False):
    r.clear()
    # grab item name
    x_mod = x_card * x_cards_interval
    y_mod = y_cards_interval[y_card]
    if last:
        y_mod = 576
    name = get_name(x_mod, y_mod, last)
    rarity = get_rarity(x_mod, y_mod)
    r.append(name)
    r.append(rarity)
    r.extend(ss)
    time.sleep(1.5)
    lc2(x_cards[x_card], y_cards[y_card])
    pg.moveTo(100, 100)
    time.sleep(2)

    # lvl 0 stats
    lvl = get_lvl()
    r.append(lvl - 1)
    r.extend(get_stats(initial_stat))
    r.extend([0] * 3)
    r.extend([''] * 2)

    print(r)
    rows.append(r.copy())
    r.clear()

    #lvl 1 stats
    r.append(name)
    r.append(rarity)
    r.extend(ss)
    r.append(lvl)
    r.extend(get_stats(new_stat))
    r.extend([0] * 3)
    r.extend([''] * 2)
    print(r)
    rows.append(r.copy())
    r.clear()
    
    # subsequent lvls
    pg.moveTo(upgrade[0], upgrade[1])
    while (lvl < 10):
        pg.click()
        r.append(name)
        r.append(rarity)
        r.extend(ss)
        lvl = get_lvl()
        r.append(lvl)
        r.extend(get_stats(new_stat))
        r.extend([0] * 3)
        r.extend([''] * 2)
        print(r)
        rows.append(r.copy())
        r.clear()
    lc2(back[0], back[1])
    time.sleep(2)
    
def get_item_details_mod(x_card, y_card, slot, last=False):
    ss = [slot, '']
    r.clear()
    # grab item name
    x_mod = x_card * x_cards_interval
    y_mod = y_cards_interval[y_card]
    if last:
        y_mod = 576
    name = get_name(x_mod, y_mod, last)
    rarity = get_rarity(x_mod, y_mod)
    r.append(name)
    r.append(rarity)
    r.extend(ss)
    time.sleep(2)
    lc2(x_cards[x_card], y_cards[y_card])
    pg.moveTo(100, 100)
    time.sleep(2)

    # lvl 0 stats
    lvl = get_lvl()
    r.append(lvl - 1)
    r.extend(get_stats(initial_stat))
    r.extend([0] * 3)
    r.extend([''] * 2)

    print(r)
    rows.append(r.copy())
    r.clear()

    #lvl 1 stats
    r.append(name)
    r.append(rarity)
    r.extend(ss)
    r.append(lvl)
    r.extend(get_stats(new_stat))
    r.extend([0] * 3)
    r.extend([''] * 2)
    print(r)
    rows.append(r.copy())
    r.clear()
    
    # subsequent lvls
    pg.moveTo(upgrade[0], upgrade[1])
    while (lvl < 10):
        pg.click()
        r.append(name)
        r.append(rarity)
        r.extend(ss)
        lvl = get_lvl()
        r.append(lvl)
        r.extend(get_stats(new_stat))
        r.extend([0] * 3)
        r.extend([''] * 2)
        print(r)
        rows.append(r.copy())
        r.clear()
    lc2(back[0], back[1])
    time.sleep(2)