import React, { useState } from 'react';
import { ThemeProvider, CssBaseline, FormControlLabel, Switch } from '@mui/material';
import { theme } from '../styles/theme';
import { toggleUnobtainable, toggleRecolor, toggleNew } from '../scripts/database';

export default function ToggleGroup() {
  const [unobtainableChecked, setUnobtainableChecked] = useState(true);
  const [recolorChecked, setRecolorChecked] = useState(false);
  const [newChecked, setNewChecked] = useState(false);
  const handleUnobtainableToggleChange = (event) => {
    setUnobtainableChecked(event.target.checked);
    toggleUnobtainable();
  };
  const handleRecolorToggleChange = (event) => {
    setRecolorChecked(event.target.checked);
    toggleRecolor();
  };
  const handleNewToggleChange = (event) => {
    setNewChecked(event.target.checked);
    toggleNew();
  };
  return (
    <ThemeProvider theme={theme}>
      <CssBaseline /> {}
      <div id="toggle-group">
        <FormControlLabel
          value="enable-unobtainable"
          control={
            <Switch
              checked={unobtainableChecked}
              onChange={handleUnobtainableToggleChange}
          />
          }
          label="Show Unobtainable"
          labelPlacement="bottom"
          sx = {{
            margin: '8px',
            alignSelf: 'center'
          }} />
          <FormControlLabel 
            value="enable-recolors"
            control={
              <Switch
                checked={recolorChecked}
                onChange={handleRecolorToggleChange}
            />
            }
            label="Show Recolors"
            labelPlacement="bottom"
            sx = {{
              margin: '8px',
              alignSelf: 'center'
            }} />
          <FormControlLabel
          value="show-new-only"
          control={
            <Switch
              checked={newChecked}
              onChange={handleNewToggleChange}
          />
          }
          label="Only Show New"
          labelPlacement="bottom"
          sx = {{
            margin: '8px',
            alignSelf: 'center'
          }} />
        </div>
    </ThemeProvider>
  );
}