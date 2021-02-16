<%@page import="Entity.Categorie"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
	<meta charset="ISO-8859-1">
	<title>Catégorie</title>
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
  <!-- <div>
  <form:form action="save" modelAttribute="categorie" method="post" enctype="multipart/form-data">
  <table>
  <tr>
  <td>ID CATEGORIE</td>
  <td><form:input type="hidden" path="idCategorie"  /></td>
  <td><form:errors path="idCategorie" /></td>
  </tr>
  <tr>
  <td>Nom CATEGORIE</td>
  <td><form:input  path="NomCategorie"  /></td>
  <td><form:errors path="NomCategorie" /></td>
  </tr>
   <tr>
  <td>description CATEGORIE</td>
  <td><form:textarea  path="description"  /></td>
  <td><form:errors path="description" /></td>
  </tr>
   <tr>
   <td>photo CATEGORIE</td>
  <td><input type="file" name="file"/></td>
  <td></td>
  </tr>
  <tr>
   <td></td>
  <td><input type="submit" value="save"/></td>
  <td></td>
  </tr>
  </table> 
  </form:form>
  </div>
 	
 	<div>
  <table>
  <tr>
  <th>ID </th><th>Nom </th><th>description </th><th>photo </th><th>Supprimer</th><th>Modifier</th>
  </tr>
  <c:forEach items="${lescategories}" var="categorie">
  <tr>
  <td>${categorie.getIdCategorie()}</td>
  <td>${categorie.getNomCategorie()}</td>
  <td>${categorie.description}</td>
  <td><img src="getPhotoC?idCategorie=${categorie.getIdCategorie()}"></td>
  <td><a href="DeleteCat?idCategorie=${categorie.getIdCategorie()}">Delete</a></td>
  <td><a href="updateCat?idCategorie=${categorie.getIdCategorie()}">update</a></td>
  </tr>
  </c:forEach>
  </table>
  </div> -->
  
   <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
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
                    <div >
                        <h4>AJOUTER UNE CATEGORIE : </h4>
  							<form:form action="save" modelAttribute="categorie" method="post" enctype="multipart/form-data">
  								<table>
								 	<!--  <tr>
										<td>ID Catégorie</td>
										<td> : </td>
									  	<td><form:input type="hidden" path="idCategorie" style="width:270px"/></td>
										<td><form:errors path="idCategorie" style="width:270px"/></td>
								  	</tr> -->
  									<tr>
										<td>Nom Catégorie</td>
										<td> : </td>
	  									<td><form:input  path="NomCategorie" style="width:255px" /></td>
	  									<td><form:errors path="NomCategorie" style="width:255px"/></td>
  									</tr>
   									<tr>
  										<td>Description Catégorie</td>
  										<td> : </td>
									  	<td><form:textarea  path="description"  style="width:255px"/></td>
									  	<td><form:errors path="description" style="width:255px"/></td>
  									</tr>
								   	<tr>
								   		<td>Photo Catégorie</td>
								   		<td> : </td>
								  		<td><input type="file" name="file" style="width:255px"/></td>
								  		<td></td>
								 	</tr>
								  	<tr>
								   		<td></td>
								   		<td></td>
								  		<td><input type="submit" value="save" class="btn btn-primary" style="width:100px"/></td>
								  		<td></td>
								  	</tr>
  								</table> 
  							</form:form>
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
                            <h3 class="box-title">Les catégories</h3>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr valign="center" align="center" >
                                            <th class="border-top-0"  >ID</th>
                                            <th class="border-top-0">Name</th>
                                            <th class="border-top-0">Description</th>
                                            <th class="border-top-0">Picture</th>
                                            <th class="border-top-0">Delete</th>
                                            <th class="border-top-0">Update</th>
                                        </tr>
                                    </thead>
                                    <tbody align="center" valign="center">
                                     <c:forEach items="${lescategories}" var="categorie">
                                        <tr>
                                            <td align="center" valign="center">${categorie.getIdCategorie()}</td>
                                            <td align="center" valign="center">${categorie.getNomCategorie()}</td>
                                            <td align="center" valign="center">${categorie.description}</td>
                                            <td align="center" valign="center"><img src="getPhotoC?idCategorie=${categorie.getIdCategorie()}"></td>
                                            <td align="center" valign="center"><a href="DeleteCat?idCategorie=${categorie.getIdCategorie()}">Delete</a></td>
									  		<td align="center" valign="center"><a href="updateCat?idCategorie=${categorie.getIdCategorie()}">update</a></td>
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