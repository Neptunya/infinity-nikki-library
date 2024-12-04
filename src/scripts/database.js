let itemsPerPage = 10;
let currentPage = 1;
let selectedRarities = [];
let selectedSlots = [];
let selectedLabels = [];
let selectedStyles = [];
let selectedSources = [];
let searchQuery = "";
let selectedSort = "";
let descending = true;

let allItems = [];
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

const sortBtn = document.getElementById("sort-btn");
sortBtn.addEventListener("click", function () {
    descending = !descending;
    const icons = sortBtn.getElementsByClassName("btn-img");
    for (let i = 0; i < icons.length; i++) {
        icons[i].classList.toggle("show");
    }
    applySearchFilter();
});

function adjustCollapsibleMaxHeight() {
    setTimeout(() => {
        for (let i = 0; i < collapsible.length; i++) {
            const content = collapsible[i].nextElementSibling;
            if (collapsible[i].classList.contains("active")) {
                content.style.maxHeight = content.scrollHeight + "px";
            } else {
                content.style.maxHeight = null;
            }
        }
    }, 100);
}
function renderItems(data) {
    const itemCardContainer = document.getElementById('item-card-container');
    itemCardContainer.innerHTML = '';

    if (data.length === 0) {
        const messageContainer = document.createElement('div');
        messageContainer.classList.add('no-results-container');


        const message = document.createElement('p');
        message.innerHTML = "No items found.<br>Currently this database only has items from CBT.<br>I'm working hard to get the new items from the official release added!";
        message.style.textAlign = 'center';
        message.style.whiteSpace = 'pre-line';
        message.classList.add('no-results-message');
        
        const img = document.createElement('img');
        img.src = '/images/no_results.png';
        img.alt = 'No results';
        img.classList.add('no-results-image');

        messageContainer.appendChild(message);
        messageContainer.appendChild(img);
        itemCardContainer.appendChild(messageContainer);

        renderPagination(0);
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
        
        if (item['Style']) {
            p.innerHTML += '<br>' + item['Style'];
        }
        
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
        container.innerHTML = '';

        const backButton = document.createElement('button');
        backButton.innerHTML = '<svg width="14" height="14" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15 18L9 12L15 6" stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/></svg>';
        backButton.classList.add('pagination-button');
        backButton.disabled = currentPage === 1; 
        backButton.onclick = () => changePage(currentPage - 1, totalItems);
        container.appendChild(backButton);

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

        const nextButton = document.createElement('button');
        nextButton.innerHTML = '<svg width="14" height="14" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9 18L15 12L9 6" stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/></svg>';
        nextButton.classList.add('pagination-button');
        nextButton.disabled = currentPage === totalPages; 
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

export function getSelectedStyle(styleValues) {
    currentPage = 1;
    selectedStyles = styleValues;
    getFilteredItems();
}

export function getSelectedSource(sourceValues) {
    currentPage = 1;
    selectedSources = sourceValues;
    getFilteredItems();
}

function initializePreselectedSource() {
    const params = new URLSearchParams(window.location.search);
    const preselectedSources = params.getAll('source');
    if (preselectedSources.length > 0) {
        getSelectedSource(preselectedSources);
    } else {
        getFilteredItems();
    }
}

export function getFilteredItems() {
    // change when building
    let url = '/api/items/?';
    // let url = 'http://127.0.0.1:5000/api/items/?'
    
    if (selectedRarities && selectedRarities.length > 0) {
        url += `rarity=${selectedRarities.join('&rarity=')}&`;
    }
    
    if (selectedSlots && selectedSlots.length > 0) {
        url += `slot=${selectedSlots.join('&slot=')}&`;
    }
    
    if (selectedLabels && selectedLabels.length > 0) {
        url += `label=${selectedLabels.join('&label=')}&`;
    }
    
    if (selectedStyles && selectedStyles.length > 0) {
        url += `style=${selectedStyles.join('&style=')}&`;
    }
    
    if (selectedSources && selectedSources.length > 0) {
        url += `source=${selectedSources.join('&source=')}&`;
    }
    
    adjustCollapsibleMaxHeight();
    url = url.slice(0, -1);
    fetch(url)
    .then(response => response.json())
    .then(data => {
        allItems = data;
        applySearchFilter();
    })
    .catch(error => {
        console.error('Error fetching filtered items:', error);
    });
}

export function updateSearchQuery(query) {
    currentPage = 1;
    searchQuery = query.trim();
    applySearchFilter();
}

export function updateSort(sortBy) {
    currentPage = 1;
    selectedSort = sortBy
    applySearchFilter();
}

function calculateScore(item, style) {
    const elegant = item['Elegant'] || 0;
    const fresh = item['Fresh'] || 0;
    const sweet = item['Sweet'] || 0;
    const sexy = item['Sexy'] || 0;
    const cool = item['Cool'] || 0;

    let score = (elegant * (style === "Elegant" ? 3.7 : 0.336)) + 
                (fresh * (style === "Fresh" ? 3.7 : 0.336)) + 
                (sweet * (style === "Sweet" ? 3.7 : 0.336)) + 
                (sexy * (style === "Sexy" ? 3.7 : 0.336)) + 
                (cool * (style === "Cool" ? 3.7 : 0.336));
    return score;
}

function applySearchFilter() {
    let filteredItems = [...allItems];
    
    if (searchQuery) {
        filteredItems = filteredItems.filter(item => 
            item.Name?.toLowerCase()?.includes(searchQuery) ||
            item.Outfit?.toLowerCase()?.includes(searchQuery)
        );
    }

    const sortMapping = {
        "name": "Name",
        "type": "Slot", 
        "rarity": "Rarity",
        "elegant": "Elegant",
        "fresh": "Fresh",
        "sweet": "Sweet",
        "sexy": "Sexy",
        "cool": "Cool",
    };
    
    const typeOrder = [
        'Hair','Dress','Outerwear','Top','Bottom','Socks','Shoes',
        'Hair Accessory','Headwear','Earrings','Neckwear','Bracelet','Choker','Gloves',
        'Face Decoration','Chest Accessory','Pendant','Backpiece','Ring', 'Arm Decoration', 'Handheld',
        'Base Makeup','Eyebrows','Eyelashes','Contact Lenses','Lips', null
    ];
    
    const numericColumns = ["Rarity"];
    const style = ["Elegant", "Fresh", "Sweet", "Sexy", "Cool"];

    if (selectedSort) {
        const actualSortKey = sortMapping[selectedSort.toLowerCase()];
        if (!actualSortKey) {
            console.error("Invalid sort key:", selectedSort);
            return;
        }

        document.getElementById("loadingSpinner").style.display = "block";

        if (style.includes(actualSortKey)) {
            Promise.all(filteredItems.map(async item => {
                // change when building
                const response = await fetch(`/api/items/${encodeURIComponent(item.Name)}`);
                // const response = await fetch(`https://infinitynikkilibrary.com/api/items/${encodeURIComponent(item.Name)}`);
                const data = await response.json();
                const level5Data = data.find(d => d.Level === 5);
                if (level5Data) {
                    item[actualSortKey] = level5Data[actualSortKey];
                }
            })).then(() => {
                filteredItems.sort((a, b) => {
                    const scoreA = calculateScore(a, actualSortKey);
                    const scoreB = calculateScore(b, actualSortKey);
                    return descending ? scoreB - scoreA : scoreA - scoreB;
                });

                document.getElementById("loadingSpinner").style.display = "none";
                
                renderItems(filteredItems);
            }).catch(error => {
                console.error("Error fetching level 5 data for sorting:", error);
                document.getElementById("loadingSpinner").style.display = "none";
            });
        } else {
            if (numericColumns.includes(actualSortKey)) {
                filteredItems.sort((a, b) => 
                    descending 
                        ? b[actualSortKey] - a[actualSortKey] 
                        : a[actualSortKey] - b[actualSortKey]
                );
            } else if (actualSortKey === "Slot") {
                filteredItems.sort((a, b) => {
                    const indexA = typeOrder.indexOf(a[actualSortKey]);
                    const indexB = typeOrder.indexOf(b[actualSortKey]);
                    return descending 
                        ? indexA - indexB
                        : indexB - indexA;
                });
            } else {
                filteredItems.sort((a, b) => 
                    descending 
                        ? a[actualSortKey]?.localeCompare(b[actualSortKey]) || 0 
                        : b[actualSortKey]?.localeCompare(a[actualSortKey]) || 0
                );
            }

            document.getElementById("loadingSpinner").style.display = "none";
            renderItems(filteredItems);
        }
    }
    renderItems(filteredItems);
    totalItems = filteredItems.length;
    setTimeout(() => adjustItemsPerPageAndRerender(filteredItems), 0);
}


window.onload = function() {
    initializePreselectedSource();
    adjustCollapsibleMaxHeight();
};

window.onresize = function() {
    getFilteredItems();
    adjustCollapsibleMaxHeight();
    currentPage = 1;
};