<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- Defining Footer -->

<style>.footer-section {
    /* Gradient background for a modern look */
    background: linear-gradient(to right, #000, #333); /* Black to dark gray gradient */
    color: #fff; /* White text color */
    padding: 60px 20px; /* Increased padding for better spacing */
    font-family: 'Arial', sans-serif;
    text-align: center;
}

/* Header styling within the footer */
.footer-section h4 {
    color: #f39c12; /* Orange color for headers */
    margin-bottom: 20px;
    font-size: 20px;
    font-weight: bold;
    text-transform: uppercase; /* Uppercase for a modern look */
}

/* List styling */
.footer-section ul {
    list-style: none; /* Remove default list styles */
    padding: 0;
    margin: 0;
}

.footer-section ul li {
    margin-bottom: 12px; /* Increased spacing between list items */
    font-size: 16px;
    display: flex; /* Align icons and text horizontally */
    align-items: center; /* Center align text with icons */
    justify-content: center; /* Center items in the footer */
}

/* Icon styling */
.footer-section ul li i {
    margin-right: 10px;
    color: #f39c12; /* Orange icons */
    font-size: 18px; /* Larger icon size for visibility */
}

/* Link styling */
.footer-section a {
    color: #f39c12; /* Orange links */
    text-decoration: none;
    transition: color 0.3s ease; /* Smooth transition effect for hover */
}

.footer-section a:hover {
    color: #fff; /* White text on hover */
    text-decoration: underline; /* Underline effect on hover */
}

/* Container styling */
.footer-section .container {
    max-width: 1200px; /* Maximum width for content */
    margin: 0 auto;
    text-align: center;
    padding: 20px;
}

/* Row styling for layout */
.footer-section .row {
    display: flex;
    justify-content: space-between; /* Space between items */
    align-items: flex-start; /* Align items to the top */
    flex-wrap: wrap; /* Allow items to wrap on smaller screens */
    gap: 20px; /* Gap between columns */
}

/* Column styling */
.footer-section .col {
    flex: 1;
    min-width: 250px;
    margin-bottom: 20px;
    text-align: left; /* Align text to the left for a cleaner look */
    padding: 0 10px; /* Padding within columns */
}

/* Media query for responsiveness */
@media (max-width: 768px) {
    .footer-section .row {
        flex-direction: column; /* Stack columns on smaller screens */
        align-items: center; /* Center align columns */
    }

    .footer-section .col {
        text-align: center; /* Center text on smaller screens */
        margin-bottom: 20px;
    }
}

</style>

<section class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col">
                <h4>Contact Us:</h4>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address: Bengaluru, <span>India.</span></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="mailto:info@data-flair.training">hemanth@gmail.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone: +91-6303076922</li>
                </ul>
            </div>
            <div class="col">
                <h4>
                    &copy; <span id="year"></span> Revature - Online Shopping System | 
                    <a href="#" target="_blank" type ="none">Designed by: Hemanth</a>
                </h4>
            </div>
        </div>
    </div>
</section>

<script>
    document.getElementById("year").innerHTML = new Date().getFullYear();
</script>
