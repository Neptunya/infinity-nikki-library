import csv

csv_file = ["./python/csv/clothing_item_lvls.csv", "./python/csv/clothing_items_details.csv"]
output_file = ["./python/sql/lvl_output.sql", "./python/sql/details_output.sql"]

table_name = ["level_details", "item_details"]
columns = [
    [
    "Name", "Rarity", "Slot", "Outfit", "Level",
    "Elegant", "Fresh", "Sweet", "Sexy", "Cool",
    "Blings", "Threads", "Bubbles", "Style"
    ], [
    "Name", "Rarity", "Slot", "Outfit", "Labels",
    "Source", "Style", "Banner"
    ]
]

for i in range(2):
    with open(csv_file[i], newline='', encoding='utf-8') as csvfile, open(output_file[i], "w", encoding='utf-8') as sqlfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            values = [
                f"'{row[col].replace("'", "''")}'" if row[col] else "NULL"
                for col in columns[i]
            ]
            quoted_columns = [f'"{col}"' for col in columns[i]]
            sql_statement = f"INSERT INTO {table_name[i]} ({', '.join(quoted_columns)}) VALUES ({', '.join(values)});"
            sqlfile.write(sql_statement + "\n")