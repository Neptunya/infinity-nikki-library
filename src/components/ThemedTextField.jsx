import { TextField } from "@mui/material";
import { ThemeProvider } from "@emotion/react";
import CssBaseline from "@mui/material";
import { theme } from '../styles/theme';
import { useState, useEffect } from "react";

export default function ThemedTextField({label="Text"}) {
    const [isClient, setIsClient] = useState(false);
    useEffect(() => {
        setIsClient(true);
      }, []);
    return isClient ? (
    <ThemeProvider theme={theme}>
        <CssBaseline /> {}
        <TextField label={label}/>
    </ThemeProvider>) : null;
}