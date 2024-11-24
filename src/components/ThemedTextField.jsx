import { TextField } from "@mui/material";
import { ThemeProvider } from "@emotion/react";
import CssBaseline from "@mui/material/CssBaseline";
import { theme } from '../styles/theme';
import { useState, useEffect } from "react";
import { updateSearchQuery } from "../scripts/database";

export default function ThemedTextField({label="Text"}) {
    const [isClient, setIsClient] = useState(false);
    useEffect(() => {
        setIsClient(true);
    }, []);
    
    const [query, setQuery] = useState("");
    const handleSearchChange = (event) => {
        const value = event.target.value;
        setQuery(value);
        updateSearchQuery(value); // Update the search query
    };

    return isClient ? (
    <ThemeProvider theme={theme}>
        <CssBaseline /> {}
        <TextField 
            label={label}
            value={query}
            onChange={handleSearchChange}
            sx={{
                width:{
                    xs: '100%',
                    sm: '65%',
                    md: '75%'
                },
                ml: '5px',
                mb: '16px'
            }}
        />
    </ThemeProvider>) : null;
}