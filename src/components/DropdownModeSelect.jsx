import * as React from 'react';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import { ThemeProvider } from "@emotion/react";
import CssBaseline from "@mui/material/CssBaseline";
import { theme } from '../styles/theme';
import { updateMode } from '../scripts/database';

export default function ModeSelect() {
  const [mode, setMode] = React.useState('db');

  const handleChange = (event) => {
    setMode(event.target.value);
    updateMode(event.target.value);
  };
  
  let refreshToken = localStorage.getItem('refresh_token');
  
  return (
    <ThemeProvider theme={theme}>
      <CssBaseline /> {}
      <Box sx={{
        alignSelf:'center'
      }}>
        <FormControl fullWidth
            sx={{
            }}>
          <InputLabel
            id="mode-select">Mode</InputLabel>
          <Select
            labelId="mode-select"
            id="mode-select"
            value={mode}
            label="mode"
            onChange={handleChange}
          >
            <MenuItem value={'db'}>Database</MenuItem>
            {refreshToken ? <MenuItem value={'tracker'}>Item Tracker</MenuItem> :
            <MenuItem value={'tracker-disabled'} disabled>Log In to use Item Tracker</MenuItem>}
          </Select>
        </FormControl>
      </Box>
    </ThemeProvider>
  );
}