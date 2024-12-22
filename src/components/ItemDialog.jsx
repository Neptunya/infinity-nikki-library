import React, { useEffect, useState } from 'react';
import { Dialog, DialogTitle, IconButton, CssBaseline, ThemeProvider } from '@mui/material';
import CloseIcon from '@mui/icons-material/Close';
import { theme } from '../styles/theme';

export default function ItemDialog() {
	const [isOpen, setIsOpen] = useState(false);
	const [levelData, setLevelData] = useState(null);
	const [infoData, setInfoData] = useState(null);
	
	const handleHashChange = () => {
		if (window.location.hash) {
			setIsOpen(true);
		} else {
			setIsOpen(false);
		}
	};
	
	const handleClose = () => {
		history.replaceState(null, "", window.location.pathname + window.location.search);
		setIsOpen(false);
	};
	
	const decodedHash = window.location.hash.substring(1);
	const decodedString = decodeURIComponent(decodedHash);
	
	const fetchApiData = async (name) => {
		try {
			const levelResponse = await fetch(`${import.meta.env.PUBLIC_BASE_URL}${name}`);
			const infoResponse = await fetch(`${import.meta.env.PUBLIC_BASE_URL}${name}/info`);
			const levelData = await levelResponse.json();
			const infoData = await infoResponse.json();
			setLevelData(levelData);
      		setInfoData(infoData);
		} catch (error) {
			console.error("Error fetching data:", error);
		}
	};
	
	useEffect(() => {
		handleHashChange();
		window.addEventListener("hashchange", handleHashChange);
		if (decodedString) {
			fetchApiData(decodedString);
		  }
		return () => {
			window.removeEventListener("hashchange", handleHashChange);
		};
	}, [decodedString]);
	
	if (!isOpen || !levelData || !infoData) return null;
	
	return (
		<ThemeProvider theme={theme}>
			<CssBaseline /> {}
			<Dialog onClose={handleClose} open={isOpen} className='custom-dialog'>
				<DialogTitle sx={{ position: 'relative' }}>
					<IconButton
						edge="end"
						color="inherit"
						onClick={handleClose}
						sx={{
						position: 'absolute',
						right: 24,
						top: 4,
						zIndex: 1,
						}}
					>
						<CloseIcon sx={{ fontSize: '32px'}} />
					</IconButton>
				</DialogTitle>
				<div className="MuiDialog-content">
				<div id='basic-info'>
					<img src={`/images/items/${infoData[0].Name}.png`} alt={infoData[0].Name} />
					<div id='basic-info-text'>
						<h3>{infoData[0].Name}</h3>
						<p id='outfit'><strong>{infoData[0].Outfit}</strong></p>
						<div className='info-batch'>
							<p id='rarity'>{'✧'.repeat(infoData[0].Rarity)}</p>
							<p>{infoData[0].Style}</p>
							<p><i>{infoData[0].Labels}</i></p>
						</div>
						<div className='info-batch'>
							<p><b>Slot:</b> {infoData[0].Slot}</p>
							<p>
								<b>Source: </b> 
								{infoData[0].Source} 
								{infoData[0].Banner && infoData[0].Banner !== "Distant Sea" && infoData[0].Banner !== "a" ? ` (${infoData[0].Banner})` : ''}
							</p>
						</div>
						
					</div>
				</div>
				<div id='stats-table'>
				<table>
					<thead><tr>
						<th>Level</th>
						<th>Elegant</th>
						<th>Fresh</th>
						<th>Sweet</th>
						<th>Sexy</th>
						<th>Cool</th>
						<th>Blings</th>
						<th>Threads</th>
						<th>Bubbles</th>
					</tr></thead>
					<tbody>
					{levelData
					.slice()
					.sort((a, b) => a.Level - b.Level)
					.map((data, index) => {
						if (data.Level === 0) {
							return (
							<tr key={data.Level}>
								<td>{data.Level}</td>
								<td>{data.Elegant}</td>
								<td>{data.Fresh}</td>
								<td>{data.Sweet}</td>
								<td>{data.Sexy}</td>
								<td>{data.Cool}</td>
								<td>{data.Blings}</td>
								<td>{data.Threads}</td>
								<td>{data.Bubbles}</td>
							</tr>
						);
						} else {
							return (
							<tr key={data.Level}>
								<td>{data.Level}</td>
								<td>{data.Elegant}</td>
								<td>{data.Fresh}</td>
								<td>{data.Sweet}</td>
								<td>{data.Sexy}</td>
								<td>{data.Cool}</td>
								<td>{data.Blings}</td>
								<td>{data.Threads}</td>
								<td>{data.Bubbles === 0 ? '?' : data.Bubbles}</td>
							</tr>
							);
						}
					})}
					</tbody>
				</table>
				</div>
			</div>
			</Dialog>
		</ThemeProvider>
	);
}