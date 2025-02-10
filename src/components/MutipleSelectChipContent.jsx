import { useState, useEffect } from 'react';
import { useTheme } from '@mui/material/styles';
import Box from '@mui/material/Box';
import OutlinedInput from '@mui/material/OutlinedInput';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import Chip from '@mui/material/Chip';
import { useMediaQuery } from "@mui/material";

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

export default function MultipleSelectChipContent({ names, idPrefix, label, onSelectionChange, selected, error }) {
  const theme = useTheme();
  
  const [personName, setPersonName] = useState(selected);
  const isSmallScreen = useMediaQuery("(max-width: 400px)");
  const isSmallerScreen = useMediaQuery("(max-width: 320px)");
  const dynamicWidth = isSmallScreen
    ? (isSmallerScreen
      ? '150px' 
      : '200px'
    )
    : '270px'
  
  const handleChange = (event) => {
    const {
      target: { value },
    } = event;
    const updatedValues = typeof value === 'string' ? value.split(',') : value;
    setPersonName(updatedValues);
    onSelectionChange(updatedValues);
  };
  
  useEffect(() => {
    setPersonName(selected);
  }, [selected]);

  return (
    <div>
      <FormControl
        sx={{
          m: 1,
          width: dynamicWidth,
          color: theme.palette.text.primary,
        }}
        error={error}
      >
        <InputLabel id={`${idPrefix}-select-multiple-chip`}>{label}</InputLabel>
        <Select
          labelId={`${idPrefix}-multiple-chip-label`}
          id={`${idPrefix}-multiple-chip`}
          multiple
          value={personName}
          onChange={handleChange}
          input={<OutlinedInput id={`${idPrefix}-select-multiple-chip-vals`} label={label} />}
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
              disabled={name === '(Select Outfit Items First)'}
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

