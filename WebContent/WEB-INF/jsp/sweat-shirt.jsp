<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
	<head>
	<title>Sweat Shirt</title>
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
								<a class="navbar-brand logo" href="index"><img src="<%=request.getContextPath()%>/ressources/plugins/images/logo.png" alt="homepage" /></a>
								<li ><a href="index">Home</a></li>
								<li class="has-dropdown active">
									<a href="shop">Shop</a>
								</li>
								<li><a href="about">About Us</a></li>
								<li><a href="contact">Contact Us</a></li>
								<li class="cart"><a href="cart"><i class="icon-shopping-cart"></i> Cart [0]</a></li>
								<li class="cart"><a href="login"><i class="bi bi-box-arrow-right"></i> Sign In</a></li>
							</ul>
								<!--  <input id="recherche" type="text" placeholder="Search...">
 								 <div class="search"></div>-->
						</div>
					</div>
				</div>
			</div>
			<!--
				
			-->
		</nav>

		<!--<div class="breadcrumbs-two">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="breadcrumbs-img" style="background-image: url(images/cover-img-1.jpg);">
							<h2>Women's</h2>
						</div>
						<div class="menu text-center">
							<p><a href="#">New Arrivals</a> <a href="#">Best Sellers</a> <a href="#">Extended Widths</a> <a href="#">Sale</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="breadcrumbs-two">
			<div class="container">
				<div class="row">
					<img src="1610099131dc272382dedc5e63157165dd35e4501a.gif" alt="promo"
					style="width: 100%; margin-top: 15px;">
				</div>
			</div>
        </div>
        <div class="breadcrumbs-two">
			<div class="container">
				<div class="row">
					<img src="16096750717b7d7e102f7afa216f27421a6a2ed75d.webp" alt="categoriers"
					style="width: 100%; margin-bottom: 15px;">
				</div>
			</div>
		</div>
		<div class="colorlib-featured">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 text-center">
						<div class="featured">
							<div class="featured-img featured-img-2" style="background-image: url(images/img_bg_2.jpg);">
								<h2>T-Shirts</h2>
								<p><a href="product-detail.jsp" class="btn btn-primary btn-lg">Shop now</a></p>
							</div>
						</div>
					</div>
					<div class="col-sm-3 text-center">
						<div class="featured">
							<div class="featured-img featured-img-2" style="background-image: url(images/women.jpg);">
								<h2>Sweat-shirts</h2>
								<p><a href="product-detail.jsp" class="btn btn-primary btn-lg">Shop now</a></p>
							</div>
						</div>
					</div>
					<div class="col-sm-3 text-center">
						<div class="featured">
							<div class="featured-img featured-img-2" style="background-image: url(images/item-11.jpg);">
								<h2>Vestes & Manteaux</h2>
								<p><a href="product-detail.jsp" class="btn btn-primary btn-lg">Shop now</a></p>
							</div>
						</div>
					</div>
					<div class="col-sm-3 text-center">
						<div class="featured">
							<div class="featured-img featured-img-2" style="background-image: url(images/item-11.jpg);">
								<h2>Robes</h2>
								<p><a href="product-detail.jsp" class="btn btn-primary btn-lg">Shop now</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="breadcrumbs-two">
			<div class="container">
				<div class="row">
					<img src="1610099368353004e2a5eee803a598bfe213558bb6 (1).gif" alt="promo"
					style="width: 100%; margin-top: 15px;">
				</div>
			</div>
		</div>
		<div class="breadcrumbs-two">
			<div class="container">
				<div class="row">
					<img src="1610099936d9be7c0382cfe00faeb2945e6a611c60.webp" alt="promo"
					style="width: 100%; margin-top: 15px;">
				</div>
			</div>
		</div>
    
    -->
		




		<div class="colorlib-product">
			<div class="container">
				
					<!--
                        <div class="col-lg-3 col-xl-3">
						<div class="row">
							<div class="col-sm-12">
								<div class="side border mb-1">
									<h3>Brand</h3>
									<ul>
										<li><a href="#">Nike</a></li>
										<li><a href="#">Adidas</a></li>
										<li><a href="#">Merrel</a></li>
										<li><a href="#">Gucci</a></li>
										<li><a href="#">Skechers</a></li>
									</ul>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="side border mb-1">
									<h3>Size/Width</h3>
									<div class="block-26 mb-2">
										<h4>Size</h4>
					               <ul>
					                  <li><a href="#">7</a></li>
					                  <li><a href="#">7.5</a></li>
					                  <li><a href="#">8</a></li>
					                  <li><a href="#">8.5</a></li>
					                  <li><a href="#">9</a></li>
					                  <li><a href="#">9.5</a></li>
					                  <li><a href="#">10</a></li>
					                  <li><a href="#">10.5</a></li>
					                  <li><a href="#">11</a></li>
					                  <li><a href="#">11.5</a></li>
					                  <li><a href="#">12</a></li>
					                  <li><a href="#">12.5</a></li>
					                  <li><a href="#">13</a></li>
					                  <li><a href="#">13.5</a></li>
					                  <li><a href="#">14</a></li>
					               </ul>
					            </div>
					            <div class="block-26">
										<h4>Width</h4>
					               <ul>
					                  <li><a href="#">M</a></li>
					                  <li><a href="#">W</a></li>
					               </ul>
					            </div>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="side border mb-1">
									<h3>Style</h3>
									<ul>
										<li><a href="#">Slip Ons</a></li>
										<li><a href="#">Boots</a></li>
										<li><a href="#">Sandals</a></li>
										<li><a href="#">Lace Ups</a></li>
										<li><a href="#">Oxfords</a></li>
									</ul>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="side border mb-1">
									<h3>Colors</h3>
									<ul>
										<li><a href="#">Black</a></li>
										<li><a href="#">White</a></li>
										<li><a href="#">Blue</a></li>
										<li><a href="#">Red</a></li>
										<li><a href="#">Green</a></li>
										<li><a href="#">Grey</a></li>
										<li><a href="#">Orange</a></li>
										<li><a href="#">Cream</a></li>
										<li><a href="#">Brown</a></li>
									</ul>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="side border mb-1">
									<h3>Material</h3>
									<ul>
										<li><a href="#">Leather</a></li>
										<li><a href="#">Suede</a></li>
									</ul>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="side border mb-1">
									<h3>Technologies</h3>
									<ul>
										<li><a href="#">BioBevel</a></li>
										<li><a href="#">Groove</a></li>
										<li><a href="#">FlexBevel</a></li>
									</ul>
								</div>
							</div>
                        </div>
                        
                        
					</div>
                    -->
                        <div class="row">
                            <div class="col-lg-3 mb-3 text-center">
                                Filtre Par Prix
                            </div>
                        </div>
						<div class="row row-pb-md">
							<c:forEach items="${Articles}" var="article">
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="Article-detail?idArticle=${article.getIdArticle()}" class="prod-img">
										<img src="getPhotoA?idArticle=${article.getIdArticle()}" class="img-fluid">
									</a>
									<div class="desc">
										<h2><a href="Article-detail?idArticle=${article.getIdArticle()}">${article.getDescription()}</a></h2>
										<span class="price">${article.getPrix()}</span>
									</div>
								</div>
                            </div>
                        </c:forEach>
                            <!-- 
                            <div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
                            </div>
                            <div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-2.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="#">Women's Minam Meaghan</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Men's Taja Commissioner</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img src="images/item-4.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Russ Men's Sneakers</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img src="images/item-5.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-6.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="#">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-7.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="#">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-8.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-9.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-10.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-11.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-12.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img src="images/item-13.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="#">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img src="images/item-14.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="#">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img src="images/item-15.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="#">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
                            </div>
                            <div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
                            </div>
                            <div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
                            </div>
                            <div class="col-lg-3 mb-3 text-center">
								<div class="product-entry border">
									<a href="product-detail.jsp" class="prod-img">
										<img src="images/item-1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
									</a>
									<div class="desc">
										<h2><a href="product-detail.jsp">Women's Boots Shoes Maca</a></h2>
										<span class="price">$139.00</span>
									</div>
								</div>
                            </div>
                            
                             -->
						</div>
						
					
				
			</div>
		</div>
	
		

		<footer class="footer-distributed">
 
			<div class="footer-left">
	 
			<a class="navbar-brand logo" href="index"><img src="<%=request.getContextPath()%>/ressources/plugins/images/logo.png" alt="homepage" /></a>
	 
			<p class="footer-links">
			<a href="index">Home</a>
		
			<a href="shop">Shop</a>
		
			<a href="about">About Us</a>
		
			<a href="contact">Contact Us</a>
			</p>
			</div>
	 
			<div class="footer-center">
	 
			<div>
			<i class="fa fa-map-marker"></i>
			<p>19, Boulevard El Qods, Ain chock<br>Casablanca, maroc</p>
			</div>
	 
			<div>
			<i class="fa fa-phone"></i>
			<a href="tel://0555123456"><p>+212 555 123456</p></a>
			</div>
	 
			<div>
			<i class="fa fa-envelope"></i>
			<a href="mailto:contact@Elegancia.ma"><p>contact@Elegancia.com</p></a>
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
