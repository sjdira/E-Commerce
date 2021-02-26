<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Article</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, Ample lite admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, Ample admin lite dashboard bootstrap 4 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Catégorie</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/ressources/plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/ionicons.min.css">
    <link href="<%=request.getContextPath()%>/ressources/css/style.css" rel="stylesheet">
   	<link href="<%=request.getContextPath()%>/ressources/css/style.min.css" rel="stylesheet">
   
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!-- Dark Logo icon 
                            <img src="<%=request.getContextPath()%>/ressources/plugins/images/logo-icon.png" alt="homepage" /> -->
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="<%=request.getContextPath()%>/ressources/plugins/images/logo.png" alt="homepage" />
                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <ul class="navbar-nav d-none d-md-block d-lg-none">
                        <li class="nav-item">
                            <a class="nav-toggler nav-link waves-effect waves-light text-white"
                                href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav ml-auto d-flex align-items-center">

                        
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li>
                            <a class="profile-pic" href="#">
                                <img src="<%=request.getContextPath()%>/ressources/plugins/images/users/varun.jpg" alt="user-img" width="36"
                                    class="img-circle"><span class="text-white font-medium">Administrateur</span></a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
            
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="admin" aria-expanded="false"><i class="fas fa-clock fa-fw"
                                    aria-hidden="true"></i><span class="hide-menu">Statistics</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="categorie" aria-expanded="false"><i class="fa fa-table"
                                    aria-hidden="true"></i><span class="hide-menu">Gestion des Catégories</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="Article" aria-expanded="false"><i class="fa fa-table"
                                    aria-hidden="true"></i><span class="hide-menu">Gestion des Articles</span></a></li>
                                    
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="client" aria-expanded="false"><i class="fa fa-table"
                                    aria-hidden="true"></i><span class="hide-menu">Gestion des Clients</span></a></li>
	                    <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="index"
                                aria-expanded="false">
                                <i class="fa fa-info-circle" aria-hidden="true"></i>
                                <span class="hide-menu">Logout</span>
                            </a>
                        </li>
                        
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                 <div class="row align-items-center">
                    <div class="col-lg-6 center">
                        <h4> AJOUTER UN ARTICLE : </h4>
  							<form:form action="saveArticle" modelAttribute="article" method="post" enctype="multipart/form-data">
  								<table>
  								<tr>
								  <td>ID Article</td>
								  <td><form:input type="hidden" path="idArticle" style="width:255px"/></td>
								  <td><form:errors path="idArticle" style="width:255px"/></td>
								  </tr>
  									<tr>
										  <td>designation</td>
										  <td><form:input  path="designation"  style="width:255px"/></td>
										  <td><form:errors path="designation" style="width:255px"/></td>
										  </tr>
									 <tr>
										  <td>prix</td>
										  <td><form:input  path="prix" style="width:255px" /></td>
										  <td><form:errors path="prix" style="width:255px" /></td>
										  </tr>
									<tr>
									  <td>quantite</td>
									  <td><form:input  path="quantite" style="width:255px"  /></td>
									  <td><form:errors path="quantite" style="width:255px" /></td>
									 </tr>
						  <tr>
						  <td>tva</td>
						  <td><form:input  path="tva"  style="width:255px"/></td>
						  <td><form:errors path="tva" style="width:255px"/></td>
						  </tr>
						  <tr>
						  <td>description</td>
						  <td><form:textarea  path="description" style="width:255px"/></td>
						  <td><form:errors path="description" style="width:255px" /></td>
						  </tr>
						  <tr>
						  <td>photo</td>
						<td><input type="file" name="file" style="width:255px"/></td>
						  <td></td>
						  </tr>
						  <tr>
						  <td>solde</td>
						  <td><form:input  path="solde"  style="width:255px"/></td>
						  <td><form:errors path="solde" style="width:255px"/></td>
						  </tr>
						  <tr>
						  <td>dispo</td>
						  <td><form:input  path="dispo"  style="width:255px"/></td>
						  <td><form:errors path="dispo" style="width:255px"/></td>
						  </tr>
						  <tr>
						  <td>taille</td>
						  <td><form:input  path="taille"  style="width:255px"/></td>
						  <td><form:errors path="taille" style="width:255px"/></td>
						  </tr>
						  <tr>
						  <td>couleur</td>
						  <td><form:input  path="couleur" style="width:255px" /></td>
						  <td><form:errors path="couleur"  style="width:255px"/></td>
						  </tr>
						  <tr>
						  <td>categorie</td>
						  <td><form:select style="width:255px" path="categorie.idCategorie" items="${categories}" itemLabel="NomCategorie" itemValue="idCategorie"/> 
						   </td>
						  <td><form:errors style="width:255px" path="categorie.idCategorie" /></td>
						  </tr>
						  <tr>
						   <td></td>
						  <td><input type="submit" value="save" class="btn btn-primary" style="width:100px"/></td>
						  <td></td>
						  </tr>
  								</table> 
  							</form:form>
                    </div>
                     <div class="col-lg-6">
                    	<form action="chercherArticleByNom" method="get">
                    		<div class="input-group rounded">
						  <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
						    aria-describedby="search-addon" name="Mot"/>
						  <span class="input-group-text border-0" id="search-addon">
						    
						    <button class="fas fa-search"></button>
						  </span>
						</div>
                    	</form>
                    </div> 
                    
                    
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">Les articles</h3>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr align="center" valign="center" >
                                            <th class="border-top-0">ID</th>
                                            <th class="border-top-0">Designation</th>
                                            <th class="border-top-0">Price</th>
                                            <th class="border-top-0">Quantity</th>
                                            <th class="border-top-0">TVA</th>
                                            <th class="border-top-0">Description</th>
                                            <th class="border-top-0">Picture</th>
                                            <th class="border-top-0">Sales</th>
                                            <th class="border-top-0">Available</th>
                                            <th class="border-top-0">Size</th>
                                            <th class="border-top-0">Color</th>
                                            <th class="border-top-0">Delete</th>
                                            <th class="border-top-0">Update</th>
                                        </tr>
                                    </thead>
                                    <tbody align="center" valign="center">
                                     <c:forEach items="${lesArticles}" var="article">
  <tr>
  <td>${article.getIdArticle()}</td>
  <td>${article.getDesignation()}</td>
  <td>${article.getPrix()}</td>
  <td>${article.getQuantite()}</td>
  <td>${article.getTva()}</td>
  <td>${article.getDescription()}</td>
  <td><img src="getPhotoA?idArticle=${article.getIdArticle()}" width="100%"></td>
  <td>${article.getSolde()}</td>
  <td>${article.getDispo()}</td>
  <td>${article.getTaille()}</td>
  <td>${article.getCouleur()}</td>
  <td><a href="DeleteArticle?idArticle=${article.getIdArticle()}">Delete</a></td>
  <td><a href="updateArticle?idArticle=${article.getIdArticle()}">update</a></td>
  </tr>
  </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
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
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<%=request.getContextPath()%>/ressources/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<%=request.getContextPath()%>/ressources/plugins/bower_components/popper.js/dist/umd/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/ressources/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/ressources/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="<%=request.getContextPath()%>/ressources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="<%=request.getContextPath()%>/ressources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="<%=request.getContextPath()%>/ressources/js/custom.js"></script>
</body>
</html>
