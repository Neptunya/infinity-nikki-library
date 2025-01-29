import React, { useEffect, useState } from 'react';
import { Box, CssBaseline } from '@mui/material';
import { ThemeProvider } from '@emotion/react';
import { theme } from '../styles/theme';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';

export default function SimOptions() {
    const [isClient, setIsClient] = useState(false);
    const [banner, setBanner] = React.useState('');
    
    const handleChange = (event) => {
        setBanner(event.target.value);
    };
    
    useEffect(() => {
        setIsClient(true);
    }, []);
    
    return isClient ? (
        <ThemeProvider theme={theme}>
            <CssBaseline />
            <Box sx={{
                margin: "12px 0px"
            }}>
            <FormControl sx={{
                width: '150px'
            }}>
                <InputLabel id="demo-simple-select-label">Banner</InputLabel>
                <Select
                labelId="demo-simple-select-label"
                id="demo-simple-select"
                value={banner}
                label="Banner"
                onChange={handleChange}
                >
                    <MenuItem value={4}>4*</MenuItem>
                    <MenuItem value={5}>5*</MenuItem>
                </Select>
            </FormControl>
            </Box>
        </ThemeProvider>
    ) : null;
}