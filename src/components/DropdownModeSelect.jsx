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

  const handleLoginRedirect = () => {
    window.location.href = 'https://discord.com/oauth2/authorize?client_id=1320670335896387615&response_type=code&redirect_uri=https%3A%2F%2Finfinitynikkilibrary.com%2Fdashboard&scope=identify';
  };

  return (
    <ThemeProvider theme={theme}>
      <CssBaseline />
      <Box sx={{ alignSelf: 'center' }}>
        <FormControl fullWidth>
          <InputLabel id="mode-select">Mode</InputLabel>
          <Select
            labelId="mode-select"
            id="mode-select"
            value={mode}
            label="Mode"
            onChange={handleChange}
          >
            <MenuItem value={'db'}>Database</MenuItem>
            { localStorage.getItem('refresh_token') ? (
              <MenuItem value={'tracker'}>Item Tracker (Beta)</MenuItem>
            ) : (
              <MenuItem
                value={'tracker-disabled'}
                onClick={handleLoginRedirect}
                sx={{ cursor: 'pointer' }}
              >
                Log In to use Item Tracker
              </MenuItem>
            )}
          </Select>
        </FormControl>
      </Box>
    </ThemeProvider>
  );
}
