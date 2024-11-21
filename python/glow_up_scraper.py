from scraper_helper import *
import csv

# 1280x720
in_w.activate()
time.sleep(2)

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
				name = get_name(x_mod, y_mod+13)
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

def scrape_stats(name, rarity, slot):
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
	while (lvl < 5):
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
	f = './python/csv/pendant_data.csv'
	with open(f, 'a', newline='') as csvfile:
		csvwriter = csv.writer(csvfile)
		csvwriter.writerows(rows)

#scrape_stats('Azure Ripples', 4, 'Face Decoration')
# , pendant, backpiece, ring, handheld

scrape_all()
f = './python/csv/handheld_data.csv'
with open(f, 'w', newline='') as csvfile:
		csvwriter = csv.writer(csvfile)
		csvwriter.writerow(fields)
		csvwriter.writerows(rows)