<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<link rel="stylesheet" href="css/password.css">
<script src="js/password.js"></script>
</head>
<body >
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

	<div class="main">

		
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="font" style="font-family: 'Poppins', sans-serif;" >Sign up</h2>
					
						<form method="post" action="register" onsubmit="return validateForm()" enctype="multipart/form-data" 
						class="register-form" name="register-form" id="register-form">
							<div class="form-group">
								<label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" style="font-family: 'Poppins', sans-serif;"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> 
								<input type="text" name="email" id="email" placeholder="Your Email" 
								pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"
								style="font-family: 'Poppins', sans-serif;"
								/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
								title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
								placeholder="Password" style="font-family: 'Poppins', sans-serif;"/>
							</div>
							<div class="formgroup"id="message">
 								 <h3>Password must contain the following:</h3>
								  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
								  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
								  <p id="number" class="invalid">A <b>number</b></p>
								  <p id="length" class="invalid">Minimum <b>8 characters</b></p>											
							</div>
							
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="number" name="contact" id="contact"
									placeholder="Contact no" style="font-family: 'Poppins', sans-serif;"/>
							</div>	
							<div class="form-group">
								<label for="role"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="role" id="role" placeholder="Student/Teacher" style="font-family: 'Poppins', sans-serif;"/>
									
							</div>	
							<div class="form-group">
								<label for="image"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="file" name="file" id="file" accept=".jpg,.jpeg,.png" style="font-family: 'Poppins', sans-serif;"/>
									
							</div>
							<div class="form-group" style="font-family: 'Poppins', sans-serif;">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
							</div>
							
							<div class="form-group form-button" style="font-family: 'Poppins', sans-serif;">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image" style="font-family: 'Poppins', sans-serif;">
						<figure>
							<img src="images/AnA.png" alt="sign up image">
						</figure>
						<a href="Login.jsp" class="signup-image-link">I am already member</a>
					</div>		
				</div>
				
			</div>
		</section>
		

	</div>
	
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="js/register.js"></script>
	<script src="js/password.js"></script>
	
	<script type="text/javascript">
	
		var status= document.getElementById("status").value;
	
		if(status == "AlreadyExists"){
			swal("Sorry", "Email Already Exists","error");
			}
		if(status == "success"){
			swal("Congrats!", "Registered Successfully","success")
			.then(function(){
			    window.location = "Login.jsp";
			});
			}

	</script>

</body>
</html>