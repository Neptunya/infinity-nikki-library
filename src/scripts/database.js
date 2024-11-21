let itemsPerPage = 10;
let currentPage = 1;

const toggleButtons = document.querySelectorAll('.toggle-btn');
toggleButtons.forEach(button => {
    button.addEventListener('click', () => {
        button.classList.toggle('selected');
        currentPage = 1;
        getFilteredItems();
      });
});

function renderItems(data) {
    const itemCardContainer = document.getElementById('item-card-container');
    itemCardContainer.innerHTML = '';
    
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
        getFilteredItems(); // Re-fetch items for the new page
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

function getFilteredItems(slot, label) {
    let url = 'http://127.0.0.1:5000/api/items/?';
    
    const selectedRarityButtons = document.querySelectorAll('.toggle-btn.selected');
    const selectedRarities = Array.from(selectedRarityButtons).map(button => button.id.replace('rarity-', ''));
    console.log(selectedRarities);
    
    if (selectedRarities.length > 0) {
        url += `rarity=${selectedRarities.join('&rarity=')}&`;
    }
    
    if (slot) url += `slot=${slot.join('&slot=')}&`;
    if (label) url += `label=${label.join('&label=')}&`;
    url = url.slice(0, -1);

    fetch(url)
    .then(response => response.json())
    .then(data => {
        renderItems(data); // Initial render with default itemsPerPage
        setTimeout(() => adjustItemsPerPageAndRerender(data), 0); // Adjust after page load
    })
    .catch(error => {
        console.error('Error fetching filtered items:', error);
    });
}

window.onload = function() {
    getFilteredItems();
};

window.onresize = function() {
    getFilteredItems();
    currentPage = 1;
};

