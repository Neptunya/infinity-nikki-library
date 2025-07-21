---
layout: ../../layouts/MarkdownGuideLayout.astro
title: 'Styling Challenge Scoring'
id: 'styling-challenge-scoring'
lastUpdated: 06/20/2025
description: 'A breakdown on how styling challenges are scored'
authors: ['Saela, Neptunya']
image: '/images/guides/styling-challenge-scoring/styling_challenge_scoring_banner.jpeg'
---
# Styling Challenge Scoring

Last Updated: 06/20/2025  
By: Saela and Neptunya  
Special thanks to Wildclaw

This guide is meant as a reference for how we currently understand how pieces are scored.  It's meant to be accurate so there may be somewhat technical terms, but it will be all covered in this guide.

## Why does it matter?
To be frank, it doesn’t, unless you happen to be like me and are curious about what goes on under the hood. While knowing the scoring formula may not be immediately applicable to scoring better, it serves as a foundation for calculations that may be more applicable. For example, knowing how to spend your vital energy and resources to get the most bang for your buck so you can clear styling challenges earlier.

## Clothing Stats
Before going into scoring, let's talk about clothing stats.  

![clothing_item_details](https://gist.github.com/user-attachments/assets/a59b91f8-a8a5-4f4c-b372-ae45ab09e753)

Above, shows the stats of Perfect Start at level 0.  There are 5 Styles: Elegant, Fresh, Sweet, Sexy, and Cool.  You can get to the above window that has the style values by mousing over an item icon in the dress-up menu and hovering over the i that shows up, which will open up a window with the item’s details.  On mobile, you can long hold the item.

When you level up a piece, the stats of each stat is determined by the level 0 stats multiplied by a multiplier, then rounded up.  After level 10, clothing pieces can be Glowed-Up for more stats.  For Eurekas, the same principle applies, except they can't be Glowed-Up.  Colors and evolutions do not affect stats.

| Level        | Multiplier |
| ------------ | ---------- |
| 0            | 1x         |
| 1            | 1.25x      |
| 2            | 1.55x      |
| 3            | 1.9x       |
| 4            | 2.3x       |
| 5            | 2.75x      |
| 6            | 3.25x      |
| 7            | 3.8x       |
| 8            | 4.4x       |
| 9            | 5x         |
| 10           | 5.6x       |
| 11 (Glow Up) | 6.2x       |

## Scoring
$$Item Score = \lceil(StatScore + LabelScore) \times ScorePercentage\rceil$$

The full score for each clothing piece and Eureka is just the sum of the scores from its stats and matching labels scores, multiplied by a score multiplier, and finally rounded up.  The total score is the sum of these rounded up scores.

### Stat Score
$$StatScore = \sum_{i}^{Styles} ((StyleStat_i + StyleFlat_i) \times StylePercentage_i \times StyleScore_i$$

Each stat is multiplied by a `StyleScore` multiplier depending on the styling challenge theme.  The primary (or only) Style is multiplied by `3.3`.  If there is a secondary Style, then that stat is multiplied by `2.1`.  All remaining Styles still contribute and their stats are multiplied by `0.3`.

For example, using *Perfect Start* for a Sweet + Fresh challenge will score 2312.5 from its stats.

$$ 64 \times 0.3 + 248 \times 2.1 + 507 \times 3.3 + 94 \times 0.3 + 87 \times 0.3 = 2312.5 $$

The other two bonuses come from the *Heart of Infinity: Wishfield*. `StyleFlat` adds up to +100 stat to each piece, and `StylePercentage` multiplies these Stats up to +12 % (plus 100% base).  Note that none of these Heart of Infinity bonuses apply to Eureka scores.

### Label Score
$$LabelScore = LabelValue \times LevelMul$$

Labels are only scored if they match the theme.  Perfect Start's Label is Cute.  If the Labels don't match, it's worth 0 score.  `LabelValue` is determined empirically for each styling challenge, but have only been either 200 or 300. `LevelMul` is the same multiplier from Clothing Stats section, and depends on the level of the clothing piece.  Lastly, this score is doubled for Dresses.  For Eurekas, even if a Eureka's Label is not yet unlocked, the Label unlocked at level 5 is still active and counts for score.

### Score Percentage
Finally, we have the `ScorePercentage`.  All `ScorePercentage` bonuses are additive. One bonus is from the Heart of Infinity. The *Heart of Infinity: Wishfield* bonus goes up to +8% depending on the nodes that have been unlocked for certain pieces. While the *Heart of Infinity: Sea of Stars* bonus goes up to +10% and will apply to future regions' styling challenges. Currently, only the *Heart of Infinity: Sea of Stars* score bonuses apply to Eurekas. The other bonus is from Ripples of Infinity in Mira Crown Pinnacle, and it changes for each Pinnacle. Example bonuses include "+50% to Eureka scores" or "+35% to Dress scores".  

### Inconsistencies
There is possibly a bug for Eurekas, where if there's a +50% score bonus, the current score formula instead matches the formula below, where the ceiling doesn't include the percentage, and there's a truncation later.  However, on the preview screen, the score still uses the original formula.

$$ \lfloor\lceil StatScore + LabelScore\rceil \times ScorePercentage\rfloor $$

## How was this derived?
The quick version was that regressions were used to get close to the multipliers, and then playing with `floor` and `ceiling` functions were able to get to the exact values.  Plus, when the formula didn't work, it was determined that Nikki's base clothing had some stats.  Additionally, Infold had to fix a number of bugs with the formulas, which helped understanding as well.