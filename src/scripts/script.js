// Toggle expanded class on click for smaller screens
const hamburger = document.querySelector('.hamburger');
const navLinks = document.querySelector('.nav-links');
hamburger.addEventListener('click', () => {
  navLinks.classList.toggle('expanded');
});

// Disable transition during window resize
window.addEventListener('resize', () => {
  const header = document.querySelector('header');
  
  if (window.innerWidth > 600) {
    // Remove expanded class and prevent transition during resize
    navLinks.classList.remove('expanded');
    header.classList.add('no-transition');
  } else {
    // Re-enable transition once the window width is below 700px
    header.classList.remove('no-transition');
  }
});

document.addEventListener("DOMContentLoaded", () => {
	const banner = document.querySelector(".banner-container");
	const content = document.querySelector(".content-container");

	if (banner && content) {
		content.classList.add("with-banner");
	}
});