import * as d3 from 'd3';

const container = document.getElementById("chart-container");
let chartData;
let data;
let rarity = 5;
let items = 10;
let cumulative = true;
let fullSim = true;
let outfitItems = [];
let desiredItems = [];
let oceansBlessing;
let update;
let cumulativeData = [];

container.style.maxWidth = '100%';

function simulationChart(data) {
    const width = container.clientWidth;
    const height = 500;
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
        .call(d3.axisBottom(x));
    
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
        .text("↑ Frequency (%)");
    
    // add bars to chart
    svg.append("g")
        .selectAll("rect")
        .data(dataToRender)
        .join("rect")
        .attr("x", d => x(d.x))
        .attr("y", d => y(d.y))
        .attr("width", x(1) - x(0) - 1)
        .attr("height", d => height - marginBottom - y(d.y))
        .attr("fill", "#b38aca")
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
            d3.select(this).attr("fill", "#b38aca");
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
        xAxis.transition().duration(1000).call(d3.axisBottom(x));
        yAxis.transition().duration(1000).call(d3.axisLeft(y));

        // Transition bars
        svg.selectAll("rect")
            .data(dataToRender)
            .join(
                enter => enter.append("rect")
                    .attr("x", d => x(d.x - 1))
                    .attr("y", d => y(d.y))
                    .attr("width", x(1) - x(0) - 1)
                    .attr("height", d => height - marginBottom - y(d.y))
                    .attr("fill", "#b38aca"),
                update => update.transition().duration(1000)
                    .attr("x", d => x(d.x - 1))
                    .attr("y", d => y(d.y))
                    .attr("width", x(1) - x(0) - 1)
                    .attr("height", d => height - marginBottom - y(d.y)),
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
                d3.select(this).attr("fill", "#b38aca");
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

async function fetchSimResults() {
    let url;
    let payload;
    if (fullSim) {
        url = `${import.meta.env.PUBLIC_BASE_URL}gacha-sim/full-outfit-sim`
        payload = {
            "rarity": rarity,
            "items": items,
        }
    } else {
        url = `${import.meta.env.PUBLIC_BASE_URL}gacha-sim/desired-items-sim`
        payload = {
            "rarity": rarity,
            "outfit_items": outfitItems,
            "desired_items": desiredItems,
            "oceans_blessing": oceansBlessing
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
        return data.results;
    } catch (error) {
        console.error("Error fetching simulation results:", error);
    } finally {
        document.getElementById("loading-screen").style.display = "none";
    }
}

export async function setSimSettings(simType, r, i, outfit, desired, blessing, c) {
    fullSim = simType;
    rarity = r;
    items = i;
    outfitItems = outfit;
    desiredItems = desired;
    oceansBlessing = blessing;
    cumulative = c;
    data = await fetchSimResults();
    
    if (!data) {
        console.error("Failed to fetch simulation data.");
        return;
    }
    chartData = Object.entries(data).map(([x, y]) => ({ x: +x, y: +y }));
    cumulativeData = [];
    update(chartData);
}

window.addEventListener('load', function() {
    renderChart();
});

window.addEventListener('resize', function() {
    renderChart();
});