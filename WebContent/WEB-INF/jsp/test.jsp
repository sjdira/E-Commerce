<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
	<head>
	<title></title>
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
		
	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					
					<div class="row">
						<div class="col-sm-12 text-left menu-1">
							
							<ul>
								<a class="navbar-brand logo" href="#">Navbar</a>
								<li class="active"><a href="index">Home</a></li>
								<li class="has-dropdown">
									<a href="shop">Shop</a>
								</li>
								<li><a href="about">About</a></li>
								<li><a href="contact">Contact</a></li>
								<li class="cart"><a href="cart"><i class="icon-shopping-cart"></i> Cart [0]</a></li>
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
		
		<div class="colorlib-product">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-md-10 offset-md-1">
						<div class="process-wrap">
							<div class="process text-center active">
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center">
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
				<div class="row row-pb-lg">
					<div class="col-md-12">
						<div class="product-name d-flex">
							<div class="one-forth text-left px-4">
								<span>Product Details</span>
							</div>
							<div class="one-eight text-center">
								<span>Price</span>
							</div>
							<div class="one-eight text-center">
								<span>Quantity</span>
							</div>
							<div class="one-eight text-center">
								<span>Total</span>
							</div>
							<div class="one-eight text-center px-4">
								<span>Remove</span>
							</div>
						</div>
						
						<c:forEach var="it" items="${cart}">
						<div class="product-cart d-flex">
							<div class="one-forth">
								<div class="display-tc">
									<h3>${it.article.getDesignation()}</h3>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<span class="price" id="prix">${it.article.getPrix()}</span><span>DH</span>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<input type="text" id="quantity" name="quantity" class="form-control input-number text-center" value="${it.getQuantite()}" min="1" max="100">
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<span class="price">${it.getQuantite()*it.article.getPrix()}</span>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<a href="deleteFromCart?idArticle=${it.article.getIdArticle()}" class="closed"></a>
								</div>
							</div>
						</div>
						</c:forEach>
						 
					</div>
				</div>
				<div class="row row-pb-lg">
					<div class="col-md-12">
						<div class="total-wrap">
							<div class="row">
								<div class="col-sm-8">
									<!--<form action="#">
										<div class="row form-group">
											<div class="col-sm-9">
												<input type="text" name="quantity" class="form-control input-number" placeholder="Your Coupon Number...">
											</div>
											<div class="col-sm-3">
												<input type="submit" value="Apply Coupon" class="btn btn-primary">
											</div>
										</div>
									</form>
								-->
								</div>
								<div class="col-sm-4 text-center">
									<div class="total">
										<div class="sub">
											<p><span>Subtotal:</span> <span>DH</span></p>
											<!--  <p><span>Delivery:</span> <span>$0.00</span></p>-->
											<!--<p><span>Discount:</span> <span>$45.00</span></p>-->
										</div>
										<!-- <div class="grand-total">
											<p><span><strong>Total:</strong></span> <span>$450.00</span></p>
										</div> -->
									</div>
									<br>
									<div class="row">
										<div class="col-md-12 text-center">
											<p><a href="checkout" class="btn btn-primary">Buy Now</a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		
		<footer class="footer-distributed">
 
			<div class="footer-left">
	 
			<h3>Elegan<span>cia</span></h3>
	 
			<p class="footer-links">
			<a href="index">Home</a>
		
			<a href="shop">Shop</a>
		
			<a href="about">About</a>
		
			<a href="contact">Contact</a>
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
	</body>
</html>

