<%@page import="com.onlineshop.utility.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<!-- Importing all ui libs -->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/pignose.layerslider.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/simpleCart.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script src="js/jquery.easing.min.js"></script>
<!--  <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
    
    <style>
        body {
            background-image: url('uploads/img99.png');
            background-size: ;
        }
 -->
    <style>
       
        /* General body styles */
body {
    /* Set a gradient background for a modern look */
    background: linear-gradient(to bottom, #f0f4f8, #d9e2ec);
    
    /* Use a web-safe font stack for better compatibility */
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  
    
    /* Increase font size and line height for readability */
    font-size: 16px;
    line-height: 1.6;
    margin: 0;
    padding: 0;
}

/* Header styles */
header {
    background-color: #2b6cb0; /* Blue background */
    color: white;
    padding: 20px 0;
    text-align: center;
    font-size: 24px;
}

/* Navigation styles */
nav {
    display: flex;
    justify-content: center;
    background-color: #2c5282; /* Darker blue */
}

nav a {
    color: white;
    text-decoration: none;
    padding: 15px 20px;
    display: block;
    font-weight: bold;
    transition: background-color 0.3s;
}

nav a:hover {
    background-color: #2a4365; /* Even darker blue for hover */
}

/* Main content styles */
main {
    padding: 20px;
    max-width: 1200px;
    margin: auto;
}

/* Card styles for content sections */
.card {
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin-bottom: 20px;
    transition: transform 0.2s;
}

.card:hover {
    transform: translateY(-5px);
}

/* Footer styles */
footer {
    background-color: #2b6cb0; /* Matching header color */
    color: white;
    text-align: center;
    padding: 10px 0;
    position: fixed;
    bottom: 0;
    width: 100%;
    font-size: 14px;
}

/* Button styles */
.button {
    background-color: #38a169; /* Green button */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.button:hover {
    background-color: #2f855a; /* Darker green for hover */
}

/* Responsive styles */
@media (max-width: 768px) {
    nav {
        flex-direction: column;
    }

    .card {
        padding: 15px;
    }

    header, footer {
        font-size: 10px;
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
					<a href="checkout.jsp"> <%
 //Getting all cart details of the customer
 ResultSet resultCount = DatabaseConnection
 		.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
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
	<div class="banner-grid">
		<div id="visual">
			<div class="slide-visual">
				<ul class="slide-group">
					<li><img class="img-responsive"
						src="uploads/2 saman-taheri-79FmeCtL9NE-unsplash.jpg"
						alt="Dummy Image" /></li>
						
					<li><img class="img-responsive"
						src="uploads/edwin-chen-_ju6ZXbNKvY-unsplash.jpg"
						alt="Dummy Image" /></li>
						
					<li><img class="img-responsive" src="uploads/6jessica-weiller-So4eFi-d1nc-unsplash.jpg"
						alt="Dummy Image" /></li>
						
					<li><img class="img-responsive" src="uploads/6siora-photography-8m4V_wPWwbY-unsplash.jpg"
						alt="Dummy Image" /></li>	
					<li><img class="img-responsive"
						src="uploads/pexels-valeriya-965989.jpg"
						alt="Dummy Image" /></li>
						
						
					<li><img class="img-responsive"
						src="uploads/1 perfumejeroen-den-otter-2b0JeJTEclQ-unsplash.jpg"
						alt="Dummy Image" /></li>
						
					
					
					
						
					<li><img class="img-responsive" src="uploads/5deanna-alys-xQwRvghauaU-unsplash.jpg"
						alt="Dummy Image" /></li>
					
					
					
					<li><img class="img-responsive" src="uploads/3 maxim-lozyanko-GxSiLG3UuUw-unsplash.jpg"
						alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="uploads/4 lal-mahammad-8Uh0IGs_BSg-unsplash.jpg"
						alt="Dummy Image" /></li>
						
					
				</ul>

				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<script type="text/javascript" src="js/pignose.layerslider.js"></script>
		<script type="text/javascript">
			$(window).load(function() {
				$('#visual').pignoseLayerSlider({
					play : '.btn-play',
					pause : '.btn-pause',
					next : '.btn-next',
					prev : '.btn-prev'
				});
			});
		</script>
	</div>


	<div class="product-easy">
		<div class="container">
			<div class="container">
				<h2>
					<span><center><b>OUR PERFUMES</b></center></span>
				</h2>
			</div>
			<%
			ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
			while (retriveProduct.next()) {
			%>
			<form action="AddToCart" method="post">
				<div class="single-pro">
					<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<input type="hidden" name="productId"
									value="<%=retriveProduct.getInt("id")%>"> <img
									src="uploads/<%=retriveProduct.getString("image_name")%>"
									alt="" class="pro-image-front"> <img
									src="uploads/<%=retriveProduct.getString("image_name")%>"
									alt="" class="pro-image-back"> <span
									class="product-new-top">New</span>
							</div>
							<div class="item-info-product ">
								<h4>
									<a href=""><%=retriveProduct.getString("name")%></a>
								</h4>
								<h5>
									Category:
									<%=retriveProduct.getString("product_category")%>
								</h5>
								<div class="info-product-price">
									<input type="hidden" name="price"
										value="<%=retriveProduct.getString("price")%>"> <input
										type="hidden" name="mrp_price"
										value="<%=retriveProduct.getString("mrp_price")%>"> <span
										class="item_price"><%=retriveProduct.getString("price")%>
										Rs.</span>
									<del><%=retriveProduct.getString("mrp_price")%>
										Rs.
									</del>
								</div>
								<input type="submit" value="Add to cart" class="btn btn-warning"
									onclick="return confirm('Are you sure Do you want to add this item in cart?');">
							</div>
						</div>
					</div>
				</div>
			</form>
			<%
			}
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>