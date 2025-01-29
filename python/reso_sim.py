import random
import csv
import numpy as np

def gacha_sim(rate, items, pity, results):
	pity_count = 0
	item_count = 0
	for j in range(1, (items * pity) + 1):
		pity_count += 1
		if random.random() <= rate or pity_count == pity:
			item_count += 1
			pity_count = 0
		if item_count == items:
			results[j] += 1
			return
		
def desired_items_sim(rate, items, pity, desired_items, results):
	pity_count = 0
	item_count = items
	for j in range(1, (items * pity) + 1):
		pity_count += 1
		if random.random() <= rate or pity_count == pity:
			pity_count = 0
			if random.random() <= desired_items / item_count:
				desired_items -= 1
			item_count -= 1
			pity_count = 0
		if desired_items == 0:
			results[j] += 1
			return
		
# --- 5-stars ---
rate = 0.015
items = 10
pity = 20

# --- 4-stars ---
# rate = 0.1
# items = 8
# pity = 5

desired_items = 1

results = np.zeros((items * pity) + 1)
simulations = 100000
sim = 0
while sim in range(simulations):
	gacha_sim(rate, items, pity, results)
	#desired_items_sim(rate, items, pity, desired_items, results)
	sim += 1


filename = f"./public/reso-sim/{items}_5stars.csv"
with open(filename, mode="w", newline="") as file:
    writer = csv.writer(file)
    writer.writerow(["x", "y"])
    for index, value in enumerate(results):
        writer.writerow([index, (value/simulations)*100])