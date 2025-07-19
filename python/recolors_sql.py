def generate_sql(mapping, filename="./python/sql/duplicate_outfits.sql"):
    item_sql_blocks = []
    level_sql_blocks = []

    for outfit, suffix in mapping.items():
        # item_details insert
        item_sql_blocks.append(f"""-- Insert into "item_details" for {outfit}
INSERT INTO "item_details" ("Name", "Rarity", "Slot", "Outfit", "Labels", "Source", "Style", "Banner")
SELECT
    "Name" || '{suffix}' AS "Name",
    "Rarity",
    "Slot",
    "Outfit" || '{suffix}' AS "Outfit",
    "Labels",
    "Source",
    "Style",
    "Banner"
FROM "item_details"
WHERE "Outfit" = '{outfit}';
""")

        # level_details insert
        level_sql_blocks.append(f"""-- Insert into "level_details" for {outfit}
INSERT INTO "level_details" ("Name", "Rarity", "Slot", "Outfit", "Level", "Elegant", "Fresh", "Sweet", "Sexy", "Cool", "Blings", "Threads", "Bubbles", "Style")
SELECT
    "Name" || '{suffix}' AS "Name",
    "Rarity",
    "Slot",
    "Outfit" || '{suffix}' AS "Outfit",
    "Level",
    "Elegant",
    "Fresh",
    "Sweet",
    "Sexy",
    "Cool",
    "Blings",
    "Threads",
    "Bubbles",
    "Style"
FROM "level_details"
WHERE "Outfit" = '{outfit}';
""")

    with open(filename, "w", encoding="utf-8") as f:
        for block in item_sql_blocks:
            f.write(block)
        for block in level_sql_blocks:
            f.write(block)

    print(f"SQL written to {filename}")


mapping = {
'Twilight Crown': ': Slumber'
}
generate_sql(mapping)
