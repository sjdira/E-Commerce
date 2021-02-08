<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/ressources/css/TestUserStyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <div id="login-box">
       <div class="left">
           <h1>Sign up</h1>

			<form action="verifyClient" method="post">
				
	           <input type="text" name="email" placeholder="E-mail" />
	           <input type="password" name="password" placeholder="Password" />
	           <!--<input type="password" name="password2" placeholder="Retype password" />-->
				<div><a href="checkout">Create accounts</a></div>
	           <input type="submit" name="signup_submit" value="Sign me up" />
			</form>
          
       </div>
  </body>
</html>
