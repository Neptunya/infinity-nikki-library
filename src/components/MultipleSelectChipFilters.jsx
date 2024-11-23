import React, { useEffect, useState } from 'react';
import { ThemeProvider } from '@mui/material/styles'; // Import ThemeProvider
import CssBaseline from '@mui/material/CssBaseline'; // For global Material-UI styles
import { theme } from '../styles/theme';
import MultipleSelectChipContent from './MutipleSelectChipContent'
import { getSelectedRarities } from '../scripts/database';

export default function MultipleSelectChipFilters() {
    const [isClient, setIsClient] = useState(false);
    
    const rarities = [
      '✧✧',
      '✧✧✧',
      '✧✧✧✧',
      '✧✧✧✧✧',
    ];
    
    const slots = [
      'Hair','Dress','Top','Bottom','Socks','Shoes',
      'Hair Accessory','Headwear','Earrings','Neckwear','Bracelet','Choker','Gloves',
      'Face Decoration','Chest Accessory','Pendant','Backpiece','Ring','Handheld',
      'Base Makeup','Eyebrows','Eyelashes','Contact Lenses','Lips'
    ];
    
    const sources = [
      'F2P',
      'RNG',
      'Gacha',
    ];
    
    const styles = [
      'Elegant',
      'Fresh',
      'Sweet',
      'Sexy',
      'Cool'
    ];
    
    const labels = [
      'Warm','Summer','Home','Formal','Simple',
      'Fantasy','Intellectual','Adventure','Romance','Retro',
      'Fashion','Uniform','Playful','Trendy','Fairy',
      'Ballroom','Royal','Linlang','Pastoral','Cute'
    ]
    
    useEffect(() => {
        setIsClient(true);
      }, []);
    return isClient ? (
    <ThemeProvider theme={theme}>
      <CssBaseline /> {}
      <MultipleSelectChipContent
        names={rarities}
        idPrefix="rarity"
        label="Rarity"
        onSelectionChange={getSelectedRarities} />
      <MultipleSelectChipContent names={slots} idPrefix="slot" label="Type" />
      <MultipleSelectChipContent names={styles} idPrefix="style" label="Style" />
      <MultipleSelectChipContent names={labels} idPrefix="label" label="Label" />
      <MultipleSelectChipContent names={sources} idPrefix="source" label="Source" />
    </ThemeProvider>
  ) : null;
}