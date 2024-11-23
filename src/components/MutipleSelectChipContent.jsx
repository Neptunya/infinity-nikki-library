import { useState } from 'react';
import { useTheme } from '@mui/material/styles';
import Box from '@mui/material/Box';
import OutlinedInput from '@mui/material/OutlinedInput';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import Chip from '@mui/material/Chip';

const ITEM_HEIGHT = 48;
const ITEM_PADDING_TOP = 8;
const MenuProps = {
  PaperProps: {
    style: {
      maxHeight: ITEM_HEIGHT * 4.5 + ITEM_PADDING_TOP,
      width: 250,
    },
  },
};

function getStyles(name, personName, theme) {
  return {
    fontWeight: personName.includes(name)
      ? theme.typography.fontWeightMedium
      : theme.typography.fontWeightRegular,
  };
}

export default function MultipleSelectChipContent({ names = [], idPrefix = 'demo', label = 'Chip', onSelectionChange }) {
  const theme = useTheme(); // Access the theme from ThemeProvider
  
  const [personName, setPersonName] = useState([]);

  const handleChange = (event) => {
    const {
      target: { value },
    } = event;
    const updatedValues = typeof value === 'string' ? value.split(',') : value;
    setPersonName(updatedValues);
    onSelectionChange(updatedValues);
  };

  return (
    <div>
      <FormControl
        sx={{
          m: 1,
          width: 250,
          bgcolor: theme.palette.background.paper, // Custom background color
          color: theme.palette.text.primary, // Custom text color
        }}
      >
        <InputLabel id={`${idPrefix}-select-multiple-chip`}>{label}</InputLabel>
        <Select
          labelId={`${idPrefix}-multiple-chip-label`}
          id={`${idPrefix}-multiple-chip`}
          multiple
          value={personName}
          onChange={handleChange}
          input={<OutlinedInput id={`${idPrefix}-select-multiple-chip-vals`} label="Chip" />}
          renderValue={(selected) => (
            <Box sx={{ display: 'flex', flexWrap: 'wrap', gap: 0.5 }}>
              {selected.map((value) => (
                <Chip key={value} label={value} />
              ))}
            </Box>
          )}
          MenuProps={MenuProps}
        >
          {names.map((name) => (
            <MenuItem
              key={name}
              value={name}
              style={getStyles(name, personName, theme)}
            >
              {name}
            </MenuItem>
          ))}
        </Select>
      </FormControl>
    </div>
  );
}

