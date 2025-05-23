import * as React from 'react';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import { updateSort } from '../scripts/database';
import { ThemeProvider } from "@emotion/react";
import CssBaseline from "@mui/material/CssBaseline";
import { theme } from '../styles/theme';

export default function SortSelect() {
  const [sort, setSort] = React.useState('');

  const handleChange = (event) => {
    setSort(event.target.value);
    updateSort(event.target.value);
  };
  
  const handleReset = () => {
    setSort('');
    updateSort('');
  };

  return (
    <ThemeProvider theme={theme}>
      <CssBaseline /> {}
      <Box sx={{
        flexGrow:'1',
        mb: '16px'
      }}>
        <FormControl fullWidth>
          <InputLabel id="sort-select">Sort By</InputLabel>
          <Select
            labelId="sort-select"
            id="sort-select"
            value={sort}
            label="sort"
            onChange={handleChange}
          >
            <MenuItem value='Name'>Name</MenuItem>
            <MenuItem value='Rarity'>Rarity</MenuItem>
            <MenuItem value='Type'>Type</MenuItem>
            <MenuItem value='Elegant'>Elegant</MenuItem>
            <MenuItem value='Fresh'>Fresh</MenuItem>
            <MenuItem value='Sweet'>Sweet</MenuItem>
            <MenuItem value='Sexy'>Sexy</MenuItem>
            <MenuItem value='Cool'>Cool</MenuItem>
            <MenuItem value="" onClick={handleReset}>None</MenuItem>
          </Select>
        </FormControl>
      </Box>
    </ThemeProvider>
  );
}