import React, { useEffect, useState } from 'react';
import Slider from "react-slick";
import items from './slides.json'
import { Button } from '@mui/material'

const styles = {
	button: {
		backgroundColor: '#353142',
		color: '#b38aca',
		marginTop: 12,
		fontFamily: 'PT Sans',
		borderColor: '#b38aca',
		borderWidth: 2,
		textTransform: 'none',
	},
};

export default function SimpleSlider() {
	const [isClient, setIsClient] = useState(false);
	useEffect(() => {
			setIsClient(true);
	})
	
	const validSlides = items.filter(slide => 
		new Date(slide.start) <= new Date() && 
		(!slide.end || new Date(slide.end) >= new Date())
	);
	
	var settings = {
		dots: true,
		infinite: true,
		speed: 1300,
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 5000,
		centerMode: true,
	};
	return isClient ? (
		<Slider {...settings}>
			{validSlides.map((slide, i) => (
          		<Item key={i} item={slide} />
        	))}
		</Slider>
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
			<div>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<h3 style={{marginBottom: 0, marginTop: 12}}>Permanent</h3>
					<p style={{fontSize: '1.25rem', marginTop: 0}}>No End Date</p>
				</div>
				<img style={{maxHeight: 300}} src={props.item.img}/>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<Button href={props.item.link} variant="outlined" style=
						{styles.button}>
						Check Out Banner Items
					</Button>
				</div>
			</div>
		)
	} else if (props.item.shop && props.item.link !== null) {
		return (
			<div>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<h3 style={{marginBottom: 0, marginTop: 12}}>{`Shop Update on ${endDate}`}</h3>
					<p style={{fontSize: '1.25rem', marginTop: 0}}>{`in ${timeRemaining}`}</p>
				</div>
				<img style={{maxHeight: 300}} src={props.item.img}/>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<Button href={props.item.link} variant="outlined" style=
						{styles.button}>
						Check Out Shop Items
					</Button>
					
				</div>
			</div>
		)
	} else if (props.item.shop && !props.item.link) {
		return (
			<div>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<h3 style={{marginBottom: 0, marginTop: 12}}>{`Shop Update on ${endDate}`}</h3>
					<p style={{fontSize: '1.25rem', marginTop: 0}}>{`in ${timeRemaining}`}</p>
				</div>
				<img style={{maxHeight: 300}} src={props.item.img}/>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<p>Database not yet ready</p>
					
				</div>
			</div>
		)
	} else if (!props.item.link) {
		return (
			<div>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<h3 style={{marginBottom: 0, marginTop: 12}}>{`Ending ${endDate}`}</h3>
					<p style={{fontSize: '1.25rem', marginTop: 0}}>{`in ${timeRemaining}`}</p>
				</div>
				<img style={{maxHeight: 300}} src={props.item.img}/>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<p>Database not yet ready</p>
					
				</div>
			</div>
		)
	} else {
		return (
			<div>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<h3 style={{marginBottom: 0, marginTop: 12}}>{`Ending ${endDate}`}</h3>
					<p style={{fontSize: '1.25rem', marginTop: 0}}>{`in ${timeRemaining}`}</p>
				</div>
				<img style={{maxHeight: 300}} src={props.item.img}/>
				<div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', textAlign: 'center'}}>
					<Button href={props.item.link} variant="outlined" style=
						{styles.button}>
						Check Out Banner Items
					</Button>
				</div>
			</div>
		)
	}
}