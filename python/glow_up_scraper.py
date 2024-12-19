from scraper_helper import *
import csv
import os
import enchant

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
						if int(row[col]) <= int(prev_row[col])
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
	pg.scroll(-850)
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
		pg.scroll(-1725)
		time.sleep(1)

def scrape_one(x, y, last=False):
	pg.moveTo(x_cards[x], y_cards[2 if y > 2 else y])
	if y > 2:
		while (y-2 > 0):
			pg.scroll(-1725)
			y -= 1
	elif y == 2:
		pg.scroll(-850)
	time.sleep(1)
	pg.leftClick()
	get_item_details(x, y, last)

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
	f = f'./python/csv/unprocessed/{file}.csv'
	with open(f, 'a', newline='') as csvfile:
		csvwriter = csv.writer(csvfile)
		csvwriter.writerows(rows)

# in_w.activate()
# time.sleep(2)
# scrape_stats("Aqua Stride", 4, 'Shoes', 'shoes')
# , pendant, backpiece, ring, handheld


# time.sleep(2)
file_list = os.listdir('D:/Documents/infinity_nikki_library/python/csv/unprocessed/')
for file in file_list:
	print(file)
	#check_zeros(f'./python/csv/unprocessed/{file}')
	check_incr(f'./python/csv/unprocessed/{file}')
# 	spell_check_names(f'./python/csv/unprocessed/{file}')

# scrape_all()
# f = './python/csv/unprocessed/handheld.csv'
# with open(f, 'w', newline='') as csvfile:
# 		csvwriter = csv.writer(csvfile)
# 		csvwriter.writerow(fields)
# 		csvwriter.writerows(rows)