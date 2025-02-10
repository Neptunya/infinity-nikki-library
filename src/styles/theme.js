import { createTheme } from '@mui/material/styles';

export const theme = createTheme({
  palette: {
    mode: 'dark',
    primary: { main: '#edb1bd' },
    secondary: { main: '#b38aca' },
    background: {
      default: '#292535',
      paper: '#353142',
    },
    text: {
      primary: '#ffffff',
      secondary: '#ffffff',
      disabled: 'rgba(255,255,255,0.25)',
      hint: '#ffffff',
    },
    info: { main: '#a3c7f2' },
    divider: '#edb1bd',
    error: {
      main: '#edb1bd',
    },
  },
  typography: {
    fontFamily: 'PT Sans',
    button: {
      textTransform: 'none'
    }
  },
});
