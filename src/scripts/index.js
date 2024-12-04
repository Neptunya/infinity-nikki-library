const countdown = document.getElementById('resonance-countdown');
const dateString = "December 18, 2024 19:00 UTC-7";
const eventDate = new Date(dateString);

function getOrdinalSuffix(day) {
    if (day > 3 && day < 21) return 'th';
    switch (day % 10) {
      case 1: return 'st';
      case 2: return 'nd';
      case 3: return 'rd';
      default: return 'th';
    }
  }

const options = { 
    month: 'long', 
    day: 'numeric', 
    hour: 'numeric', 
    minute: '2-digit', 
    hour12: true 
  };
  
const formattedDate = new Intl.DateTimeFormat(undefined, options).format(eventDate);
const day = eventDate.getDate();
const dayWithSuffix = `${day}${getOrdinalSuffix(day)}`;
const endDate = formattedDate.replace(/\b\d{1,2}\b/, dayWithSuffix).replace(':00', '');

function getTimeRemaining(targetDate) {
    const now = new Date();
    const timeDiff = targetDate - now; // Difference in milliseconds
  
    if (timeDiff <= 0) {
      return "Event has passed";
    }
  
    const days = Math.floor(timeDiff / (1000 * 60 * 60 * 24));
    const hours = Math.floor((timeDiff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    const minutes = Math.floor((timeDiff % (1000 * 60 * 60)) / (1000 * 60));
    const seconds = Math.floor((timeDiff % (1000 * 60)) / 1000);
  
    return `${days} days, ${hours} hours, ${minutes} minutes, ${seconds} seconds`;
  }

countdown.innerHTML = "Ending " + endDate;
const remaining = document.createElement('p');
remaining.style.textAlign = 'center';
remaining.style.marginTop = '5px';
remaining.style.fontSize = '1.5rem';
remaining.innerHTML = getTimeRemaining(eventDate);

countdown.parentNode.insertBefore(remaining, countdown.nextSibling);

setInterval(() => {
    remaining.innerHTML = "in " + getTimeRemaining(eventDate);
}, 1000);