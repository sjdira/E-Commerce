<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="Entity.Client" %>
<!DOCTYPE HTML>
<html>
	<head>
	<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
   <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/icomoon.css">
	<!-- Ion Icon Fonts-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/ionicons.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/bootstrap.min.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/style.css">

	</head>
	<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					
					<div class="row">
						<div class="col-sm-12 text-left menu-1">
							
							<ul>
								<a class="navbar-brand logo" href="#">Navbar</a>
								<li><a href="index">Home</a></li>
								<li class="has-dropdown">
									<a href="shop">Shop</a>
								</li>
								<li><a href="about">About</a></li>
								<li><a href="contact">Contact</a></li>
								<c:set var="sum" value="0"></c:set>
						        <c:forEach var="it" items="${cart}">
						        <c:set var="sum" value="${sum=sum+1}"></c:set>
						        </c:forEach>
								<li class="cart"><a href="cart"><i class="icon-shopping-cart"></i> Cart [${sum}]</a></li>
								<li class="cart"><a href="login"><i class="bi bi-box-arrow-right"></i> Sign In</a></li>
							</ul>
								<input id="recherche" type="text" placeholder="Search...">
 								 <div class="search"></div>
						</div>
					</div>
				</div>
			</div>
			<!--
				
			-->
		</nav>

		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="index.jsp">Home</a></span> / <span>Checkout</span></p>
					</div>
				</div>
			</div>
		</div>


		<div class="colorlib-product">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-sm-10 offset-md-1">
						<div class="process-wrap">
							<div class="process text-center active">
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center active">
								<p><span>02</span></p>
								<h3>Checkout</h3>
							</div>
							<div class="process text-center">
								<p><span>03</span></p>
								<h3>Order Complete</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8">
						
						<form:form action="saveClient" modelAttribute="client" method="post" class="colorlib-form">
							<h2>Billing Details</h2>
		              	<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="fname">Nom</label>
										<form:input type="text" path="NomClient" class="form-control" placeholder="Your firstname"/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="lname">Prenom</label>
										<form:input type="text" path="PrenomClient" class="form-control" placeholder="Your lastname"/>
									</div>
								</div>

								<div class="col-md-12">
									<div class="form-group">
										<label for="companyname">Ville</label>
			                    	<form:input type="text" path="ville" class="form-control" placeholder="Ville"/>
			                  </div>
			                  </div>

			                  <div class="col-md-12">
									<div class="form-group">
										<label for="fname">Email</label>
			                    	<form:input type="email" path="Email" class="form-control" placeholder="Email"/>
			                  </div>
			             
			               </div>
			            
			               <div class="col-md-12">
									<div class="form-group">
										<label for="companyname">telephone</label>
			                    	<form:input type="text" path="telephone" class="form-control" placeholder="telephone"/>
			                  </div>
			               </div>
			            
			            	<div class="col-md-12">
									<div class="form-group">
										<label for="companyname">Adresse</label>
			                    	<form:input type="text" path="Adresse" class="form-control" placeholder="Adresse"/>
			                  </div>
			               </div>
						
							<div class="col-md-12">
									<div class="form-group">
									<label for="companyname">Sexe</label>
			                    	<form:select path="sexe" class="form-control">  
							        <form:option value="Homme" label="Homme"/>  
							        <form:option value="Femme" label="Femme"/>   
							        </form:select>
			                  </div>
			               </div>	
						   <% Client c = (Client)request.getAttribute("client"); %>
			               <% if(c.getIdClient()==null) 
			               {
			            	   %>
						   <div class="col-md-12">
									<div class="form-group">
										<label for="companyname">password</label>
			                    	<form:input type="password" path="password" class="form-control" placeholder="password"/>
			                  </div>
			               </div>
			               <div class="col-md-12">
									<div class="form-group">
										<label for="companyname">confirm password</label>
			                    	<form:input type="password" path="" class="form-control" placeholder="password"/>
			                  </div>
			               </div>
			               
			            	   		<div class="col-md-12 text-center">
								    <input type="submit" class="btn btn-primary" value="Save Information">
								     </div>
			            	   <%
			               }
			               %>
			               </div>
		               </div>
		               </form:form>

		            <div class="col-lg-4">
						<div class="row">
							<div class="col-md-12">
								<div class="cart-detail">
									<h2>Cart Total</h2>
									<ul>
										<li>
										<c:set var="sum" value="0"></c:set>
										<c:set var="livraison" value="30"></c:set>
										<c:forEach var="it" items="${cart}">
										<c:set var="sum" value="${sum + it.getQuantite()*it.article.getPrix()}"></c:set>
										</c:forEach>
											<span>Subtotal</span> <span>${sum} DH</span>
										</li>
										<li><span>livraison</span> <span>${livraison}DH</span></li>
										<li><span>Order Total</span> <span>${livraison + sum}</span></li>
									</ul>
								</div>
						   </div>

						   <div class="w-100"></div>

						   <div class="col-md-12">
								<div class="cart-detail">
									<h2>Payment Method</h2>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio"> Direct Bank Tranfer</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio"> Check Payment</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio"> Paypal</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="checkbox">
											   <label><input type="checkbox" value=""> I have read and accept the terms and conditions</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<% Client c = (Client)request.getAttribute("client"); %>
						<% if(c.getIdClient()!=null)
						{
						%>
						
						<div class="row">
							<div class="col-md-12 text-center">
								<p><a href="order-complete" class="btn btn-primary">Place an order</a></p>
							</div>
						</div>
						<% } %>
					</div>		            
					</div>

				</div>
			</div>
		</div>

		<footer class="footer-distributed">
 
			<div class="footer-left">
	 
			<h3>Elegan<span>cia</span></h3>
	 
			<p class="footer-links">
			<a href="index.jsp">Home</a>
		
			<a href="shop.jsp">Shop</a>
		
			<a href="about.jsp">About</a>
		
			<a href="contact.jsp">Contact</a>
			</p>
	 
			<p class="footer-company-name">Elegancia &copy; 2021</p>
			</div>
	 
			<div class="footer-center">
	 
			<div>
			<i class="fa fa-map-marker"></i>
			<p><span>Boulevard El Qods,ain chok</span> Casablanca, maroc</p>
			</div>
	 
			<div>
			<i class="fa fa-phone"></i>
			<p>+212 555 123456</p>
			</div>
	 
			<div>
			<i class="fa fa-envelope"></i>
			<p><a href="mailto:support@company.com">contact@Elegancia.com</a></p>
			</div>
	 
			</div>
	 
			<div class="footer-right">
	 
			<p class="footer-company-about">
			<span>About the company</span>
			ELEGANCIA is a fashion e-commerce platform. The company mainly focuses on women's wear.
			</p>
	 
			<div class="footer-icons">
	 
			<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-github"></i></a>
	 
			</div>
	 
			</div>
	 
			</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="<%=request.getContextPath()%>/ressources/js/jquery.min.js"></script>
   <!-- popper -->
   <script src="<%=request.getContextPath()%>/ressources/js/popper.min.js"></script>
   <!-- bootstrap 4.1 -->
   <script src="<%=request.getContextPath()%>/ressources/js/bootstrap.min.js"></script>
   <!-- jQuery easing -->
   <script src="<%=request.getContextPath()%>/ressources/js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="<%=request.getContextPath()%>/ressources/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="<%=request.getContextPath()%>/ressources/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="<%=request.getContextPath()%>/ressources/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="<%=request.getContextPath()%>/ressources/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=request.getContextPath()%>/ressources/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="<%=request.getContextPath()%>/ressources/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="<%=request.getContextPath()%>/ressources/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="<%=request.getContextPath()%>/ressources/js/main.js"></script>
	</body>
</html>

