from scraper_helper import *
import csv
import os
import enchant
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from dotenv import load_dotenv
import json

pg.FAILSAFE = True
pg.PAUSE = 0.5

ignore = dict.fromkeys(["Noir Creed",
						"Homeward Path",
						"Back on Top",
						"Cool Summer",
						"Chilling Breeze",
						"Continuation of Vows",
						"New Trial",
						"Prophecies of Coming Days",
						"Forging Legends",
						"Universe's Offspring",
						"Dominating Realms",
						"Dancing Along Star Trails",
						"Pink  Blue",
						"Sweet  Cool"
						"Quiet  Still"])

app = Flask(__name__)
load_dotenv()
db_password = os.getenv("DB_PASSWORD")
app.config['SQLALCHEMY_DATABASE_URI'] = f'postgresql://postgres:{db_password}@localhost:5432/infinity_nikki_items'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class ItemDetails(db.Model):
    __tablename__ = 'item_details'
    Name = db.Column(db.String(255), primary_key=True)
    Rarity = db.Column(db.Integer, nullable=True)
    Slot = db.Column(db.String(255), nullable=True)
    Outfit = db.Column(db.String(255), nullable=True)
    Labels = db.Column(db.String(255), nullable=True)
    Source = db.Column(db.String(255), nullable=True)
    Style = db.Column(db.String(255), nullable=True)
    Banner = db.Column(db.String(255), nullable=True)

    levels = db.relationship('LevelDetails', backref='item')

def is_non_english_word(word):
    dictionary = enchant.Dict("en_US")
    return not dictionary.check(word)

def spell_check_names(file_path):
    with open(file_path, mode='r', newline='', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        
        for row in reader:
            if int(row['Level']) == 10:
                original_name = row['Name']
                words = original_name.split()
                
                non_english_words = [word for word in words if is_non_english_word(word)]
                
                if non_english_words:
                    corrected_words = [enchant.Dict("en_US").suggest(word)[0] if enchant.Dict("en_US").suggest(word) else word for word in non_english_words]
                    corrected_name = " ".join(corrected_words)
                    print(f"Level: {row['Level']}, Original Name: {original_name} -> Corrected Words: {corrected_words}")

def check_zeros(file_path):
	with open(file_path, mode='r', newline='', encoding='utf-8') as file:
		reader = csv.DictReader(file)
		
		for row in reader:
			zero_columns = [col for col in ['Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool'] if int(row[col]) == 0]
			
			if zero_columns:
				zero_columns_str = ", ".join(zero_columns)
				print(f"Name: {row['Name']}, Level: {row['Level']}, Columns with 0: {zero_columns_str}")

def check_incr(file_path):
	with open(file_path, mode='r', newline='', encoding='utf-8') as file:
		reader = csv.DictReader(file)
		prev_row = None
		for row in reader:
			current_level = int(row['Level'])
			if prev_row is not None:
				prev_level = int(prev_row['Level'])
				if current_level > prev_level:
					decreasing_columns = [
						col for col in ['Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool']
						if int(row[col]) <= int(prev_row[col]) and int(prev_row[col]) <= int(row[col]) * 1.12
					]
					if decreasing_columns:
						decreasing_columns_str = ", ".join(decreasing_columns)
						print(f"Name: {row['Name']}, Level: {row['Level']} - Columns not increasing: {decreasing_columns_str}")
			prev_row = row

def scrape_all():
	# intial 2 rows
	for y in range(2):
		for x in range(6):
			x_mod = x * x_cards_interval
			y_mod = y_cards_interval[y]
			name = get_name(x_mod, y_mod)
			if name.strip():
				get_item_details(x, y)
			else:
				break
	prev_item_name = get_name(0, y_cards_interval[1])
	pg.moveTo(x_cards[0], y_cards[2])
	pg.scroll(-350)
	time.sleep(1)

	# additional rows
	while (prev_item_name != get_name(0, y_cards_interval[2])):
		prev_item_name = get_name(0, y_cards_interval[2])
		for i in range(6):
			x_mod = i * x_cards_interval
			y_mod = y_cards_interval[2]
			name = get_name(x_mod, y_mod)
			
			if name.strip():
				get_item_details(i, 2)
			else:
				name = get_name(x_mod, 576)
				if name.strip():
					get_item_details(i, 2, True)
				else:
					break

		pg.moveTo(x_cards[0], y_cards[2])
		pg.scroll(-575)
		time.sleep(1)

def scrape_new(slot):
	with app.app_context():
		for y in range(1):
			for x in range(6):
				x_mod = x * x_cards_interval
				y_mod = y_cards_interval[y]
				name = get_name(x_mod, y_mod)
				if name.strip():
					exists = db.session.query(
								db.exists().where(ItemDetails.Name == name.strip())
							).scalar()
					if not exists and name not in ignore.keys():
						print(name)
						get_item_details_mod(x, y, slot)
				else:
					break
		prev_item_name = get_name(0, y_cards_interval[1])
		pg.moveTo(x_cards[0], y_cards[2])
		pg.scroll(-350)
		time.sleep(2)

		while (prev_item_name != get_name(0, y_cards_interval[2])):
			prev_item_name = get_name(0, y_cards_interval[2])
			for i in range(6):
				x_mod = i * x_cards_interval
				y_mod = y_cards_interval[2]
				name = get_name(x_mod, y_mod)
				
				if name.strip():
					exists = db.session.query(
								db.exists().where(ItemDetails.Name == name.strip())
							).scalar()
					if not exists and name not in ignore.keys():
						print(name)
						get_item_details_mod(i, 2, slot)
				else:
					name = get_name(x_mod, 576)
					if name.strip():
						exists = db.session.query(
									db.exists().where(ItemDetails.Name == name.strip())
								).scalar()
						if not exists and name not in ignore.keys():
							print(name)
							get_item_details_mod(i, 3, slot)
					else:
						break

			pg.moveTo(x_cards[0], y_cards[2])
			pg.scroll(-575)
			time.sleep(2)

with open('./python/json/outfits.json', 'r') as file:
    outfits_data = json.load(file)

def name_exists(name):
	for outfit_key, outfit_value in outfits_data["outfits"].items():
		if name.strip() == outfit_value["Outfit"]:
			return True
	return False

def check_outfits():
	for y in range(1, 2):
		for x in range(6):
			x_mod = x * x_cards_interval
			y_mod = y_cards_interval[y]
			name = get_name(x_mod, y_mod)
			if name.strip():
				exists = name_exists(name)
				if not exists:
					with open("./python/txt/new_outfits.txt", "a") as file:
						file.write(f"{name}\n")
			else:
				break
	prev_item_name = get_name(0, y_cards_interval[1])
	pg.moveTo(x_cards[0], y_cards[2])
	pg.scroll(-350)
	time.sleep(2)

	while (prev_item_name != get_name(0, y_cards_interval[2])):
		prev_item_name = get_name(0, y_cards_interval[2])
		for i in range(6):
			x_mod = i * x_cards_interval
			y_mod = y_cards_interval[2]
			name = get_name(x_mod, y_mod)
			if name.strip():
				exists = exists = name_exists(name)
				if not exists:
					with open("./python/txt/new_outfits.txt", "a") as file:
						file.write(f"{name}\n")
			else:
				name = get_name(x_mod, 576)
				if name.strip():
					exists = exists = name_exists(name)
					if not exists:
						with open("./python/txt/new_outfits.txt", "a") as file:
							file.write(f"{name}\n")
				else:
					break
		pg.moveTo(x_cards[0], y_cards[2])
		pg.scroll(-575)
		time.sleep(2)

def scrape_one_lvl(name, rarity, slot, zero=False):
	r = []
	ss = [slot, '']
	file = slot.lower()
	r.append(name)
	r.append(rarity)
	r.extend(ss)
	
	if zero:
		r.append(0)
		r.extend(get_stats(initial_stat))
		r.extend([0] * 3)
		r.extend([''] * 2)
	else:
		r.append(get_lvl())
		r.extend(get_stats(new_stat))
		r.extend([0] * 3)
		r.extend([''] * 2)
	print(r)
	f = f'./python/csv/unprocessed/{file}.csv'
	with open(f, 'a', newline='') as csvfile:
		csvwriter = csv.writer(csvfile)
		csvwriter.writerow(r)
	r.clear()

def scrape_stats(name, rarity, slot, file):
	r = []
	rows = []
	ss = [slot, '']
	r.append(name)
	r.append(rarity)
	r.extend(ss)

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
		pdi.click()
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
	pg.moveTo(back[0], back[1])
	f = f'./python/csv/unprocessed/{file}.csv'
	with open(f, 'a', newline='') as csvfile:
		csvwriter = csv.writer(csvfile)
		csvwriter.writerows(rows)

def glow_up_macro():
	check_outfits()
	
	slots = [
		'Hair','Dress','Outerwear','Top','Bottom','Socks','Shoes',
		'Hair Accessory','Headwear','Earrings','Neckwear','Bracelet','Choker','Gloves',
		'Face Decoration','Chest Accessory','Pendant','Backpiece','Ring','Arm Decoration','Handheld'
	]
	
	buttons = [
		[131, 321],  #0: hair
		[131, 438],  #dress
		[131, 556],  #outerwear
		[131, 674],  #top
		[131, 787],  #bottom
		[131, 910],  #socks
		[131, 1010], #shoes/accessory tab
		[131, 1010], #7: dummy val/hair acc
		[131, 731],  #headwear
		[131, 843],  #earrings
		[131, 944],  #neckwear
		[131, 1007], #the rest
	]
	
	for i in range(7):
		lc(buttons[i])
		scrape_new(slots[i])
	
	pg.moveTo(buttons[6][0], buttons[6][1])
	pg.scroll(-500)
	pg.click(buttons[6])
	scrape_new(slots[i])
	
	for i in range(8, 11):
		lc(buttons[i])
		scrape_new(slots[i])
	
	pg.moveTo([131, 1007])	
	pg.scroll(-200)
	time.sleep(1.5)
	lc([131, 1007])
	scrape_new(slots[11])
	
	for i in range(12, len(slots)):
		time.sleep(1)
		pg.moveTo([131, 1007])	
		pg.scroll(-400)
		time.sleep(1.5)
		lc([131, 1007])
		scrape_new(slots[i])


# time.sleep(2)
# file_list = os.listdir('D:/Documents/infinity_nikki_library/python/csv/unprocessed/')
# for file in file_list:
# 	print(file)
# 	check_incr(f'./python/csv/unprocessed/{file}')

in_w.activate() 
time.sleep(1)
scrape_stats("Cloudborne Cranes", 3, 'Bracelet', '1-2a-fix')
#glow_up_macro()
f = './python/csv/unprocessed/1-2a-fix.csv'
with open(f, 'a', newline='') as csvfile:
		csvwriter = csv.writer(csvfile)
		csvwriter.writerows(rows)