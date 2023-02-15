<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="icon" type="image/x-icon" href="images/Logo.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.css">
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	<div class="main">
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/Logo.png" alt="sign up image">
						</figure>
						<a href="Registration.jsp" class="signup-image-link">Create an account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						
						<form method="post" action="login" onsubmit="return validateForm()" class="register-form" id="login-form" name="login-form">
							
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label> 
								<input type="text" name="email" id="email" placeholder="Your Email"/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input type="password" name="password" id="password"
									placeholder="Password"/>
							</div>	
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>	
						</div>
					</div>
				</div>
			
		</section>

	</div>

	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="js/login.js"></script>
	
	<script type="text/javascript">
	
		var status= document.getElementById("status").value;
		if(status == "failed"){
			swal("Sorry", "Wrong username or password","error");
			}
	</script>
</body>

</html>