import { render } from "astro/runtime/server/index.js";

let itemsPerPage = 10;
let currentPage = 1;
let selectedRarities = [];
let selectedSlots = [];
let selectedLabels = [];
let selectedStyles = [];
let selectedSources = [];
let selectedStyleSort = [];
let selectedMode = 'tracker';
let hideUnobtainable = false;
let hideRecolor = true;
let newOnly = false;
let searchQuery = "";
let selectedSort = "";
let descending = true;
let lastColCount = countFlexColumns();
const styles = ["Elegant", "Fresh", "Sweet", "Sexy", "Cool"];
const nonStyleSorts = ["Name", "Rarity", "Type"];

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
    getFilteredItems();
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
        message.innerHTML = "No items found.";
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
        selectedMode == 'db' ?
            renderDatabaseCard(item) :
            renderTrackerCard(item);
    });
    renderPagination(data.length);
}

function renderDatabaseCard(item) {
    const itemCardContainer = document.getElementById('item-card-container');
    const card = document.createElement('a');
    card.classList.add('item-card-link')
    card.classList.add('item-card');
    card.classList.add('card-row');
    card.style.minHeight = '190px';
    const link = `#${item['Name']}`;
    card.href = link;

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
        const outfit = document.createElement('p')
        outfit.innerHTML += "<strong><i>" + item['Outfit'] + "</i></strong>";
        outfit.style.textWrap = 'wrap';
        outfit.style.marginTop = '4px';
        cardText.appendChild(outfit);
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
    
    if (item['Banner']) {
        
        if (item['Banner'].includes("Past Content")) {
            const unobMsg = document.createElement('p');
            unobMsg.innerHTML += 'Past Content';
            unobMsg.classList.add('unobtainable-msg');
            cardText.appendChild(unobMsg)
        } else if (item['Banner'].includes("Future Content")) {
            const unobMsg = document.createElement('p');
            unobMsg.innerHTML += 'Future Content';
            unobMsg.classList.add('unobtainable-msg');
            cardText.appendChild(unobMsg)
        } else if (item['Banner'].includes("New!")) {
            const unobMsg = document.createElement('p');
            unobMsg.innerHTML += 'New!';
            unobMsg.classList.add('unobtainable-msg');
            cardText.appendChild(unobMsg)
        } 
    }
    
    if (item['Source'].includes("premium")) {
        const unobMsg2 = document.createElement('p');
        unobMsg2.innerHTML += 'Paid';
        unobMsg2.classList.add('unobtainable-msg');
        cardText.appendChild(unobMsg2)
    }
    
    itemCardContainer.appendChild(card);
}

function renderTrackerCard(item) {
    const itemCardContainer = document.getElementById('item-card-container');
    const card = document.createElement('div');
    card.classList.add('item-card');
    card.classList.add('card-row');
    card.style.minHeight = '260px';

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
        const outfit = document.createElement('p')
        outfit.innerHTML += "<strong><i>" + item['Outfit'] + "</i></strong>";
        outfit.style.textWrap = 'wrap';
        outfit.style.marginTop = '4px';
        cardText.appendChild(outfit);
    }
    
    let owned;
    let wishlisted;
    let favorited;
    let itemLevel;
    fetch(`${import.meta.env.PUBLIC_BASE_URL}check-item-status`, {
        method: 'POST',
        headers: {
            "Content-type": "application/json; charset=UTF-8"
        },
        body: JSON.stringify({
            name: item['Name'],
            uid: sessionStorage.getItem('uid')
        })
    })
    .then(response => response.json())
    .then(data => {
        owned = data.owned;
        wishlisted = data.wishlisted;
        favorited = data.favorited;
        itemLevel = data.level;

        const itemNameOwned = `${item['Name']}-owned`.replace(/\s+/g, '-');
        const labelOwned = document.createElement('label');
        labelOwned.for = itemNameOwned;
        labelOwned.innerHTML = "Owned";
        labelOwned.classList.add('checkbox-container');
        cardText.appendChild(labelOwned);

        const checkboxOwned = document.createElement('input');
        checkboxOwned.type = 'checkbox';
        checkboxOwned.id = itemNameOwned;
        labelOwned.appendChild(checkboxOwned);
        
        const checkmarkOwned = document.createElement('span');
        checkmarkOwned.classList.add('checkmark');
        if (owned) {
            checkboxOwned.checked = true;
        }
        labelOwned.appendChild(checkmarkOwned);
        
        const itemNameWish = `${item['Name']}-wished`.replace(/\s+/g, '-');
        const labelWished = document.createElement('label');
        labelWished.for = itemNameWish;
        labelWished.innerHTML = "Wishlist";
        labelWished.classList.add('checkbox-container');
        cardText.appendChild(labelWished);

        const checkboxWished = document.createElement('input');
        checkboxWished.type = 'checkbox';
        checkboxWished.id = itemNameWish;
        labelWished.appendChild(checkboxWished);
        
        const checkmarkWished = document.createElement('span');
        checkmarkWished.classList.add('checkmark');
        if (wishlisted) {
            checkboxWished.checked = true;
        }
        labelWished.appendChild(checkmarkWished);
        
        let debounceTimerWished;
        checkboxWished.addEventListener('click', () => {
            const isCheckedWished = checkboxWished.checked;
            clearTimeout(debounceTimerWished);
            debounceTimerWished = setTimeout(() => {
                const payload = {
                    name: item['Name'],
                    uid: sessionStorage.getItem('uid'),
                    isChecked: isCheckedWished
                }
                fetch(`${import.meta.env.PUBLIC_BASE_URL}wishlist`, {
                    method: 'POST',
                    headers: {
                        "Content-type": "application/json; charset=UTF-8"
                    },
                    body: JSON.stringify(payload)
                })
                .then(response => response.json())
            }, 500);
        });
        
        const itemNameLvl = `${item['Name']}-level`.replace(/\s+/g, '-');
        const labelLevel = document.createElement('label');
        labelLevel.for = itemNameLvl;
        labelLevel.innerHTML = "Level:"
        cardText.appendChild(labelLevel);
        
        const levelInput = document.createElement('input');
        levelInput.type = 'number';
        levelInput.id = itemNameLvl;
        levelInput.name = itemNameLvl;
        levelInput.classList.add('level-input')
        levelInput.min = 0;
        levelInput.max = 11;
        cardText.appendChild(levelInput);
        if (itemLevel >= 0) {
            levelInput.value = itemLevel;
        }
        
        let debounceTimerOwned;
        checkboxOwned.addEventListener('click', () => {
            const isChecked = checkboxOwned.checked;
            clearTimeout(debounceTimerOwned);
            debounceTimerOwned = setTimeout(() => {
                const payload = {
                    name: item['Name'],
                    uid: sessionStorage.getItem('uid'),
                    isChecked: isChecked
                }
                fetch(`${import.meta.env.PUBLIC_BASE_URL}owned`, {
                    method: 'POST',
                    headers: {
                        "Content-type": "application/json; charset=UTF-8"
                    },
                    body: JSON.stringify(payload)
                })
                .then(response => {
                    console.log(response.status);
                    if (isChecked && response.status == 201) {
                        levelInput.value = 0;
                    } else if (!isChecked) {
                        levelInput.value = null;
                    }
                })
            }, 500);
        });
        
        let debounceTimerLevel;
        levelInput.addEventListener('input', () => {
            clearTimeout(debounceTimerLevel);
            debounceTimerOwned = setTimeout(() => {
                const payload = {
                    name: item['Name'],
                    uid: sessionStorage.getItem('uid'),
                    level: levelInput.value ? levelInput.value : -1
                }
                
                fetch(`${import.meta.env.PUBLIC_BASE_URL}update-item-level`, {
                    method: 'POST',
                    headers: {
                        "Content-type": "application/json; charset=UTF-8"
                    },
                    body: JSON.stringify(payload)
                })
                .then(response => response.json())
                if (levelInput.value) {
                    checkboxOwned.checked = true;
                } else {
                    checkboxOwned.checked = false;
                }
            }, 500);
        });
        
        const br1 = document.createElement('br');
        cardText.appendChild(br1);
        
        const detailsLink = document.createElement('a');
        const detailsButton = document.createElement('button');
        detailsButton.classList.add('more-details-btn')
        detailsButton.innerHTML = "More Details"
        detailsLink.href = `#${item['Name']}`;
        detailsLink.appendChild(detailsButton);
        cardText.appendChild(detailsLink);
        
        if (item['Banner']) {
            const br2 = document.createElement('br');
            if (item['Banner'].includes("Past Content")) {
                cardText.appendChild(br2);
                const unobMsg = document.createElement('p');
                unobMsg.innerHTML += 'Past Content';
                unobMsg.classList.add('unobtainable-msg');
                cardText.appendChild(unobMsg)
            } else if (item['Banner'].includes("Future Content")) {
                cardText.appendChild(br2);
                const unobMsg = document.createElement('p');
                unobMsg.innerHTML += 'Future Content';
                unobMsg.classList.add('unobtainable-msg');
                cardText.appendChild(unobMsg)
            } else if (item['Banner'].includes("New!")) {
                cardText.appendChild(br2);
                const unobMsg = document.createElement('p');
                unobMsg.innerHTML += 'New!';
                unobMsg.classList.add('unobtainable-msg');
                cardText.appendChild(unobMsg)
            }
        }
        
        if (item['Source'].includes("premium")) {
            const unobMsg2 = document.createElement('p');
            unobMsg2.innerHTML += 'Paid';
            unobMsg2.classList.add('unobtainable-msg');
            cardText.appendChild(unobMsg2)
        }
        
        const heartButton = document.createElement('button');
        heartButton.className = 'heart';
        heartButton.innerHTML = '<i class="fa-regular fa-heart"></i>';
        heartButton.title = 'Add to favorites';
        heartButton.id = `${item['Name']}-favorite`.replace(/\s+/g, '-')
        
        const icon = heartButton.querySelector('i');
        if (favorited) {
            icon.classList.add('fa-solid');
            icon.classList.remove('fa-regular');
            icon.style.color = '#edb1bd';
            heartButton.title = 'Remove from favorites';
        }
        
        let debounceTimerFav;
        heartButton.addEventListener('click', () => {
            const isFavorited = icon.classList.toggle('fa-solid');
            icon.classList.toggle('fa-regular', !isFavorited);
            icon.style.color = isFavorited ? '#edb1bd' : 'white';
            heartButton.title = isFavorited ? 'Remove from favorites' : 'Add to favorites';
            clearTimeout(debounceTimerFav);
            debounceTimerFav = setTimeout(() => {
                const payload = {
                    name: item['Name'],
                    uid: sessionStorage.getItem('uid'),
                    isChecked: isFavorited
                }
                fetch(`${import.meta.env.PUBLIC_BASE_URL}favorite`, {
                    method: 'POST',
                    headers: {
                        "Content-type": "application/json; charset=UTF-8"
                    },
                    body: JSON.stringify(payload)
                })
                .then(response => response.json())
            }, 500);
        });
        
        card.appendChild(heartButton);
    })
    itemCardContainer.appendChild(card);
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
        nextButton.disabled = currentPage >= totalPages; 
        nextButton.onclick = () => changePage(currentPage + 1, totalItems);
        container.appendChild(nextButton);
    });
}

function changePage(newPage, totalItems) {
    const totalPages = Math.ceil(totalItems / itemsPerPage);
    if (newPage >= 1 && newPage <= totalPages) {
        currentPage = newPage;
        applySearchFilter();
    } 
    
    let currentColCount = countFlexColumns();
    if (currentColCount != lastColCount) {
        currentPage = 1;
        lastColCount = currentColCount;
        applySearchFilter();
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
    lastColCount = columns;
    if (columns == 1) {
        itemsPerPage = 10;
    } else {
        itemsPerPage = columns * 5;
    }
    
    itemsPerPage = (columns == 1) ? 10 : columns*5;
    renderItems(data);
}

export function updateMode(mode) {
    selectedMode = mode;
    const title = document.getElementById('title');
    title.innerHTML = selectedMode == 'db' ? "Database" : "Item Tracker"
    applySearchFilter();
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

export function toggleUnobtainable() {
    currentPage = 1;
    hideUnobtainable = !hideUnobtainable;
    getFilteredItems();
}

export function toggleRecolor() {
    currentPage = 1;
    hideRecolor = !hideRecolor;
    getFilteredItems();
}

export function toggleNew() {
    currentPage = 1;
    newOnly = !newOnly;
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
    let url = `${import.meta.env.PUBLIC_BASE_URL}api/items/?`;
    
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
    
    if (hideUnobtainable) {
        url += 'source=Currently%20Unobtainable2&';
    }
    
    if (hideRecolor) {
        url += 'source=Recolor&';
    }
    
    if (newOnly) {
        url += 'source=New%20Only&'
    }
    
    if (selectedStyleSort.length > 0 && styles.includes(selectedStyleSort)) {
        url += `style-sort=${selectedStyleSort}&`;
        url += `sort-order=${descending}&`
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
    searchQuery = query.trim().toLowerCase().replace(/\s+/g, '[- ]');
    applySearchFilter();
}

export function updateSort(sortBy) {
    currentPage = 1;
    selectedSort = sortBy
    
    if (styles.includes(sortBy)) {
        selectedStyleSort = sortBy;
        getFilteredItems();
    } else if (nonStyleSorts.includes(sortBy)) {
        selectedStyleSort = [];
        applySearchFilter();
    } else {
        selectedStyleSort = [];
        getFilteredItems();
    }
}

function applySearchFilter() {
    let filteredItems = [...allItems];
    
    if (searchQuery) {
        const regex = new RegExp(searchQuery, 'i');
    
        filteredItems = filteredItems.filter(item => 
            regex.test(item.Name?.toLowerCase() || '') ||
            regex.test(item.Outfit?.toLowerCase() || '') 
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
        'Face Decoration','Chest Accessory','Pendant','Backpiece','Ring','Arm Decoration','Handheld',
        'Base Makeup','Eyebrows','Eyelashes','Contact Lenses','Lips', null
    ];
    
    const numericColumns = ["Rarity"];

    if (selectedSort) {
        const actualSortKey = sortMapping[selectedSort.toLowerCase()];
        if (!actualSortKey) {
            console.error("Invalid sort key:", selectedSort);
            return;
        }
            
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
    }
    renderItems(filteredItems);
    totalItems = filteredItems.length;
    setTimeout(() => adjustItemsPerPageAndRerender(filteredItems), 0);
}


window.addEventListener('load', function() {
    initializePreselectedSource();
    adjustCollapsibleMaxHeight();
});

window.addEventListener('resize', function() {
    changePage(currentPage, totalItems);
    adjustCollapsibleMaxHeight();
});