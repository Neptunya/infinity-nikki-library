const hamburger = document.querySelector('.hamburger');
const navLinks = document.querySelector('.nav-links');
const header = document.querySelector('header'); // The header block element

// Toggle expanded class on click for smaller screens
hamburger.addEventListener('click', () => {
  navLinks.classList.toggle('expanded');
});

// Disable transition during window resize
window.addEventListener('resize', () => {
  if (window.innerWidth > 600) {
    // Remove expanded class and prevent transition during resize
    navLinks.classList.remove('expanded');
    header.classList.add('no-transition');
  } else {
    // Re-enable transition once the window width is below 700px
    header.classList.remove('no-transition');
  }
});