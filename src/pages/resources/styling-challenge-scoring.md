---
layout: ../../layouts/MarkdownGuideLayout.astro
title: 'Styling Challenge Scoring'
id: 'styling-challenge-scoring'
createDate: 12/04/2024
lastUpdated: 12/04/2024
description: 'A breakdown on how styling challenges are scored'
author: 'Neptunya'
image: '/images/text-guides/styling-challenge-scoring/styling_challenge_scoring_banner.png'
tags: ["math", "text guide"]
---
## Why does knowing the scoring formula matter?
To be frank, it doesn’t, unless you happen to be like me and are curious about what goes on under the hood. While knowing the scoring formula may not be immediately applicable to scoring better, it serves as a foundation for future calculations that may be more applicable. For example, knowing how to spend your vital energy and resources to get the most bang for your buck so you can clear styling challenges earlier.

## Disclaimers

This formula is **only an estimate based on the results I got in-game**, I do not have any way to 100% confirm its validity. Additionally, this estimation only holds true **when all scoring nodes in the Heart of Infinity are unlocked**. The below image shows where nodes that increase your score are located on the Heart of Infinity. That whole line gives you bonuses to your styling challenge scores.

![](/images/text-guides/styling-challenge-scoring/scoring_nodes.png)

If you haven’t unlocked any scoring nodes in the Heart of Infinity yet and would be willing to do some data collection, please shoot me (Neptunya) a DM on Discord.

## How are styling challenges scored?
The score of any clothing item **except Eurekas** in a styling challenge can be estimated by the below formula, **assuming all scoring nodes in the Heart of Infinity are unlocked**. 

![](/images/text-guides/styling-challenge-scoring/styling_challenge_score_formula.png)

### In plain language:

An item’s score in a styling challenge is calculated by multiplying the recommended attribute’s value by 3.7 and adding that with the sum of the other attribute’s values, each multiplied by 0.336.

Style values refer to the elegant, fresh, sweet, sexy, and cool numbers each clothing item has.

![](/images/text-guides/styling-challenge-scoring/clothing_item_details.png)

You can get to the above window that has the style values by mousing over an item icon in the dress-up menu and hovering over the i that shows up, which will open up a window with the item’s details.

![](/images/text-guides/styling-challenge-scoring/clothing_item_info_hover.png)

### How do recommended labels play into this?

Unfortunately, as of now, I do not have enough data to definitively say how a clothing item having the recommended label in a style challenge changes the scoring formula.

### Why doesn’t this include eureka items?

Once again, I just don’t have enough data. Eureka items don’t get score bonuses from the Heart of Infinity like clothing items do, and I don’t have enough eureka items at the time to determine how its style values are weighted.

## How was this formula derived?

I used round 1 of mira crown wishfield styling challenge, where the recommended style was sweet. I unequipped everything and just chose a dress, hair, and shoes and noted down the style values for each piece. Then, I went through the styling challenge, noting down the score I got for the clothing, hair, and footwear category, which I did with all the dress, hair, and shoe options I had available.

I modeled the scoring formula as:

![](/images/text-guides/styling-challenge-scoring/score_formula_model.png)

To determine each Style’s weight, I applied the least squares method using the equations from all available scores. The python code below shows how I did ran those calculations:

```py
import pandas as pd
import numpy as np

data = pd.read_csv('./csv/IN Data - Main.csv')
styless = data[['Elegant', 'Fresh', 'Sweet', 'Sexy', 'Cool']].values
sweet_scores = data['Sweet Score'].values
weights, _, _, _ = np.linalg.lstsq(styles, sweet_scores, rcond=None)
print(weights)
```

```py
[0.33584481 0.33704082 3.69803792 0.33638204 0.33578301]
```