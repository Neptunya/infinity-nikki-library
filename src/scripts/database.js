let itemsPerPage = 10;
let currentPage = 1;
let selectedRarities = [];
let selectedSlots = [];
let selectedLabels = [];
let totalItems = 0;

const collapsible = document.getElementsByClassName("collapsible");

var i;

for (i = 0; i < collapsible.length; i++) {
    collapsible[i].addEventListener("click", function() {
        this.classList.toggle("active");
        
        var content = this.nextElementSibling;
        if (content.style.maxHeight){
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
        }
        
    });
}

function adjustCollapsibleMaxHeight() {
    // Use a delay to ensure updates are complete before recalculating
    setTimeout(() => {
        for (let i = 0; i < collapsible.length; i++) {
            const content = collapsible[i].nextElementSibling;
            if (collapsible[i].classList.contains("active")) {
                // If the collapsible is active, recalculate maxHeight
                content.style.maxHeight = content.scrollHeight + "px";
            } else {
                // Otherwise, reset maxHeight to null
                content.style.maxHeight = null;
            }
        }
    }, 100); // Delay to allow content to finish updating
}
function renderItems(data) {
    const itemCardContainer = document.getElementById('item-card-container');
    itemCardContainer.innerHTML = '';

    if (data.length === 0) {
        const messageContainer = document.createElement('div');
        messageContainer.classList.add('no-results-container');


        const message = document.createElement('p');
        message.textContent = 'No items found for the selected filters.';
        message.classList.add('no-results-message');
        
        const img = document.createElement('img');
        img.src = '/images/no_results.png'; // Update with the correct path to your image
        img.alt = 'No results';
        img.classList.add('no-results-image');

        messageContainer.appendChild(message);
        messageContainer.appendChild(img);
        itemCardContainer.appendChild(messageContainer);

        renderPagination(0); // Show pagination as 0 pages
        return;
    }

    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    const itemsToRender = data.slice(startIndex, endIndex);

    itemsToRender.forEach(item => {
        const card = document.createElement('div');
        card.classList.add('item-card');
        card.classList.add('card-row');

        const img = document.createElement('img');
        img.classList.add('item-img')
        img.src = `/images/items/${item.Name}.png`;
        img.alt = item.Name;
        card.appendChild(img);

        const cardText = document.createElement('div');
        cardText.classList.add('item-card-text');
        card.appendChild(cardText)

        const h3 = document.createElement('h3');
        h3.textContent = item['Name'];
        cardText.appendChild(h3);

        if (item['Outfit']) {
            const h4 = document.createElement('h4')
            h4.innerHTML += item['Outfit'];
            cardText.appendChild(h4);
        }

        const p = document.createElement('p');
        let stars = '';
        const rarityValue = item['Rarity'];
        stars = '✧'.repeat(rarityValue);
        p.innerHTML = stars;
        cardText.appendChild(p)

        if (item['Labels']) {
            p.innerHTML += '<br><i>' + item['Labels'] + '</i>';
        }
        itemCardContainer.appendChild(card);
    });
    renderPagination(data.length);
}

function renderPagination(totalItems) {
    const paginationContainers = document.querySelectorAll('.pagination-container');
    const totalPages = Math.ceil(totalItems / itemsPerPage);

    paginationContainers.forEach(container => {
        container.innerHTML = ''; // Clear old pagination controls

        // Create Back button
        const backButton = document.createElement('button');
        backButton.textContent = '🠘';
        backButton.classList.add('pagination-button');
        backButton.disabled = currentPage === 1; // Disable if we're on the first page
        backButton.onclick = () => changePage(currentPage - 1, totalItems);
        container.appendChild(backButton);

        // Display current page and input
        const pageNumberContainer = document.createElement('span');
        pageNumberContainer.classList.add('page-number-container');

        const pageInput = document.createElement('input');
        pageInput.type = 'number';
        pageInput.min = 1;
        pageInput.max = totalPages;
        pageInput.value = currentPage;
        pageInput.classList.add('page-input');
        pageInput.onchange = (event) => changePage(Number(event.target.value), totalItems);

        pageNumberContainer.appendChild(pageInput);
        pageNumberContainer.appendChild(document.createTextNode(` of ${totalPages}`));
        container.appendChild(pageNumberContainer);

        // Create Next button
        const nextButton = document.createElement('button');
        nextButton.textContent = '🠚';
        nextButton.classList.add('pagination-button');
        nextButton.disabled = currentPage === totalPages; // Disable if we're on the last page
        nextButton.onclick = () => changePage(currentPage + 1, totalItems);
        container.appendChild(nextButton);
    });
}

function changePage(newPage, totalItems) {
    const totalPages = Math.ceil(totalItems / itemsPerPage);
    if (newPage >= 1 && newPage <= totalPages) {
        currentPage = newPage;
        getFilteredItems();
    }
}

function countFlexColumns() {
    const container = document.getElementById('item-card-container');
    const items = Array.from(container.children);
    if (items.length === 0) return 0;

    const firstItemTop = items[0].getBoundingClientRect().top;
    let columns = 0;

    for (const item of items) {
        const itemTop = item.getBoundingClientRect().top;
        if (itemTop === firstItemTop) {
            columns++;
        } else {
            break;
        }
    }
    return columns;
}

function adjustItemsPerPageAndRerender(data) {
    const columns = countFlexColumns();
    itemsPerPage = columns * 5;
    renderItems(data);
}

export function getSelectedRarities(rarityValues) {
    currentPage = 1;
    if (Array.isArray(rarityValues)) {
        selectedRarities = rarityValues.map(segment => segment.trim().length);
    } else {
        selectedRarities = [];
    }
    getFilteredItems();
}

export function getSelectedSlots(slotValues) {
    currentPage = 1;
    selectedSlots = slotValues;
    getFilteredItems();
}

export function getSelectedLabels(labelValues) {
    currentPage = 1;
    selectedLabels = labelValues;
    getFilteredItems();
}

export function getFilteredItems() {
    let url = 'http://127.0.0.1:5000/api/items/?';
    
    if (selectedRarities && selectedRarities.length > 0) {
        url += `rarity=${selectedRarities.join('&rarity=')}&`;
    }
    
    if (selectedSlots && selectedSlots.length > 0) {
        url += `slot=${selectedSlots.join('&slot=')}&`;
    }
    
    if (selectedLabels && selectedLabels.length > 0) {
        url += `label=${selectedLabels.join('&label=')}&`;
    }
    
    adjustCollapsibleMaxHeight();
    
    url = url.slice(0, -1);
    fetch(url)
    .then(response => response.json())
    .then(data => {
        renderItems(data); // Initial render with default itemsPerPage
        totalItems = data.length;
        setTimeout(() => adjustItemsPerPageAndRerender(data), 0); // Adjust after page load
    })
    .catch(error => {
        console.error('Error fetching filtered items:', error);
    });
}

window.onload = function() {
    getFilteredItems();
    adjustCollapsibleMaxHeight();
};

window.onresize = function() {
    getFilteredItems();
    adjustCollapsibleMaxHeight();
    currentPage = 1;
};