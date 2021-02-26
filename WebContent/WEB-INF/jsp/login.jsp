<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/ressources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ressources/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-90 p-b-30">
				<form class="login100-form validate-form" action="login" method="post">
					<span class="login100-form-title p-b-40">
						Login
					</span>

					<!--<div>
						<a href="#" class="btn-login-with bg1 m-b-10">
							<i class="fa fa-facebook-official"></i>
							Login with Facebook
						</a>

						<a href="#" class="btn-login-with bg2">
							<i class="fa fa-twitter"></i>
							Login with Twitter
						</a>
					</div>

					<div class="text-center p-t-55 p-b-30">
						<span class="txt1">
							Login with email
						</span>
					</div>
					data-validate="Please enter email: ex@abc.xyz"
					-->
					<div class="wrap-input100 validate-input m-b-16" >
						<input class="input100" type="text" name="login" placeholder="Login">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
						<span class="btn-show-pass">
							<i class="fa fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
						
					</div>
					
					<!--  <div class="flex-col-c p-t-224">
						<span class="txt2 p-b-10">
							Don’t have an account?
						</span>

						<a href="#" class="txt3 bo1 hov1">
							Sign up now
						</a>
					</div>-->
					
				</form>
			</div>
		</div>
	</div>
	
	
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/ressources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/ressources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/ressources/vendor/bootstrap/js/popper.js"></script>
	<script src="<%=request.getContextPath()%>/ressources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/ressources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/ressources/vendor/daterangepicker/moment.min.js"></script>
	<script src="<%=request.getContextPath()%>/ressources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/ressources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/ressources/js/main_l.js"></script>

</body>
</html>