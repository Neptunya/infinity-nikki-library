import React, { useEffect, useState } from 'react';
import Carousel from 'react-material-ui-carousel'
import { Paper, Button } from '@mui/material'
import items from './slides.json'
import { ThemeProvider } from '@mui/material/styles';
import CssBaseline from '@mui/material/CssBaseline';
import { theme } from '../../styles/theme';

export default function Example(props) {
	const [isClient, setIsClient] = useState(false);
	useEffect(() => {
			setIsClient(true);
	})

	const validSlides = items.filter(slide => 
		new Date(slide.start) <= new Date() && 
		(!slide.end || new Date(slide.end) >= new Date())
	);
	
	return isClient ? (
		<Carousel 
			interval={5000}
			duration={1000}
			navButtonsAlwaysVisible={true}
			fullHeightHover={false}
			indicatorIconButtonProps={{
				style: {
					color: '#494554'
				}
			}}
			activeIndicatorIconButtonProps={{
				style: {
					backgroundColor: '#b38aca'
				}
			}}
			navButtonsProps={{
				style: {
					backgroundColor: '#494554',
					color: 'white',
					
				}
			}}>
			{
				validSlides.map( (validSlides, i) => <Item key={i} item={validSlides} /> )
			}
		</Carousel>
	): null;
}

function Item(props) {
	function getOrdinalSuffix(day) {
		if (day > 3 && day < 21) return 'th';
		switch (day % 10) {
			case 1: return 'st';
			case 2: return 'nd';
			case 3: return 'rd';
			default: return 'th';
		}
	}
	
	function getTimeRemaining(targetDate) {
		const now = new Date();
		const timeDiff = targetDate - now; // Difference in milliseconds
	  
		if (timeDiff <= 0) {
			return "Banner has Ended";
		}
	  
		const days = Math.floor(timeDiff / (1000 * 60 * 60 * 24));
		const hours = Math.floor((timeDiff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		const minutes = Math.floor((timeDiff % (1000 * 60 * 60)) / (1000 * 60));
		const seconds = Math.floor((timeDiff % (1000 * 60)) / 1000);

		return `${days} days, ${hours} hours, ${minutes} minutes, ${seconds} seconds`;
	}
	
	const options = { 
		month: 'long', 
		day: 'numeric', 
		hour: 'numeric', 
		minute: '2-digit', 
		hour12: true 
	};
	
	const eventDate = new Date(props.item.end);
	const formattedDate = new Intl.DateTimeFormat(undefined, options).format(eventDate);
	const day = eventDate.getDate();
	const dayWithSuffix = `${day}${getOrdinalSuffix(day)}`;
	const endDate = formattedDate.replace(/\b\d{1,2}\b/, dayWithSuffix).replace(':00', '');
	const [timeRemaining, setTimeRemaining] = useState(getTimeRemaining(eventDate));
	
	useEffect(() => {
		const intervalId = setInterval(() => {
			setTimeRemaining(getTimeRemaining(eventDate));
		}, 1000);
	
		return () => clearInterval(intervalId);
	}, [eventDate]);
	
	if (!props.item.end) {
		return (
			<ThemeProvider theme={theme}>
				<CssBaseline /> {}
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<h3 style={{marginBottom: 0, marginTop: 12}}>Permanent</h3>
					<p style={{fontSize: '1.25rem', marginTop: 0}}>No End Date</p>
				</div>
				<img src={props.item.img}/>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<Button href={props.item.link} variant="outlined" style=
						{{marginTop: 12}}>
						Check Out Banner Items
					</Button>
					
				</div>
			</ThemeProvider>
		)
	} else {
		return (
			<ThemeProvider theme={theme}>
				<CssBaseline /> {}
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<h3 style={{marginBottom: 0, marginTop: 12}}>{`Ending ${endDate}`}</h3>
					<p style={{fontSize: '1.25rem', marginTop: 0}}>{`in ${timeRemaining}`}</p>
				</div>
				<img src={props.item.img}/>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<Button href={props.item.link} variant="outlined" style=
						{{marginTop: 12}}>
						Check Out Banner Items
					</Button>
				</div>
			</ThemeProvider>
		)
	}
}