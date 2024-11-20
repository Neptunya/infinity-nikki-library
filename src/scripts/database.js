function renderItems(data) {
    const itemCardContainer = document.getElementById('item-card-container');

    data.forEach(item => {
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
        stars = '⭐'.repeat(rarityValue);
        p.innerHTML = stars + '<br>' + item['Slot'];
        cardText.appendChild(p)
        
        if (item['Labels']) {
            p.innerHTML += '<br><i>' + item['Labels'] + '</i>';
        }
        itemCardContainer.appendChild(card);
    });
}

export function getFilteredItems(rarity, slot, label) {
    let url = 'http://127.0.0.1:5000/api/items/?'
    if (rarity) url += `rarity=${rarity.join('&rarity=')}&`;
    if (slot) url += `slot=${slot.join('&slot=')}&`;
    if (label) url += `label=${label.join('&label=')}&`;
    url = url.slice(0, -1);
    
    fetch(url)
    .then(response => response.json())
    .then(data => {
        console.log('Filtered items:', data);
        renderItems(data);
    })
    .catch(error => {
        console.error('Error fetching filtered items:', error);
    });
}

window.onload = function() {
    getFilteredItems();
};