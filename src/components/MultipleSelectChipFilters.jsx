import React, { useEffect, useState } from 'react';
import { ThemeProvider } from '@mui/material/styles';
import CssBaseline from '@mui/material/CssBaseline';
import { theme } from '../styles/theme';
import MultipleSelectChipContent from './MutipleSelectChipContent'
import {  getSelectedRarities,
          getSelectedSlots,
          getSelectedLabels,
          getSelectedStyle,
          getSelectedSource,
          getSelectedStatus } from '../scripts/database';

export default function MultipleSelectChipFilters() {
    const [isClient, setIsClient] = useState(false);
    const [selectedSources, setSelectedSources] = useState([]);
    const uid = sessionStorage.getItem('uid');
    
    const rarities = [
      '✧✧',
      '✧✧✧',
      '✧✧✧✧',
      '✧✧✧✧✧',
    ];
    
    const slots = [
      'Hair','Dress','Outerwear','Top','Bottom','Socks','Shoes',
      'Hair Accessory','Headwear','Earrings','Neckwear','Bracelet','Choker','Gloves',
      'Face Decoration','Chest Accessory','Pendant','Backpiece','Ring','Arm Decoration','Handheld',
      'Base Makeup','Eyebrows','Eyelashes','Contact Lenses','Lips'
    ];
    
    const sources = [
      "Resonance: In Tears, We Meet Again",
      "Resonance: Blooming Fantasy",
      "Resonance: Flight to Freedom",
      "Resonance: The Mist's Call",
      'Resonance: Distant Sea',
      'Limited-Time Resonance',
      "Pear-Pal's Store",
      'Event: When Blue Tears Overflow',
      'Event Items',
      'Treasure Chest',
      'Styling Challenge',
      'Story Quest',
      'World Quest',
      'Main Quest',
      'Starlit Store',
      'Independent Designer Store',
      'Marques Boutique',
      'Surprise-O-Matic',
      'Dews of Inspiration',
      'Heart of Infinity',
      'Currently Unobtainable'
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
    
    const status = [
      'Owned', 'Not Owned', 'Wishlisted'
    ]
    
    useEffect(() => {
      setIsClient(true);

      const params = new URLSearchParams(window.location.search);
      const sourceParam = params.get('source');

      if (sourceParam) {
          setSelectedSources(sourceParam.split(','));
      }
  }, []);
    return isClient ? (
    <ThemeProvider theme={theme}>
      <CssBaseline /> {}
      <MultipleSelectChipContent
        names={rarities}
        idPrefix="rarity"
        label="Rarity"
        onSelectionChange={getSelectedRarities}
        selected={[]} />
      <MultipleSelectChipContent
        names={slots}
        idPrefix="slot"
        label="Type"
        onSelectionChange={getSelectedSlots}
        selected={[]} />
      <MultipleSelectChipContent
        names={styles}
        idPrefix="style"
        label="Style"
        onSelectionChange={getSelectedStyle}
        selected={[]} />
      <MultipleSelectChipContent
        names={labels}
        idPrefix="label"
        label="Label"
        onSelectionChange={getSelectedLabels}
        selected={[]} />
      <MultipleSelectChipContent
        names={sources}
        idPrefix="source"
        label="Source"
        onSelectionChange={getSelectedSource}
        selected={selectedSources} />
      {uid ? (
        <MultipleSelectChipContent
        names={status}
        idPrefix="status"
        label="Status"
        onSelectionChange={getSelectedStatus}
        selected={[]} />)
        : ''
      }
      
      
    </ThemeProvider>
  ) : null;
}