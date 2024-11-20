function renderTable(data) {
    const table = document.createElement('table');
    table.classList.add('data-table');

    const headerRow = document.createElement('tr');
    const headers = Object.keys(data[0]).filter(key => key !== 'source'); 
    headers.forEach(header => {
        const th = document.createElement('th');
        th.textContent = header.charAt(0).toUpperCase() + header.slice(1);
        headerRow.appendChild(th);
    });
    table.appendChild(headerRow);

    data.forEach(item => {
        const row = document.createElement('tr');
        headers.forEach(header => {
            const td = document.createElement('td');
            td.textContent = item[header] || '';
            row.appendChild(td);
        });
        table.appendChild(row);
    });

    const tableContainer = document.getElementById('table-container');
    tableContainer.innerHTML = '';
    tableContainer.appendChild(table);
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
        renderTable(data);
    })
    .catch(error => {
        console.error('Error fetching filtered items:', error);
    });
}

window.onload = function() {
    getFilteredItems();
};