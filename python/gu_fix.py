import csv

def reorder_csv(input_file, output_file):
    new_columns = ["Name", "Rarity", "Slot", "Outfit", "Level", "Elegant", "Fresh", "Sweet", "Sexy", "Cool", "Blings", "Threads", "Bubbles", "Labels", "Source"]
    
    with open(input_file, newline='', encoding='utf-8') as infile:
        reader = csv.DictReader(infile)
        
        new_rows = []
        for row in reader:
            new_row = {col: "" for col in new_columns}
            new_row["Name"] = row["Name"]
            new_row["Level"] = row["Level"]
            new_row["Elegant"] = row["Elegant"]
            new_row["Fresh"] = row["Fresh"]
            new_row["Sweet"] = row["Sweet"]
            new_row["Sexy"] = row["Sexy"]
            new_row["Cool"] = row["Cool"]
            new_row["Blings"] = "0"
            new_row["Threads"] = "0"
            new_row["Bubbles"] = "0"
            new_rows.append(new_row)
    
    with open(output_file, 'w', newline='', encoding='utf-8') as outfile:
        writer = csv.DictWriter(outfile, fieldnames=new_columns)
        writer.writeheader()
        writer.writerows(new_rows)

reorder_csv('./python/csv/unprocessed/1-7a-gu.csv', './python/csv/unprocessed/1-7a.csv')