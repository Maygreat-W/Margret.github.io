let slideIndex = 0;

function showSlides() {
    let i;
    const slides = document.getElementsByClassName("mySlides");
    const dots = document.getElementsByClassName("dot");

    // Hide all slides
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    // Increment slideIndex and reset if necessary
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1;
    }

    // Set the current slide to be displayed
    slides[slideIndex - 1].style.display = "block";

    // Update the active dot
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    dots[slideIndex - 1].className += " active";

    // Call showSlides function again after 2 seconds (adjust as needed)
    setTimeout(showSlides, 2000);
}

// Run the slideshow when the page loads
window.onload = function() {
    showSlides();
};

const hairstylesLink = document.getElementById('hairstyles-link');
const reservationsLink = document.getElementById('reservations-link');
const stylistsLink = document.getElementById('stylists-link');
const pricingLink = document.getElementById('pricing-link');

// Add attributes for accessibility
hairstylesLink.setAttribute('role', 'button');
hairstylesLink.setAttribute('aria-label', 'Visit Hairstyles Gallery');

reservationsLink.setAttribute('role', 'button');
reservationsLink.setAttribute('aria-label', 'Make Reservations');

stylistsLink.setAttribute('role', 'button');
stylistsLink.setAttribute('aria-label', 'Meet Our Stylists');

pricingLink.setAttribute('role', 'button');
pricingLink.setAttribute('aria-label', 'View Pricing');

const hairstylesButton = document.getElementById('hairstyles-button');
const reservationsButton = document.getElementById('reservations-button');
const stylistsButton = document.getElementById('stylists-button');
const pricingButton = document.getElementById('pricing-button');

// Add click event listeners
hairstylesButton.addEventListener('click', function() {
    // Perform action for Hairstyles Gallery
    console.log('Clicked Hairstyles Gallery button');
    // Add your logic here, such as navigating to a specific page or showing content.
});

reservationsButton.addEventListener('click', function() {
    // Perform action for Reservations
    console.log('Clicked Reservations button');
    // Add your logic here.
});

stylistsButton.addEventListener('click', function() {
    // Perform action for Our Stylists
    console.log('Clicked Our Stylists button');
    // Add your logic here.
});

pricingButton.addEventListener('click', function() {
    // Perform action for Pricing
    console.log('Clicked Pricing button');
    // Add your logic here.
});