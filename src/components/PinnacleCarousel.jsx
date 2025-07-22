import React, { useEffect, useState } from 'react';
import Slider from "react-slick";

export default function PinnacleCarousel({ items }) {
	const [isClient, setIsClient] = useState(false);
	const [hasHash, setHasHash] = useState(false);
	
	useEffect(() => {
    setIsClient(true);

    if (window.location.hash) {
      setHasHash(true);
    }

    const onHashChange = () => {
      setHasHash(window.location.hash !== '');
    };
    window.addEventListener('hashchange', onHashChange);

    return () => {
      window.removeEventListener('hashchange', onHashChange);
    };
  }, []);
	
	var settings = {
		dots: true,
		infinite: true,
		speed: 1300,
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: !hasHash,
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
				<a href={`#${props.item.round}`}>
					<img className="pinnacle-slides" src={props.item.img}/>
				</a>
			</div>
		)
	}
}