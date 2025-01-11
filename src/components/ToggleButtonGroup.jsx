import * as React from 'react';
import ToggleButton from '@mui/material/ToggleButton';
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup';
import { ThemeProvider } from "@emotion/react";
import CssBaseline from "@mui/material/CssBaseline";
import { theme } from '../styles/theme';
import { Box } from '@mui/material';
import { toggleHide, toggleOnly } from '../scripts/database';

export default function ToggleButtonsMultiple() {
    const [filterHide, setFilterHide] = React.useState(() => ['hide-recolors']);
    const [filterOnly, setFilterOnly] = React.useState(() => []);
    
    const handleFilterHide = (event, newFilters) => {
      setFilterHide(newFilters);
      toggleHide(newFilters);
    };
    
    const handleFilterOnly = (event, newFilters) => {
      setFilterOnly(newFilters);
      toggleOnly(newFilters);
    };

    return (
      <ThemeProvider theme={theme}>
        <CssBaseline /> {}
        <Box sx={{
          display: 'flex',
          flexFlow: 'row wrap',
          justifyContent: 'center',
          margin: '16px 0px',
          gap: '16px'
        }}>
          <ToggleButtonGroup
            value={filterHide}
            onChange={handleFilterHide}
            color="primary"
          >
            <ToggleButton value="hide-unobtainable" sx={{
              lineHeight: '1.2'
            }}>
              Hide Unobtainable
            </ToggleButton>
            <ToggleButton value="hide-recolors" sx={{
              lineHeight: '1.2'
            }}>
              Hide Recolors
            </ToggleButton>
        </ToggleButtonGroup>
          <ToggleButtonGroup
            value={filterOnly}
            onChange={handleFilterOnly}
            color="primary"
          >
          <ToggleButton value="new-only" sx={{
              lineHeight: '1.2'
            }}>
              New Only
            </ToggleButton>
            { localStorage.getItem('refresh_token') 
              ? <ToggleButton value="fav-only" sx={{
                lineHeight: '1.2'
              }}>
                  Favorited Only
                </ToggleButton>
              : ''
            }
          </ToggleButtonGroup>
        </Box>
      </ThemeProvider>
    )
}