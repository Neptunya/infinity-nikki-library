import React, { useEffect, useState } from 'react';
import { Dialog, DialogTitle, IconButton, CssBaseline, ThemeProvider } from '@mui/material';
import CloseIcon from '@mui/icons-material/Close';
import { theme } from '../styles/theme';
import Tab from '@mui/material/Tab';
import Box from '@mui/material/Box';
import TabContext from '@mui/lab/TabContext';
import TabList from '@mui/lab/TabList';
import TabPanel from '@mui/lab/TabPanel';

export default function ItemDialog() {
	const [isOpen, setIsOpen] = useState(false);
	const [levelData, setLevelData] = useState(null);
	const [infoData, setInfoData] = useState(null);
	const [value, setValue] = React.useState('1');
	const [owned, setOwned] = useState(false);
	const [wishlisted, setWishlisted] = useState(false);
	const [favorited, setFavorited] = useState(false);
	const[itemLevel, setLevel] = useState(-1);
	
	const makeup = ["Base Makeup", "Eyebrows", "Eyelashes", "Contact Lenses", "Lips"];
	
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
	

	const handleTabChange = (event, newValue) => {
		setValue(newValue);
	};
	
	let debounceTimerOwned;
	function handleOwnedChange(event) {
		const itemName = `${infoData[0].Name.replace(/\s+/g, '-')}`;
		const isChecked = event.target.checked;
		const levelInput = document.getElementById(`${itemName}-level-dialog`);
		const checkboxOwnedCard = document.getElementById(`${itemName}-owned`);
		const levelInputCard = document.getElementById(`${itemName}-level`);
		
		setOwned(isChecked);
		clearTimeout(debounceTimerOwned);
		debounceTimerOwned = setTimeout(() => {
			const payload = {
				name: infoData[0].Name,
				uid: sessionStorage.getItem('uid'),
				isChecked: isChecked
			}
			fetch(`${import.meta.env.PUBLIC_BASE_URL}owned`, {
				method: 'POST',
				headers: {
					"Content-type": "application/json; charset=UTF-8"
				},
				body: JSON.stringify(payload)
			})
			.then(response => {
				if (isChecked && response.status == 201) {
					levelInput.value = 0;
					levelInputCard.value = 0;
				} else if (!isChecked) {
					levelInput.value = null;
					levelInputCard.value = null;
				}
				checkboxOwnedCard.checked = isChecked;
			})
		}, 500);
	}
	
	let debouceTimerWished;
	function handleWishlistChange(event) {
		const itemName = `${infoData[0].Name.replace(/\s+/g, '-')}`;
		const isChecked = event.target.checked;
		const checkboxWishCard = document.getElementById(`${itemName}-wished`);
		
		setWishlisted(isChecked);
		clearTimeout(debouceTimerWished);
		debounceTimerOwned = setTimeout(() => {
			const payload = {
				name: infoData[0].Name,
				uid: sessionStorage.getItem('uid'),
				isChecked: isChecked
			}
			fetch(`${import.meta.env.PUBLIC_BASE_URL}wishlist`, {
				method: 'POST',
				headers: {
					"Content-type": "application/json; charset=UTF-8"
				},
				body: JSON.stringify(payload)
			})
			.then(response => {
				checkboxWishCard.checked = isChecked;
			})
		}, 500);
	}
	
	let debounceTimerFavorited;
	function handleFavoriteChange(event) {
		const itemName = `${infoData[0].Name.replace(/\s+/g, '-')}`;
		const isFavorited = event.target.classList.toggle('fa-solid');
		const checkboxFavoriteCard = document.getElementById(`${itemName}-favorite`);
		
		setFavorited(isFavorited);
		clearTimeout(debounceTimerFavorited);
		debounceTimerOwned = setTimeout(() => {
			const payload = {
				name: infoData[0].Name,
				uid: sessionStorage.getItem('uid'),
				isChecked: isFavorited
			}
			fetch(`${import.meta.env.PUBLIC_BASE_URL}favorite`, {
				method: 'POST',
				headers: {
					"Content-type": "application/json; charset=UTF-8"
				},
				body: JSON.stringify(payload)
			})
			.then(response => {
				console.log(checkboxFavoriteCard);
				checkboxFavoriteCard.querySelector('i').classList.toggle('fa-regular', !isFavorited);
				checkboxFavoriteCard.querySelector('i').classList.toggle('fa-solid', isFavorited);
				checkboxFavoriteCard.style.color = isFavorited ? '#edb1bd' : 'white';
				checkboxFavoriteCard.querySelector('i').style.color = isFavorited ? '#edb1bd' : 'white';
			})
		}, 500);
	}
	
	let debounceTimerLevel;
	function handleLevelChange(event) {
		const itemName = `${infoData[0].Name.replace(/\s+/g, '-')}`;
		const lvl = event.target.value;
		setLevel(lvl);
		
		const checkboxOwnedCard = document.getElementById(`${itemName}-owned`);
		const levelInputCard = document.getElementById(`${itemName}-level`);
		
		clearTimeout(debounceTimerLevel);
            debounceTimerOwned = setTimeout(() => {
			const payload = {
				name: infoData[0].Name,
				uid: sessionStorage.getItem('uid'),
				level: lvl ? lvl : -1
			}
			
			fetch(`${import.meta.env.PUBLIC_BASE_URL}update-item-level`, {
				method: 'POST',
				headers: {
					"Content-type": "application/json; charset=UTF-8"
				},
				body: JSON.stringify(payload)
			})
			.then(response => response.json())
			if (lvl) {
				setOwned(true);
				checkboxOwnedCard.checked = true;
				levelInputCard.value = lvl;
			} else {
				setOwned(false);
				checkboxOwnedCard.checked = false;
				levelInputCard.value = null;
			}
		}, 500);
	}
	
	const decodedHash = window.location.hash.substring(1);
	const decodedString = decodeURIComponent(decodedHash);
	const token = localStorage.getItem('refresh_token');
	
	async function fetchApiData(name) {
		try {
			const levelResponse = await fetch(`${import.meta.env.PUBLIC_BASE_URL}api/items/${name}`);
			const infoResponse = await fetch(`${import.meta.env.PUBLIC_BASE_URL}api/items/${name}/info`);
			const ldata = await levelResponse.json();
			const idata = await infoResponse.json();
			setLevelData(ldata);
      		setInfoData(idata);
		} catch (error) {
			console.error("Error fetching data:", error);
		}
	};
	
	async function fetchItemStatus(name) {
		const uid = sessionStorage.getItem('uid');
		if (uid) {
			fetch(`${import.meta.env.PUBLIC_BASE_URL}check-item-status`, {
				method: 'POST',
				headers: {
					"Content-type": "application/json; charset=UTF-8"
				},
				body: JSON.stringify({
					name: name,
					uid: uid
				})
			})
			.then(response => response.json())
			.then(data => {
				setOwned(data.owned);
				setWishlisted(data.wishlisted);
				setFavorited(data.favorited);
				setLevel(data.level)
			})
		}
	}
	
	useEffect(() => {
		handleHashChange();
		window.addEventListener("hashchange", handleHashChange);
		if (decodedString) {
			fetchApiData(decodedString);
			async function fetchData() {
				await fetchItemStatus(decodedString);
			  }
			  fetchData();
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
						{token 
							? <div className='dialog-header-fav'>
								<h3>{infoData[0].Name}</h3>
								<button className='dialog-heart' onClick={handleFavoriteChange}>
									<i 
										className={`fa-heart ${favorited ? 'fa-solid' : 'fa-regular'}`}
										style={{
											color: favorited ? '#edb1bd' : 'white'
										  }}
										>
									</i>
								</button>
							</div>
							: <h3>{infoData[0].Name}</h3>
						}
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
								{infoData[0].Banner
								&& infoData[0].Banner !== "Distant Sea"
								&& infoData[0].Banner !== "In Shop"
								&& infoData[0].Banner !== "Past Content"
								&& infoData[0].Banner !== "Future Content"
								&& infoData[0].Banner !== "New!"
								&& (infoData[0].Banner.split(',').length - 1 <= 1)
								? ` (${infoData[0].Banner.includes('Content') || infoData[0].Banner.includes('New')
									? infoData[0].Banner.substring(infoData[0].Banner.indexOf(',') + 1).trim() 
									: infoData[0].Banner})` : ''}
							</p>
						</div>
						<div>
							{infoData[0].Banner
							&& infoData[0].Banner.includes("Past Content") ?
							<p className='unobtainable-msg-dialog'>Past Content</p>
							: ''}
							{infoData[0].Banner
							&& infoData[0].Banner.includes("Future Content") ?
							<p className='unobtainable-msg-dialog'>Future Content</p>
							: ''}
							{infoData[0].Banner
							&& infoData[0].Banner.includes("New!") ?
							<p className='unobtainable-msg-dialog'>New!</p>
							: ''}
							{infoData[0].Banner
							&& infoData[0].Source.includes("premium") ?
							<p className='unobtainable-msg-dialog'>Paid</p>
							: ''}
						</div>
					</div>
				</div>
				{!makeup.includes(infoData[0]?.Slot) && !token && (
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
				)}
				{ token && (
					<Box sx={{
						marginTop: -2,
						padding: '0px 16px'
					}}>
					<TabContext value={value}>
						<Box sx={{ borderBottom: 1, borderColor: 'divider' }}>
						<TabList onChange={handleTabChange}>
							<Tab label="Stats" value="1" />
							<Tab label="Status" value="2" />
						</TabList>
						</Box>
						<TabPanel value="2">
							<Box>
								<label className='checkbox-container'>
									Owned
									<input 
										type="checkbox" 
										id={`${infoData[0].Name.replace(/\s+/g, '-')}-owned-dialog`}
										checked={owned}
										onChange={handleOwnedChange}
									/>
									<span className="checkmark"></span>
								</label>
								<label className='checkbox-container'>
									Wishlist
									<input 
										type="checkbox" 
										id={`${infoData[0].Name.replace(/\s+/g, '-')}-wishlisted-dialog`}
										checked={wishlisted}
										onChange={handleWishlistChange}
									/>
									<span className="checkmark"></span>
								</label>
								<label>Level:</label>
								<input 
									type="number" 
									id={`${infoData[0].Name.replace(/\s+/g, '-')}-level-dialog`}
									min="0"
									max="11"
									defaultValue={itemLevel < 0 ? '' : itemLevel}
									onChange={handleLevelChange}
									style={{
										backgroundColor: '#555260',
										border: '1px solid #88858f'
									}}
								/>
							</Box>
						</TabPanel>
						<TabPanel value="1">
						<div id='stats-table-tab'>
						<table style={{
							overflowX: 'auto',
							overflowY: 'auto'
						}}
						id='table-in-tab'>
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
						</TabPanel>
					</TabContext>
				  </Box>
				)}
			</div>
			</Dialog>
		</ThemeProvider>
	);
}