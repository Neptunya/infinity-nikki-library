import React, { useEffect, useState } from 'react';
import Slider from "react-slick";
import items from './pinnacle-slides.json'

export default function PinnacleCarousel() {
	const [isClient, setIsClient] = useState(false);
	useEffect(() => {
			setIsClient(true);
	})
	
	var settings = {
		dots: true,
		infinite: true,
		speed: 1300,
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 5000,
		centerMode: true,
		adaptiveHeight: true,
		centerPadding: '0px',
	};
	return isClient ? (
		<Slider {...settings}>
			{items.map((slide, i) => (
          		<Item key={i} item={slide} />
        	))}
		</Slider>
	): null;
	
	function Item(props) {
		return (
			<div className="slides-bg">
				<a href={`/guides/pinnacle-contest#${props.item.round}`}>
					<img className="pinnacle-slides" src={props.item.img}/>
				</a>
			</div>
		)
	}
}