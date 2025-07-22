import React, { useEffect, useState } from 'react';
import {Box, CssBaseline, InputLabel,
        MenuItem, FormControl, Select,
        TextField, Button} from '@mui/material';
import { ThemeProvider } from '@emotion/react';
import { theme } from '../styles/theme';
import MultipleSelectChipContent from './MutipleSelectChipContent';
import { setSimSettings } from "../scripts/sim-chart";
import { adjustCollapsibleMaxHeight } from "../scripts/reso-sim";


export default function SimOptions() {
    const slots = [
        'Hair','Dress','Outerwear','Top','Bottom','Socks','Shoes',
        'Hair Accessory','Headwear','Earrings','Neckwear','Bracelet','Choker','Gloves',
        'Face Decoration','Chest Accessory','Pendant','Backpiece','Ring','Arm Decoration','Handheld'
    ];
    
    const blessingSlots = [
        'Hair','Dress','Outerwear','Top','Bottom','Socks','Shoes',
        'Hair Accessory','Headwear','Earrings','Neckwear','Bracelet','Choker','Gloves',
        'Face Decoration','Chest Accessory','Pendant','Backpiece','Ring','Arm Decoration','Handheld', 'None'
    ];
    
    const som_4 = [
        'Mature Short Hair', 'Misty Blue', 'Verdant Dance', 'Ethereal Midnight',
        'Sunlit Bloom', 'Chestnut Serenade', 'Starry Tango', 'Dark Bolt', 'Curtain Flutter'
    ]
    
    const som_5 = [
        'Winter Love Song', 'Snowy Dawn', 'Subzero Elegance', 'Gale Strategy',
        'Snowflakes Calling', 'Hazy Glow', 'Midnight Stroll', 'Stellar Leaps'
    ]
    
    const [errorState, setErrorState] = React.useState({
        sim: false,
        banner: false,
        items: false,
        outfitItems: false,
        desiredItems: false,
        display: false,
        som: false
    });
    
    const sortItems = (items, list) => {
        return items.sort((a, b) => {
            const indexA = list.indexOf(a);
            const indexB = list.indexOf(b);
            return indexA - indexB;
        });
    };
    
    const [sim, setSim] = React.useState('');
    const handleSimChange = (event) => {
        setSim(event.target.value);
        document.getElementById("alert").innerHTML = event.target.value == 'som' ?
            "<p style='margin-top: 16px; margin-bottom: 0;'>Settings with an asterisk(*) are required for the calculator to run.<br>You must fill in one of the desired items dropdowns for the calculator to run.</p>" :
            "<p style='margin-top: 16px; margin-bottom: 0;'>Settings with an asterisk(*) are required for the calculator to run.</p>";
        adjustCollapsibleMaxHeight();
    }
    
    const [banner, setBanner] = React.useState('');
    const handleBannerChange = (event) => {
        setBanner(event.target.value);
    };
    
    const [budget, setBudget] = React.useState('');
    const handleBudgetChange = (event) => {
        let value = Number(event.target.value);
        if (value < 0) value = 0;
        if (value > 2000) value = 2000;
        setBudget(value);
    };
    
    const [items, setItems] = React.useState('');
    const handleItemsChange = (event) => {
        let value = Number(event.target.value);
        if (value < 1) value = 1;
        if (value > 30) value = 30;
        setItems(value);
    };
    
    const [outfitItems, setOutfitItems] = React.useState([]);
    const handleOutfitItemsChange = (newSelection) => {
        const removedItems = outfitItems.filter(item => !newSelection.includes(item));
        
        setDesiredItems((prevDesiredItems) => {
            const updatedDesiredItems = prevDesiredItems.filter(item => !removedItems.includes(item));
            return updatedDesiredItems;
        });
        
        if (removedItems.includes(blessing)) {
            setBlessing('');
        }
        setOutfitItems(newSelection);
        adjustCollapsibleMaxHeight();
    };
    
    const [desiredItems, setDesiredItems] = React.useState([]);
    const handleDesiredItemsChange = (newSelection) => {
        const removedItems = desiredItems.filter(item => !newSelection.includes(item));
        if (removedItems.includes(blessing)) {
            setBlessing('');
        }
        setDesiredItems(sortItems(newSelection, slots));
        adjustCollapsibleMaxHeight();
    };
    
    const [avail4, setAvail4] = React.useState([]);
    const handleAvail4Change = (newSelection) => {
        const removedItems = avail4.filter(item => !newSelection.includes(item));
        
        setDesired4((prevDesired4) => {
            const updatedDesired4 = prevDesired4.filter(item => !removedItems.includes(item));
            return updatedDesired4;
        });
        
        setAvail4(sortItems(newSelection, som_4));
        adjustCollapsibleMaxHeight();
    };
    
    const [desired4, setDesired4] = React.useState([]);
    const handleDesired4Change = (newSelection) => {
        setDesired4(sortItems(newSelection, som_4));
        adjustCollapsibleMaxHeight();
    };
    
    const [avail5, setAvail5] = React.useState([]);
    const handleAvail5Change = (newSelection) => {
        const removedItems = avail5.filter(item => !newSelection.includes(item));
        
        setDesired5((prevDesired5) => {
            const updatedDesired5 = prevDesired5.filter(item => !removedItems.includes(item));
            return updatedDesired5;
        });
        
        setAvail5(sortItems(newSelection, som_5));
        adjustCollapsibleMaxHeight();
    };
    
    const [desired5, setDesired5] = React.useState([]);
    const handleDesired5Change = (newSelection) => {
        setDesired5(sortItems(newSelection, som_5));
        adjustCollapsibleMaxHeight();
    };
    
    const [blessing, setBlessing] = React.useState('')
    const handleBlessingChange = (event) => {
        if (event.target.value == 'None') {
            setBlessing('');
        } else {
            setBlessing(event.target.value);
        }
    };
    
    const [display, setDisplay] = React.useState('')
    const handleDisplayChange = (event) => {
        setDisplay(event.target.value);
    };
    
    const runSimulation = async () => {
        let hasError = false;
        
        let updatedErrorState;
        
        if (sim && sim == 'full') {
            updatedErrorState = {
                sim: !sim,
                banner: !banner,
                items: !items,
                outfitItems: false,
                desiredItems: false,
                display: !display,
                som: false
            };
        } else if (sim && sim == 'desired') {
            updatedErrorState = {
                sim: !sim,
                banner: !banner,
                items: false,
                outfitItems: !(outfitItems.length > 0),
                desiredItems: !(desiredItems.length > 0),
                display: !display,
                som: false
            };
        } else if (sim && sim == 'som') {
            updatedErrorState = {
                sim: !sim,
                banner: false,
                items: false,
                outfitItems: false,
                desiredItems: false,
                display: !display,
                som: !(desired4.length > 0) && !(desired5.length > 0)
            };
            
        } else {
            updatedErrorState = {
                sim: !sim,
                banner: !banner,
                items: !items,
                outfitItems: !(outfitItems.length > 0),
                desiredItems: !(desiredItems.length > 0),
                display: !display,
                som: !(desired4.length > 0) && !(desired5.length > 0)
            };
        }
    
        for (let key in updatedErrorState) {
            if (updatedErrorState[key]) {
                hasError = true;
            }
        }
    
        if (hasError) {
            setErrorState(updatedErrorState);
            document.getElementById("alert").innerHTML = sim == 'som' ? 
                "<p style='color: #edb1bd; margin-top: 16px; margin-bottom: 0;'>Please fill in required fields!<br>One of the desired items dropdowns must be filled in.</p>":
                "<p style='color: #edb1bd; margin-top: 16px; margin-bottom: 0;'>Please fill in required fields!</p>";
        } else {
            setSimSettings(sim, banner, +budget, +items, outfitItems, desiredItems, blessing, avail4, avail5, desired4, desired5, display == 'cumulative');
            setErrorState({
                sim: false,
                banner: false,
                items: false,
                outfitItems: false,
                desiredItems: false,
                display: false,
                som: false
            });
            document.getElementById("alert").innerHTML = sim == 'som' ?
            "<p style='margin-top: 16px; margin-bottom: 0;'>Settings with an asterisk(*) are required for the calculator to run.<br>You must fill in at least one of the desired items fields for the calculator to run.</p>" :
            "<p style='margin-top: 16px; margin-bottom: 0;'>Settings with an asterisk(*) are required for the calculator to run.</p>";
        }
        adjustCollapsibleMaxHeight();
    };
    
    React.useEffect(() => {
        setDesiredItems((prevDesiredItems) =>
            prevDesiredItems.filter(item => outfitItems.includes(item))
        );
    }, [outfitItems]);
    
    useEffect(() => {
        adjustCollapsibleMaxHeight();
      }, []);
    
    return (
        <ThemeProvider theme={theme}>
            <CssBaseline />
            <Box sx={{
                margin: "24px 0px",
                display: "flex",
                flexFlow: "row wrap",
                alignItems: "center",
                gap: "12px",
                justifyContent: 'space-around'
            }}>
            
            <FormControl sx={{
                width: '200px',
                m: "4px"
            }}
            error={errorState.sim}>
                <InputLabel id="sim-select-label">Simulation*</InputLabel>
                <Select
                labelId="sim-select-label"
                id="sim-select"
                value={sim}
                label="Simulation"
                onChange={handleSimChange}
                >
                    <MenuItem value={'full'}>Full Outfit</MenuItem>
                    <MenuItem value={'desired'}>Specific Items</MenuItem>
                    <MenuItem value={'som'}>Surprise-o-Matic</MenuItem>
                </Select>
            </FormControl>
            
            {sim == '' ? null : (
            <>
            {sim != 'som' ? (
            <>
            <FormControl sx={{
                width: '200px',
                m: "4px"
            }}
            error={errorState.banner}>
                <InputLabel id="banner-select-label">Banner*</InputLabel>
                <Select
                labelId="banner-select-label"
                id="banner-select"
                value={banner}
                label="Banner"
                onChange={handleBannerChange}
                >
                    <MenuItem value={4}>4-star on Solo Banner</MenuItem>
                    <MenuItem value={4.5}>4-star on Duo Banner</MenuItem>
                    <MenuItem value={5}>5-star on Duo Banner</MenuItem>
                </Select>
            </FormControl>
            </>
            ) : null}
            
            <TextField
                type="number"
                label="Budget"
                variant="outlined"
                sx={{
                    width: '100px',
                    m: "4px",
                }}
                value={budget}
                onChange={handleBudgetChange}
                inputProps={{ min: 0, max: 2000 }}
            />
            
            {sim == 'desired' ? (
                <MultipleSelectChipContent
                    names={slots}
                    idPrefix="outfit-items"
                    label="Outfit Items*"
                    error={errorState.outfitItems}
                    onSelectionChange={handleOutfitItemsChange}
                    selected={outfitItems} />
            ) : null}
            
            {sim == 'full' ? (
                <TextField
                    type="number"
                    label="Items*"
                    variant="outlined"
                    sx={{
                        width: '100px',
                        m: "4px",
                    }}
                    error={errorState.items}
                    value={items}
                    onChange={handleItemsChange}
                    inputProps={{ min: 0, max: 30 }}
                />
            ) : null}
            
            {sim == 'desired' ? (
                <MultipleSelectChipContent
                    names={outfitItems.length > 0 ? sortItems(outfitItems, slots) : ['(Select Outfit Items First)']}
                    idPrefix="desired-items"
                    label="Desired Items*"
                    error={errorState.desiredItems}
                    onSelectionChange={handleDesiredItemsChange}
                    selected={desiredItems} />
            ) : ''}
            
            {sim == 'som' ? (
                <>
                <MultipleSelectChipContent
                    names={som_4}
                    idPrefix="avail-4"
                    label="4-star Pool"
                    onSelectionChange={handleAvail4Change}
                    selected={avail4} />
                
                <MultipleSelectChipContent
                    names={avail4.length > 0 ? sortItems(avail4, som_4) : ['(Select 4-star Pool First)']}
                    idPrefix="desired-4"
                    label="Desired 4-stars"
                    error={errorState.som}
                    onSelectionChange={handleDesired4Change}
                    selected={desired4} />
                    
                <MultipleSelectChipContent
                    names={som_5}
                    idPrefix="avail-5"
                    label="5-star Pool"
                    onSelectionChange={handleAvail5Change}
                    selected={avail5} />
                
                <MultipleSelectChipContent
                    names={avail5.length > 0 ? sortItems(avail5, som_5) : ['(Select 5-star Pool First)']}
                    idPrefix="desired-5"
                    label="Desired 5-stars"
                    error={errorState.som}
                    onSelectionChange={handleDesired5Change}
                    selected={desired5} />
                
                </>
            ) : ''}
            
            {sim == 'desired' && banner == 5 ? (
                <FormControl sx={{
                    width: '220px',
                    m: "4px"
                }}>
                <InputLabel id="blessing-select-label">Ocean's Blessing</InputLabel>
                    <Select
                    labelId="blessing-select-label"
                    id="blessing-select"
                    value={blessing}
                    label="Ocean's Blessing"
                    onChange={handleBlessingChange}
                    >
                        {desiredItems.length > 0 ? (
                            sortItems(desiredItems.concat(['None']), blessingSlots).map((slot) => (
                                <MenuItem key={slot} value={slot}>
                                    {slot}
                                </MenuItem>
                            ))
                        ) : (
                            <MenuItem disabled>
                                (Select Desired Items First)
                            </MenuItem>
                        )}
                    </Select>
                </FormControl>
            ) : ''}
            
            <FormControl sx={{
                width: '150px',
                m: "4px"
            }}
            error={errorState.display}>
                <InputLabel id="display-select-label">Display*</InputLabel>
                <Select
                labelId="display-select-label"
                id="display-select"
                value={display}
                label="Display"
                onChange={handleDisplayChange}
                >
                    <MenuItem value={'cumulative'}>Cumulative</MenuItem>
                    <MenuItem value={'individual'}>Individual</MenuItem>
                </Select>
            </FormControl>
            
            <Button variant="contained" 
            onClick={runSimulation}
            sx={{
                margin: '8px',
                fontSize: '1rem'
            }}>
                Calculate
            </Button>
            </>)}
            
            
            </Box>
        </ThemeProvider>
    );
}