import React, { useState } from 'react';
import { ThemeProvider, CssBaseline, FormControlLabel, Switch } from '@mui/material';
import { theme } from '../styles/theme';
import { toggleUnobtainable } from '../scripts/database';

export default function ToggleGroup() {
  const [checked, setChecked] = useState(false);
  const handleToggleChange = (event) => {
    setChecked(event.target.checked); // Update the local state
    toggleUnobtainable(); // Call the toggleUnobtainable function
  };
  return (
    <ThemeProvider theme={theme}>
      <CssBaseline /> {}
      <FormControlLabel
        value="enable-unobtainable"
        control={
          <Switch
            checked={checked}
            onChange={handleToggleChange} // Attach the handler here
         />
        }
        label="Show Unobtainable"
        labelPlacement="bottom"
        sx = {{
          margin: '8px',
          alignSelf: 'center'
        }} />
    </ThemeProvider>
  );
}