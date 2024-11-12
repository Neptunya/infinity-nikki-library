from PIL import Image
import pytesseract
import pyautogui as pg
import pygetwindow as gw
import time
import cv2
import re
import csv

pytesseract.pytesseract.tesseract_cmd = r'C:/Program Files/Tesseract-OCR/tesseract'
pg.FAILSAFE = True
in_w = gw.getWindowsWithTitle('无限暖暖')[0]
in_w.activate()

# lots of vars
left = in_w.left
top = in_w.top

back = [57+left, 70+top]
upgrade = [1052+left, 402+top]
outfit = [95+left, 167+top]
hair = [95+left, 241+top]
item_name = [182+left, 333+top]
item_lvl = [922+left, 386+top]
initial_stat = [910+left, 175+top]
stat_interval = 38
new_stat = [1108+left, 175+top]
cost = [821+left, 434+top]

x_cards = [251, 427, 603, 779, 954, 1130]
x_cards = [x + left for x in x_cards]
x_cards_interval = 176
y_cards = [224, 470]
y_cards = [y + top for y in y_cards]
y_new_row = 595 + top

def img_to_str(n):
    file = f'./python/images/clothing_item_scraper/{n}.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/{n}_processed.png', thresh)
    return str.strip(pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/{n}_processed.png')))

def img_to_num(n):
    file = f'./python/images/clothing_item_scraper/{n}.png'
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 220, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/{n}_processed.png', thresh)
    out = pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/{n}_processed.png'), config='--psm 6')
    return int(out)

def lc(c):
    pg.leftClick(c[0], c[1])
    time.sleep(0.5)

def lc2(x, y):
    pg.leftClick(x, y)
    time.sleep(1.5)

def get_name(name):
    pg.screenshot(f'./python/images/clothing_item_scraper/name.png', region=(name[0], name[1], 150, 20))
    return img_to_str('name')

def get_lvl():
    pg.screenshot(f'./python/images/clothing_item_scraper/lvl.png', region=(item_lvl[0], item_lvl[1], 105, 22))
    return int(img_to_num('lvl'))

def get_stats(s):
    stats = []
    for i in range(5):
        n = f'stat{i}'
        x_s = s[0]
        y_s = s[1] + (stat_interval * i)
        pg.screenshot(f'./python/images/clothing_item_scraper/{n}.png', region=(x_s, y_s, 55, 22))
        stats.append(img_to_num(n))
    return stats

def get_cost():
    file = f'./python/images/clothing_item_scraper/cost.png'
    pg.screenshot(file, region=(cost[0], cost[1], 318, 32))
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 247, 255, cv2.THRESH_BINARY)[1]
    cv2.imwrite('./python/images/clothing_item_scraper/cost_processed.png', thresh)
    return pytesseract.image_to_string(Image.open('./python/images/clothing_item_scraper/cost_processed.png'), config='--psm 6')


time.sleep(2)
lc(hair)
ss = ['Hair', '']

''' upgrade test
pg.leftClick(x_cards[0], y_cards[0])
for i in range(10):
    pg.leftClick(upgrade[0], upgrade[1])
'''

'''all rows
for y in y_cards:
    for x in x_cards:
        pg.leftClick(x, y)
        pg.leftClick(back[0], back[1])

for i in range(5):
    pg.moveTo(x_cards[0], y_new_row)
    if (i == 0):
        pg.scroll(-850)
    else: 
        pg.scroll(-1725)
    for x in x_cards:
        pg.leftClick(x, y_new_row)
        pg.leftClick(back[0], back[1])'''

'''grab item name

for i in range(6):
    sc_left = sc[0] + (i * x_cards_interval)
    file = f'./python/images/clothing_item_scraper/{i}.png'
    pg.screenshot(file, region=(sc_left, sc[1], 150, 20))
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    thresh = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)[1]
    cv2.imwrite(f'./python/images/clothing_item_scraper/{i}.png', thresh)
    print(pytesseract.image_to_string(Image.open(f'./python/images/clothing_item_scraper/{i}.png')))
'''

fields = ['Name', 'Slot', 'Suit', 'Level', 'Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool', 'Blings', 'Threads', 'Bubbles']
r = []
rows = []
# grab item name
name = get_name(item_name)
r.append(name)
r.extend(ss)
lc2(x_cards[0], y_cards[0])
time.sleep(2)

# lvl 0 stats
lvl = get_lvl()
r.append(lvl - 1)
r.extend(get_stats(initial_stat))
for i in range(3):
    r.append(0)

print(r)
rows.append(r.copy())
r.clear()

#lvl 1 stats
r.append(name)
r.extend(ss)
r.append(lvl)
r.extend(get_stats(new_stat))
c = re.findall(r'\d+', get_cost())
c = [int(num) for num in c]
blings = c[0]
thread = c[1]
bubs = c[2]
r.extend(c)
print(r)
rows.append(r.copy())
r.clear()

# subsequent lvls
while (lvl < 10):
    lc(upgrade)
    r.append(name)
    r.extend(ss)
    lvl = get_lvl()
    r.append(lvl)
    r.extend(get_stats(new_stat))
    c = re.findall(r'\d+', get_cost())
    c = [int(num) for num in c]
    r.extend(c)
    print(r)
    rows.append(r.copy())
    r.clear()
print(rows)
f = './python/csv/clothing_item_data.csv'
with open(f, 'w', newline='') as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerow(fields)
    csvwriter.writerows(rows)
'''
TODO: 
- put above into get_item_details() func
- go through full item list row by row
  - stop read when no item name 
  - or if program attempts to scroll and clothing item has already been read
- add suits to csv
  - use compendium menu
  - go through entries outfit by outfit and make a dictionary
    - key = item | value = outfit 
  - go through csv row by row and search through dict for outfit and fill out csv
'''