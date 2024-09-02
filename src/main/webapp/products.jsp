<%@page import="com.onlineshop.utility.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
        
        <style>
       /* Body background styling */
body {
    background-image: url('uploads/pexels-mdsnmdsnmdsn-1831234.jpg');
    background-size: cover; /* Cover the whole background with the image */
    background-attachment: fixed; /* Make background fixed on scroll */
}

/* Page header styling */
.page-head {
    margin-bottom: 20px; /* Space below the heading */
    text-align: center;
}

.page-head h3 {
    margin: 0;
    padding: 0;
    font-size: 36px; /* Larger font for heading */
    color: #3B5998; /* A dark blue color */
}

.page-head p {
    margin: 10px 0;
    font-size: 24px;
    color: #E91E63; /* Bright pink for subheading */
}

/* Product grid styling */
.product-men {
    margin-bottom: 30px; /* Space between product items */
    perspective: 1200px; /* Adds 3D perspective */
}

/* Product item styling */
.men-pro-item {
    position: relative;
    width: 100%;
    background-color: #f4f4f4; /* Light grey background for contrast */
    border-radius: 12px; /* Rounded corners */
    overflow: hidden;
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth transition effects */
    transform-style: preserve-3d; /* 3D effect */
}

/* Hover effect for product item */
.men-pro-item:hover {
    transform: translateY(-15px) scale(1.05); /* Moves up and scales up on hover */
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
    z-index: 5; /* Raised z-index for the hovered item */
}

/* Product image container */
.men-thumb-item {
    position: relative;
    width: 100%;
    padding-top: 100%; /* Square aspect ratio */
    overflow: hidden;
}

/* Product images styling */
.pro-image-front,
.pro-image-back {
    position: absolute;
    width: 100%;
    height: 100%;
    object-fit: cover; /* Ensures image covers the container */
    /* Removed the transition property to remove hover effect */
    /* transition: transform 0.6s ease; */
}

/* High popping effect for the front image */
.men-pro-item:hover .pro-image-front {
    /* Removed the transform scale effect */
    /* transform: scale(1.1); */
}

/* "New" label styling */
.product-new-top {
    position: absolute;
    top: 10px;
    left: 10px;
    background-color: #FF4081; /* Bright pink for the "New" label */
    color: #fff;
    padding: 6px 12px;
    font-size: 14px;
    font-weight: bold;
    border-radius: 8px; /* Rounded for modern look */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
}

/* Product info styling */
.item-info-product {
    padding: 20px;
    text-align: center; /* Centered text alignment */
    background-color: #ffffff; /* White background for text area */
}

/* Product price styling */
.info-product-price {
    margin-top: 15px; /* Space above pricing */
    font-size: 20px;
    font-weight: bold;
    color: #333; /* Dark grey for high contrast */
}

/* Discounted price styling */
.info-product-price del {
    color: #FF5722; /* Bright red for the original price */
    font-size: 16px;
    margin-left: 10px; /* Space between current and original prices */
}

/* Button styling for "Add to cart" */
.btn-warning {
    background-color: #FF9800; /* Bright orange button */
    color: #fff; /* White text for contrast */
    border: none;
    padding: 12px 28px;
    border-radius: 25px; /* Rounded button for a modern look */
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease; /* Smooth hover effects */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow for button depth */
}

/* Button hover effect */
.btn-warning:hover {
    background-color: #E65100; /* Darker orange on hover */
    transform: translateY(-3px); /* Slight lift effect */
}

/* Responsive styling */
@media (max-width: 768px) {
    .product-men {
        margin-bottom: 20px; /* Adjust spacing for smaller screens */
    }

    .men-pro-item {
        margin: 0 auto; /* Center the product item */
        width: 90%; /* Adjust width for smaller screens */
    }
}
       
            
    </style>
        
    </head>
    <body>
    <body>
        <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed"
                                        data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1"
                                        aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span> <span
                                        class="icon-bar"></span> <span class="icon-bar"></span> <span
                                        class="icon-bar"></span>
                                </button>
                            </div>
                            <jsp:include page="header.jsp"></jsp:include>
                            </div>
                        </nav>
                    </div>

                    <div class="top_nav_right">
                        <div class="cart box_1">
                            <a href="checkout.jsp"> 
                            <%
                                ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                                resultCount.next();
                                int count = resultCount.getInt(1);
                            %>
                            <h3>
                                <div class="total">
                                    <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                    (
                                    <%=count%>
                                    items )
                                </div>

                            </h3>
                        </a>
                        <p>
                            <a href="javascript:;" class="simpleCart_empty">My Cart</a>
                        </p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="page-head">
            <div class="container">
                <h3><b>PERFUMES</b></h3>
                <br>
                <p style="text-align:center;"><span style="color:#4E31AA; font-size:24px;">"A Fragrance That Defines You"</span></p>
                <p style="text-align:center;"><span style="color:#4E31AA; font-size:24px;">"Explore and Find your signature scent here"</span></p>
            </div>
        </div>
        <div class="electronics">
            <div class="container">
                <div class="clearfix"></div>
                <div class="ele-bottom-grid">
                    <h3> <span style="color:#3572EF; font-family:'Pacifico';">
                        Explore Our Perfume Collection</span>
                    </h3>
                    <%
                        ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                        while (retriveProduct.next()) {
                    %>
                    <form action="AddToCart" method="post">
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <input type="hidden" name="productId" value="<%=retriveProduct.getInt("id")%>">
                                    <img src="uploads/<%=retriveProduct.getString("image_name")%>" alt="" class="pro-image-front">
                                    <img src="uploads/<%=retriveProduct.getString("image_name")%>" alt="" class="pro-image-back"> <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <%=retriveProduct.getString("name")%>
                                    </h4>
                                    <h5>
                                        Category: <%=retriveProduct.getString("product_category")%>
                                    </h5>
                                    <div class="info-product-price">
                                        <input type="hidden" name="price" value="<%=retriveProduct.getString("price")%>"> 
                                        <input type="hidden" name="mrp_price" value="<%=retriveProduct.getString("mrp_price")%>"> <span class="item_price"><%=retriveProduct.getString("price")%> Rs.</span>
                                        <del><%=retriveProduct.getString("mrp_price")%> Rs.</del>
                                    </div>
                                    <input type="submit" value="Add to cart" class="btn btn-warning" onclick="return confirm('Are you sure Do you want to add this item in cart?');">
                                </div>
                            </div>
                        </div>
                    </form>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>