<!DOCTYPE HTML>
<html>
	<head>
	<title>about us</title>
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
								<li class="active"><a href="index">Home</a></li>
								<li class="has-dropdown">
									<a href="shop">Shop</a>
								</li>
								<li class="active"><a href="about">About</a></li>
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
			
		</nav>
		

	<div class="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-5 col-md-12 center video-container">
							<iframe width="540" height="500" src="https://www.youtube.com/embed/yelRGO5V4QY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
					<div class="col-xl-2 col-lg-2  "></div>
					<div class="col-xl-5 col-lg-5 col-md-12 textRight">
						<div class="about-wrap">
							<h2>ELEGANCIA the leading E-Commerce Store around the Globe</h2>
							<p>ELEGANCIA is a fashion e-commerce platform. The company mainly focuses on women's wear. The brand was founded in January 2020, It has upheld the philosophy that "everyone can enjoy the beauty of fashion.".</p>
							<p>ELEGANCIA prides itself on offering on-trend styles catering to both young women and teens, 
								that won’t break the bank. ELEGANCIA adheres to the concept that "everyone can enjoy the 
								beauty of fashion." ELEGANCIA is able to stay on top of the latest fashion trends from
								around the globe while rapidly bringing these styles to market. So whether
								you're searching for boho dresses or graphic tees and patterned blouses,
								ELEGANCIA is the ultimate one-stop-shop for the modern yet economical
								fashionista. It aims to promptly offer stylish quality products at appealing 
								prices to every user in the world.</p>
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

