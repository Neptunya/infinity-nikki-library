import * as d3 from 'd3';

const container = document.getElementById("chart-container");
let chartData;
let data;
let rarity = 5;
let items = 10;
let budget = 0;
let cumulative = true;
let simType = 'full';
let outfitItems = [];
let desiredItems = [];
let oceansBlessing;
let avail4 = [];
let avail5 = [];
let desired4 = [];
let desired5 = [];
let update;
let cumulativeData = [];
let barWidth = 1;

container.style.maxWidth = '100%';

function simulationChart(data) {
    const width = container.clientWidth;
    const height = Math.min(500, width * 1.75);
    const marginTop = 30;
    const marginRight = 40;
    const marginBottom = 40;
    const marginLeft = 40;
    
    if (cumulative && cumulativeData.length === 0) {
        initializeCumulativeData(data);
    }
    
    const dataToRender = cumulative ? cumulativeData : data;
    
    const minX = d3.min(dataToRender.filter(d => d.y > 0), d => d.x);
    const maxX = d3.max(dataToRender, d => d.x);
    const maxY = d3.max(dataToRender, d => d.y);
    
    // declare axis + scale
    const x = d3.scaleLinear()
        .domain([minX - 1, maxX])
        .range([marginLeft, width - marginRight]);
    
    const y = d3.scaleLinear()
        .domain([0, maxY])
        .range([height - marginBottom, marginTop]);
    
    // create svg container
    const svg = d3.create("svg")
        .attr("width", width)
        .attr("height", height);
    
    // add axis to svg
    const xAxis = svg.append("g")
        .attr("transform", `translate(0,${height - marginBottom})`)
    
    if (width < 300) {
        xAxis.call(d3.axisBottom(x).tickFormat(() => ""));
    } else {
        xAxis.call(d3.axisBottom(x));
    }
    
    const yAxis = svg.append("g")
        .attr("transform", `translate(${marginLeft},0)`)
        .call(d3.axisLeft(y));
    
    // Add axis labels
    xAxis.append("text")
        .attr("x", (width - marginLeft - marginRight) / 2 + marginLeft)
        .attr("y", marginBottom)
        .attr("font-size", 15)
        .attr("fill", "currentColor")
        .attr("text-anchor", "middle")
        .text("Pulls");

    yAxis.append("text")
        .attr("x", -marginLeft)
        .attr("y", 15)
        .attr("font-size", 15)
        .attr("fill", "currentColor")
        .attr("text-anchor", "start")
        .text("Frequency (%)");
    
    // add bars to chart
    svg.append("g")
        .selectAll("rect")
        .data(dataToRender)
        .join("rect")
        .attr("x", d => x(d.x))
        .attr("y", d => y(d.y))
        .attr("width", window.innerWidth < 600 ? x(barWidth) - x(0) : x(barWidth) - x(0) - 1)
        .attr("height", d => height - marginBottom - y(d.y))
        .attr("fill", d => d.x <= budget ? "#dea6b2" : "#b38aca")
        .each(function(d, i) {
            d.cumulativeChance = dataToRender.slice(0, i + 1).reduce((sum, item) => sum + item.y, 0);
        })
        .on("mouseover", function(event, d) { 
            d3.select(this).attr("fill", "#a3c7f2");
            const tooltip = document.createElement("div");
            tooltip.id = "tooltip";
            tooltip.style.position = "absolute";
            tooltip.style.backgroundColor = "#494554";
            tooltip.style.padding = "10px";
            tooltip.style.borderRadius = "5px";
            tooltip.style.fontSize = "12px";
            tooltip.style.pointerEvents = "none";
            
            if (cumulative) {
                tooltip.innerHTML = 
                    `Pulls: ${d.x}<br>
                     Chance: ${d.y.toFixed(2)}%`;
            } else {
                tooltip.innerHTML = 
                    `Pulls: ${d.x}<br>
                     Chance: ${d.y.toFixed(2)}%<br>
                     Cumulative Chance: ${d.cumulativeChance.toFixed(2)}%`;
            }
            
            document.body.appendChild(tooltip);
            tooltip.style.left = `${event.pageX + 10}px`;
            tooltip.style.top = `${event.pageY - 20}px`;
        })
        .on("mouseout", function(event, d) { 
            d3.select(this).attr("fill", d => d.x <= budget ? "#dea6b2" : "#b38aca");
            const tooltip = document.getElementById("tooltip");
            if (tooltip) tooltip.remove();
        });
    
    function updateChart(newData) {
        if (cumulative && cumulativeData.length === 0) {
            initializeCumulativeData(newData);
        }
        
        const dataToRender = cumulative ? cumulativeData : newData;
        
        const newMinX = d3.min(dataToRender.filter(d => d.y > 0), d => d.x);
        const newMaxX = d3.max(dataToRender, d => d.x);
        const newMaxY = d3.max(dataToRender, d => d.y);
        
        x.domain([newMinX -  1, newMaxX]);
        y.domain([0, newMaxY]);

        // Transition axes
        xAxis.transition().duration(1000)
        if (width < 300) {
            xAxis.call(d3.axisBottom(x).tickFormat(() => ""));
        } else {
            xAxis.call(d3.axisBottom(x));
        }
        yAxis.transition().duration(1000).call(d3.axisLeft(y));

        // Transition bars
        svg.selectAll("rect")
            .data(dataToRender)
            .join(
                enter => enter.append("rect")
                    .attr("x", d => x(d.x - 1))
                    .attr("y", d => y(d.y))
                    .attr("width", window.innerWidth < 600 ? x(barWidth) - x(0) : x(barWidth) - x(0) - 1)
                    .attr("height", d => height - marginBottom - y(d.y))
                    .attr("fill", d => d.x <= budget ? "#dea6b2" : "#b38aca"),
                update => update.transition().duration(1000)
                    .attr("x", d => x(d.x - 1))
                    .attr("y", d => y(d.y))
                    .attr("width", window.innerWidth < 600 ? x(barWidth) - x(0) : x(barWidth) - x(0) - 1)
                    .attr("height", d => height - marginBottom - y(d.y))
                    .attr("fill", d => d.x <= budget ? "#dea6b2" : "#b38aca"),
                exit => exit.transition().duration(1000)
                    .attr("height", 0)
                    .attr("y", height - marginBottom)
                    .remove()
            );
        
        svg.selectAll("rect")
            .each(function(d, i) {
                d.cumulativeChance = dataToRender.slice(0, i + 1).reduce((sum, item) => sum + item.y, 0);
            })
            .on("mouseover", function(event, d) { 
                d3.select(this).attr("fill", "#a3c7f2");
                const tooltip = document.createElement("div");
                tooltip.id = "tooltip";
                tooltip.style.position = "absolute";
                tooltip.style.backgroundColor = "#494554";
                tooltip.style.padding = "10px";
                tooltip.style.borderRadius = "5px";
                tooltip.style.fontSize = "12px";
                tooltip.style.pointerEvents = "none";
                
                if (cumulative) {
                    tooltip.innerHTML = 
                        `Pulls: ${d.x}<br>
                        Cumulative Chance: ${d.y.toFixed(2)}%`;
                } else {
                    tooltip.innerHTML = 
                        `Pulls: ${d.x}<br>
                        Chance: ${d.y.toFixed(2)}%<br>
                        Cumulative Chance: ${d.cumulativeChance.toFixed(2)}%`;
                }
                
                document.body.appendChild(tooltip);
                tooltip.style.left = `${event.pageX + 10}px`;
                tooltip.style.top = `${event.pageY - 20}px`;
            })
            .on("mouseout", function(event, d) { 
                d3.select(this).attr("fill", d => (d.x <= budget) ? "#dea6b2" : "#b38aca");
                const tooltip = document.getElementById("tooltip");
                if (tooltip) tooltip.remove();
            });
    }
    
    return { svg, updateChart };
}

function initializeCumulativeData(data) {
    cumulativeData = [];
    let cumulativeSum = 0;
    data.forEach(d => {
        cumulativeSum += d.y;
        cumulativeData.push({ ...d, y: cumulativeSum, cumulativeChance: cumulativeSum });
    });
}

async function renderChart() {
    if (!chartData) {
        data = await fetchSimResults();
        if (!data) {
            console.error("Failed to fetch simulation data.");
            return;
        }
        chartData = Object.entries(data).map(([x, y]) => ({ x: +x, y: +y }));
    }

    const { svg, updateChart } = simulationChart(chartData);
    container.innerHTML = "";
    const chartElement = svg.node();
    update = updateChart;
    container.appendChild(chartElement);
}

function renderBudgetMsg(successRate, overflowRate = null) {
    const message = document.getElementById('budget-msg');
    let star;
    let reso;
    
    switch(rarity){
        case 5:
            star = '5-star';
            reso = 'duo banner'
            break;
        case 4.5:
            star = '4-star';
            reso = 'duo banner'
            break;
        case 4:
            star = '4-star';
            reso = 'solo banner'
            break;
    }
    
    if (budget > 0) {
        if (simType == 'full') {
            message.innerHTML = `
                <span id="success-rate">${(successRate).toFixed(2)}%</span>
                <span>is the probability of obtaining a full ${star} outfit of 
                <span class="settings-num">${items}</span> 
                items from a ${reso} in 
                <span class="settings-num">${budget}</span> pulls</span>
            `;
        } else if (simType == 'desired') {
            message.innerHTML = `
                <span id="success-rate">${(successRate).toFixed(2)}%</span>
                <span>is the probability of obtaining 
                <span class="settings-num">${desiredItems.length}</span> 
                specific ${star} items from a ${reso} in 
                <span class="settings-num">${budget}</span> pulls</span>
            `;
        } else if (simType == 'som') {
            message.innerHTML = `
                <span id="success-rate">${(successRate).toFixed(2)}%</span>
                <span>is the probability of obtaining 
                your desired items from the <s>Scam</s> Surprise-o-Matic in 
                <span class="settings-num">${budget}</span> pulls.
                There is a <span id="success-rate">${(overflowRate).toFixed(2)}%</span> chance that getting your desired items will 
                take over <span class="settings-num">2000</span> pulls</span>
            `;
        }
        
    } else if (simType == 'som') {
        message.innerHTML = `
            There is a <span id="success-rate">${(overflowRate).toFixed(2)}%</span> chance that getting your desired items will 
            take over <span class="settings-num">2000</span> pulls</span>
        `;
    } else {
        message.innerHTML = '';
    }
}

async function fetchSimResults() {
    let url;
    let payload;
    if (simType == 'full') {
        url = `${import.meta.env.PUBLIC_BASE_URL}api/gacha-sim/full-outfit-sim`
        payload = {
            "rarity": rarity,
            "budget": budget,
            "items": items,
        }
    } else if (simType == 'desired') {
        url = `${import.meta.env.PUBLIC_BASE_URL}api/gacha-sim/desired-items-sim`
        payload = {
            "rarity": rarity,
            "budget": budget,
            "outfit_items": outfitItems,
            "desired_items": desiredItems,
            "oceans_blessing": oceansBlessing
        }
    } else if (simType == 'som') {
        url = `${import.meta.env.PUBLIC_BASE_URL}api/gacha-sim/surprise-o-matic-sim`
        payload = {
            "budget": budget,
            "avail_4": avail4,
            "avail_5": avail5,
            "desired_4": desired4,
            "desired_5": desired5
        }
    }
    
    document.getElementById("loading-screen").style.display = "flex";
    
    try {
        const response = await fetch(url, {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(payload)
        });

        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }

        const data = await response.json();
        renderBudgetMsg(data.success, data.overflow ?? null);
        return data.results;
    } catch (error) {
        console.error("Error fetching simulation results:", error);
    } finally {
        document.getElementById("loading-screen").style.display = "none";
    }
}

export async function setSimSettings(s, r, b, i, outfit, desired, blessing, a4, a5, d4, d5, c) {
    simType = s;
    rarity = r;
    budget = b;
    items = i;
    outfitItems = outfit;
    desiredItems = desired;
    oceansBlessing = blessing;
    avail4 = a4;
    avail5 = a5;
    desired4 = d4;
    desired5 = d5;
    cumulative = c;
    barWidth = s == 'som' ? 10 : 1;
    
    data = await fetchSimResults();
    if (!data) {
        console.error("Failed to fetch simulation data.");
        return;
    }
    chartData = Object.entries(data).map(([x, y]) => ({ x: +x, y: +y }));
    cumulativeData = [];
    update(chartData);
    
    if (budget && budget > 0) {
    }
}

window.addEventListener('load', function() {
    renderChart();
});

window.addEventListener('resize', function() {
    renderChart();
});