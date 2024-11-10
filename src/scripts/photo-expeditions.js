document.addEventListener("DOMContentLoaded", function () {
    const input = document.getElementById("photo-expedition-number");
    const cards = document.querySelectorAll(".card");

    // Function to update card visibility based on the input value
    function updateCardDisplay() {
        const number = parseInt(input.value);

        // Hide all cards initially
        cards.forEach(card => card.style.display = "none");

        // Show the card that matches the input number, if valid
        if (number >= 0 && number <= 35) {
            const matchingCard = document.getElementById(`loc-${number}`);
            if (matchingCard) {
                matchingCard.style.display = "flex";
            }
        }
    }

    // Initial check at page load
    updateCardDisplay();

    // Listen for changes in the input
    input.addEventListener("input", updateCardDisplay);
});