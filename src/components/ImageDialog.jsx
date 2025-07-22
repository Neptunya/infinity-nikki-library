import React, { useEffect, useState } from 'react';
import { Dialog, DialogTitle, IconButton, CssBaseline, ThemeProvider } from '@mui/material';
import CloseIcon from '@mui/icons-material/Close';

export default function ImageDialog() {
	const [isOpen, setIsOpen] = useState(false);
	const [imageHash, setImageHash] = useState('');
	
	const handleHashChange = () => {
		const hash = window.location.hash.slice(1);
		if (hash) {
			setImageHash(hash);
			setIsOpen(true);
		} else {
			setIsOpen(false);
			setImageHash('');
		}
	};
	
	useEffect(() => {
		handleHashChange();
		window.addEventListener("hashchange", handleHashChange);
		return () => {
			window.removeEventListener("hashchange", handleHashChange);
		};
	}, []);
	
	const handleClose = () => {
		history.replaceState(null, "", window.location.pathname + window.location.search);
		setIsOpen(false);
	};
	
	if (!isOpen) return null;
	
	return (
		<Dialog
			onClose={handleClose}
			open={isOpen}
			className="custom-dialog"
			PaperProps={{
				sx: {
					backgroundColor: 'transparent',
					boxShadow: 'none',
					overflowY: 'auto',
					overflowX: 'hidden',
					maxWidth: '800px',
					width: '90%',
					margin: 'auto',
				},
			}}
		>
			<DialogTitle sx={{ position: 'relative', padding: 0 }}>
				<IconButton
					edge="end"
					color="inherit"
					onClick={handleClose}
					sx={{
					position: 'absolute',
					right: 4,
					zIndex: 1,
					color: 'white'
					}}
				>
					<CloseIcon sx={{ fontSize: '40px'}} />
				</IconButton>
			</DialogTitle>
			<img
				src={`/images/guides/pinnacle-contest/${imageHash}.png`}
				alt={imageHash}
				style={{
					maxWidth: '100%',
					height: 'auto',
					display: 'block',
					margin: '0 auto',
					maxHeight: 'none'
				}}
			/>
		</Dialog>
	);
}