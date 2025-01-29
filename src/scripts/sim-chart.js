import * as d3 from 'd3';

const container = document.getElementById("chart-container");
container.style.maxWidth = '100%';

function simulationChart(data) {
    const width = container.clientWidth;
    const height = 500;
    const marginTop = 30;
    const marginRight = 40;
    const marginBottom = 40;
    const marginLeft = 40;
    
    const minX = d3.min(data.filter(d => d.y > 0), d => d.x);
    const maxX = d3.max(data, d => d.x);
    const maxY = d3.max(data, d => d.y);
    
    // declare axis + scale
    const x = d3.scaleLinear()
        .domain([minX, maxX])
        .range([marginLeft, width - marginRight]);
    
    const y = d3.scaleLinear()
        .domain([0, maxY])
        .range([height - marginBottom, marginTop]);
    
    // create svg container
    const svg = d3.create("svg")
        .attr("width", width)
        .attr("height", height);
    
    // add axis to svg
    svg.append("g")
        .attr("transform", `translate(0,${height - marginBottom})`)
        .call(d3.axisBottom(x))
        .call(g => g.append("text")
            .attr("x", (width - marginLeft - marginRight) / 2 + marginLeft)
            .attr("y", marginBottom)
            .attr("font-size", 15)
            .attr("fill", "currentColor")
            .attr("text-anchor", "middle")
            .text("Pulls"));
    
    svg.append("g")
        .attr("transform", `translate(${marginLeft},0)`)
        .call(d3.axisLeft(y))
        .call(g => g.append("text")
            .attr("x", -marginLeft)
            .attr("y", 15)
            .attr("font-size", 15)
            .attr("fill", "currentColor")
            .attr("text-anchor", "start")
            .text("↑ Frequency (%)"));
    
    // add bars to chart
    svg.append("g")
        .selectAll("rect")
        .data(data)
        .join("rect")
        .attr("x", d => x(d.x - 1))
        .attr("y", d => y(d.y))
        .attr("width", x(1) - x(0) - 1)
        .attr("height", d => height - marginBottom - y(d.y))
        .attr("fill", "#b38aca")
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
            tooltip.innerHTML = `Pulls: ${d.x}<br>Chance: ${d.y.toFixed(2)}%`;
            document.body.appendChild(tooltip);
            tooltip.style.left = `${event.pageX + 10}px`;
        tooltip.style.top = `${event.pageY - 20}px`;
        })
        .on("mouseout", function(event, d) { 
            d3.select(this).attr("fill", "#b38aca");
            const tooltip = document.getElementById("tooltip");
            if (tooltip) tooltip.remove();
        });
    
    return svg.node();
}

function renderChart() {
    d3.csv("/reso-sim/10_5stars.csv", d3.autoType).then((data) => {
        const chartElement = simulationChart(data);
        container.innerHTML= "";
        container.appendChild(chartElement);
    });
}

window.onresize = renderChart;
window.onload = renderChart;