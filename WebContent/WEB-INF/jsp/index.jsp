<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML>
<html> 
	<head>
	<title>Elegancia</title>
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
		
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(<%=request.getContextPath()%>/ressources/chemises/Newin_woman.jpg);">
				<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-sm-6 offset-sm-3 text-center slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
					   					<h1 class="head-1">Women's</h1>
					   					<h2 class="head-2">New</h2>
					   					<h2 class="head-3">Collection</h2>
					   					<p class="category"><span>New trending </span></p>
					   					<p><a href="shop" class="btn btn-primary">Shop Collection</a></p>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(<%=request.getContextPath()%>/ressources/chemises/Newin_woman.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-sm-6 offset-sm-3 text-center slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
					   					<h1 class="head-1">Collections</h1>
					   					<p><a href="shop" class="btn btn-primary">Shop Now</a></p>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(chemises/Newin_woman.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-sm-6 offset-sm-3 text-center slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
					   					<h1 class="head-1">New</h1>
					   					<h2 class="head-2">Arrival</h2>
					   					<p><a href="#" class="btn btn-primary">Shop Collection</a></p>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
		
		<div class="colorlib-intro ">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						<h2 class="intro">"Style is something each of us already has, all we need to do is find it." —Diane von Furstenberg</h2>
					</div>
				</div>
			</div>
		</div>
		

		<div class="colorlib-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
						<h2>NOUVEAUTES</h2>
					</div>
				</div>
				<div class="row row-pb-md">
				
				<c:forEach items="${ListNVArticle}" var="Article">
				<div class="col-lg-4 mb-4 text-center">
						<div class="product-entry border">
							<a href="Article-detail?idArticle=${Article.getIdArticle()}" class="prod-img">
								<img src="getPhotoA?idArticle=${Article.getIdArticle()}" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">${Article.getDescription()}</a></h2>
								<span class="price">${Article.getPrix()}</span>
							</div>
						</div>
					</div>
				</c:forEach>
					<!--  <div class="col-lg-4 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/2051439501_2_2_1.webp" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Dress</a></h2>
								<span class="price">299.00DH</span>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/2077346084_1_1_1.webp" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Jeans bleu</a></h2>
								<span class="price">349.00DH</span>
							</div>
						</div>
					</div>
					<div class="w-100"></div>
					<div class="col-lg-6 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/3457266710_1_1_3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Baskets</a></h2>
								<span class="price">599.00DH</span>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/3450668800_1_1_3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Air Force</a></h2>
								<span class="price">579.00DH</span>
							</div>
						</div>
					</div>
					
					<div class="w-100"></div>
					<div class="col-lg-4 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/1203760002_2_4_3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Manteau</a></h2>
								<span class="price">999.00DH</span>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/1801760002_2_4_3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Doudoune</a></h2>
								<span class="price">859.00DH</span>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/1108760001_2_14_3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Chemise Verte</a></h2>
								<span class="price">299.00DH</span>
							</div>
						</div>
					</div>
				
					<div class="w-100"></div>
					<div class="col-lg-12 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/0033534400_6_2_3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Blazer Gris</a></h2>
								<span class="price">379.00DH</span>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/3815023808_1_1_3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Blazer</a></h2>
								<span class="price">350.00DH</span>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="<%=request.getContextPath()%>/ressources/chemises/3817678302_1_1_3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Ensemble avec pantalon tailleur</a></h2>
								<span class="price">799.00DH</span>
							</div>
						</div>
					</div>
					-->
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<p><a href="shop" class="btn btn-primary btn-lg">Shop All Products</a></p>
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
<!--<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <a href="index.jsp"><img src="images/logofooter.png" /></a> 
                </div>
                <div class="col-lg-3 col-sm-2 col-xs-3">
                    <h4>Contact Information</h4>
						<ul class="colorlib-footer-links">
							<li>Bd Souhaib Erroumi – Sidi Bernoussi Casablanca  Théâtre Moulay   <br> Avenue Colonnel Allam</li>
							<li><a href="tel://1234567920">Téléphone : + 212 (0)5 22 75 77 12.</a></li>
							<li><a href="mailto:team@yoursite.com">team@oursite.com</a></li>
							<li><a href="#">oursite.com</a></li>
						</ul>
                </div>
                <div class="col-lg-3 col-sm-2 col-xs-3">
                   						<h4>About Us</h4>
						<p>Talent wins games, but teamwork and intelligence win championships</p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>
							</ul>
						</p>
                </div>-->
               
            <!--/.row--> 
       <!-- </div> </div>-->
        <!--/.container--> 
    
    <!--/.footer-->
                          
    
    <!--/.footer-bottom</footer>--> 



		<!--<footer id="colorlib-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col footer-col colorlib-widget">
						<h4>About Us</h4>
						<p>Talent wins games, but teamwork and intelligence win championships</p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>
							</ul>
						</p>
					</div>
					<div class="col footer-col colorlib-widget">
						<h4>Customer Care</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">Contact</a></li>
								<li><a href="#">Returns/Exchange</a></li>
								<li><a href="#">Gift Voucher</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Special</a></li>
								<li><a href="#">Customer Services</a></li>
								<li><a href="#">Site maps</a></li>
							</ul>
						</p>
					</div>
					<div class="col footer-col colorlib-widget">
						<h4>Information</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">About us</a></li>
								<li><a href="#">Delivery Information</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Support</a></li>
								<li><a href="#">Order Tracking</a></li>
							</ul>
						</p>
					</div>

					<div class="col footer-col">
						<h4>Contact Information</h4>
						<ul class="colorlib-footer-links">
							<li>Bd Souhaib Erroumi – Sidi Bernoussi Casablanca  Théâtre Moulay   <br> Avenue Colonnel Allam</li>
							<li><a href="tel://1234567920">Téléphone : + 212 (0)5 22 75 77 12.</a></li>
							<li><a href="mailto:info@yoursite.com">team@oursite.com</a></li>
							<li><a href="#">oursite.com</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="copy">
				<div class="row">
					
				</div>
			</div>
		</footer>-->
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