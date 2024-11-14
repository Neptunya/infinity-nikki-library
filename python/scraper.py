from scraper_helper import *
import csv

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

f = './python/csv/clothing_item_data.csv'
with open(f, 'w', newline='') as csvfile:
		csvwriter = csv.writer(csvfile)
		csvwriter.writerow(fields)
		csvwriter.writerows(rows)
		
'''TODO: 
- add costs to csv
	- based on lvl + rarity + slot, ezpz
- add suits to csv
	- use compendium menu
	- go through entries outfit by outfit and make a dictionary
		- key = item | value = outfit 
	- go through csv row by row and search through dict for outfit and fill out csv
'''