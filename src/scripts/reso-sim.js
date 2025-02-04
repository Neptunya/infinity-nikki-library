const collapsible = document.getElementsByClassName("collapsible");
for (var i = 0; i < collapsible.length; i++) {
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

export function adjustCollapsibleMaxHeight() {
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

window.addEventListener('load', function() {
    adjustCollapsibleMaxHeight();
});

window.addEventListener('resize', function() {
    adjustCollapsibleMaxHeight();
});