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

export default function BasicSelect() {
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
          <InputLabel id="demo-simple-select-label">Sort By</InputLabel>
          <Select
            labelId="demo-simple-select-label"
            id="demo-simple-select"
            value={sort}
            label="sort"
            onChange={handleChange}
          >
            <MenuItem value={'Name'}>Name</MenuItem>
            <MenuItem value={'Rarity'}>Rarity</MenuItem>
            <MenuItem value={'Type'}>Type</MenuItem>
            <MenuItem value="" onClick={handleReset}>None</MenuItem>
          </Select>
        </FormControl>
      </Box>
    </ThemeProvider>
  );
}