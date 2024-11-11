// Disable transition during window resize
const navLinks = document.querySelector('.nav-links');
const header = document.querySelector('header');
const content = document.querySelector(".content-container");
const banner = document.querySelector(".banner-container");
const guideCards = document.querySelectorAll('.guide-card');
const imgCards = document.querySelectorAll('.guide-card > img');

window.addEventListener('resize', () => {
  
  if (window.innerWidth > 600) {
    // Remove expanded class and prevent transition during resize
    navLinks.classList.remove('expanded');
    header.classList.add('no-transition');
    
  } else {
    // Re-enable transition once the window width is below 700px
    header.classList.remove('no-transition');
  }
  
  if (window.innerWidth > 750) {
    guideCards.forEach(card => {
      card.classList.remove('card-col')
      card.classList.add('card-row')
    });
    imgCards.forEach(img => {
      img.classList.remove('img-card-col')
      img.classList.add('img-card-row')
    });
  } else {
    guideCards.forEach(card => {
      card.classList.remove('card-row')
      card.classList.add('card-col')
    });
    imgCards.forEach(img => {
      img.classList.remove('img-card-row')
      img.classList.add('img-card-col')
    });
  }
  
  if (window.innerWidth > 1000) {
    content.style.padding = "1rem 5rem";
    header.style.padding = "1rem 5rem";
  } else {
    content.style.padding = "1rem 2rem";
    header.style.padding = "1rem 2rem";
  }
});

document.addEventListener("DOMContentLoaded", () => {
	if (banner && content) {
		content.classList.add("with-banner");
	}
  
  if (window.innerWidth > 750) {
    guideCards.forEach(card => {
      card.classList.add('card-row')
    });
    imgCards.forEach(img => {
      img.classList.add('img-card-row')
    });
  } else {
    guideCards.forEach(card => {
      card.classList.add('card-col')
    });
    imgCards.forEach(img => {
      img.classList.add('img-card-col')
    });
  }
  
  if (window.innerWidth > 1000) {
    content.style.padding = "1rem 5rem";
    header.style.padding = "1rem 5rem";
  } else {
    content.style.padding = "1rem 2rem";
    header.style.padding = "1rem 2rem";
  }
  
  // Toggle expanded class on click for smaller screens
  const hamburger = document.querySelector('.hamburger');
  const contentWithBanner = document.querySelector('.content-container.with-banner')
  hamburger.addEventListener('click', () => {
    navLinks.classList.toggle('expanded');
    if (contentWithBanner.id === "header-expanded") {
      contentWithBanner.removeAttribute('id');
    } else {
      contentWithBanner.id = "header-expanded";
    }
  });
    
});