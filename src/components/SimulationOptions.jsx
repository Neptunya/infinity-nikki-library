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
    
    const [errorState, setErrorState] = React.useState({
        sim: false,
        banner: false,
        items: false,
        outfitItems: false,
        desiredItems: false,
        display: false
      });
    
    const sortItems = (items) => {
        return items.sort((a, b) => {
            const indexA = slots.indexOf(a);
            const indexB = slots.indexOf(b);
            return indexA - indexB;
        });
    };
    
    const [sim, setSim] = React.useState('');
    const handleSimChange = (event) => {
        setSim(event.target.value);
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
        if (value > 600) value = 600;
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
        setDesiredItems(newSelection);
        adjustCollapsibleMaxHeight();
    };
    
    const [blessing, setBlessing] = React.useState('')
    const handleBlessingChange = (event) => {
        setBlessing(event.target.value);
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
                display: !display
            };
        } else if (sim && sim == 'desired') {
            updatedErrorState = {
                sim: !sim,
                banner: !banner,
                items: false,
                outfitItems: !(outfitItems.length > 0),
                desiredItems: !(desiredItems.length > 0),
                display: !display
            };
        } else {
            updatedErrorState = {
                sim: !sim,
                banner: !banner,
                items: !items,
                outfitItems: !(outfitItems.length > 0),
                desiredItems: !(desiredItems.length > 0),
                display: !display
            };
        }
    
        for (let key in updatedErrorState) {
            if (updatedErrorState[key]) {
                hasError = true;
            }
        }
    
        if (hasError) {
            setErrorState(updatedErrorState);
            document.getElementById("alert").innerHTML = "<p style='color: #edb1bd; margin-top: 16px; margin-bottom: 0;'>Please fill in required fields!</p>";
        } else {
            setSimSettings(sim == "full", banner, +budget, +items, outfitItems, desiredItems, blessing, display == 'cumulative');
            setErrorState({
                sim: false,
                banner: false,
                items: false,
                outfitItems: false,
                desiredItems: false,
                display: false
            });
            document.getElementById("alert").innerHTML = "";
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
                </Select>
            </FormControl>
            
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
                inputProps={{ min: 0, max: 600 }}
            />
            
            {sim == 'desired' ? (
                <MultipleSelectChipContent
                    names={slots}
                    idPrefix="outfit-items"
                    label="Outfit Items*"
                    error={errorState.outfitItems}
                    onSelectionChange={handleOutfitItemsChange}
                    selected={outfitItems} />
            ) : 
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
            }
            
            {sim == 'desired' ? (
                <MultipleSelectChipContent
                    names={outfitItems.length > 0 ? sortItems(outfitItems) : ['(Select Outfit Items First)']}
                    idPrefix="desired-items"
                    label="Desired Items*"
                    error={errorState.desiredItems}
                    onSelectionChange={handleDesiredItemsChange}
                    selected={desiredItems} />
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
                            sortItems(desiredItems).map((slot) => (
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
            
            </Box>
        </ThemeProvider>
    );
}