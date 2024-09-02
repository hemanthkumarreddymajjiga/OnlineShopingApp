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
        
        <style>
        body {
            background-image: url('uploads/front-view-perfume-bottle-flowers-dark-blue-background-with-free-place_140725-145516.jpg');
            background-size:100% 70%;
        }
        
         .sign-up input, .sign-up select {
            width: 100%; /* Full width to fit the container */
            max-width: 500px; /* Maximum width for larger screens */
            box-sizing: border-box; /* Include padding and border in the element's total width and height */
        }

        .sign-up {
            margin-bottom: 15px; /* Space between fields */
        }

        .modal-content {
            padding: 20px;
            max-width: 600px; /* Container width for modal */
            margin: 0 auto; /* Center the modal */
        }
        
        .alert {
            width: 100%; /* Full width for alerts */
            max-width: 500px; /* Maximum width for alerts */
        }
        
        .modal-dialog {
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
        
    </head>
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
                            <a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
                        </p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <br>
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body modal-spa">
                    <div class="login-grids">
                        <div class="login">
                            <div class="login-right">
                                <h3>Sign in with your account</h3>
                                <%
                                    String credential = (String) session.getAttribute("credential");
                                    if (credential != null) {
                                        session.removeAttribute("credential");
                                %>
                                <div class="alert alert-danger" id="danger" style="width: 340px;">You have enter wrong credentials.</div>
                                <%
                                    }
                                %>
                                <form action="CustomerLogin" method="post">
                                    <div class="sign-in">
                                        <h4>Email :</h4>
                                        <input type="text" value="" style="width: 340px;" required=""
                                               name="email">
                                    </div>
                                    <div class="sign-in">
                                        <h4>Password :</h4>
                                        <input type="password" value="" style="width: 340px;"
                                               required="" name="password">
                                    </div>
                                    <div class="sign-in">
                                        <input type="submit" value="SIGNIN" style="width: 340px;">
                                    </div>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <p>
                            <a href="customer-register.jsp">New to Smart Shop? Create an account</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <br/> <br/><br/><br/><br/><br/><br/><br/>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>