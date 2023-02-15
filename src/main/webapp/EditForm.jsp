<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@page import = "java.util.*,javax.servlet.jsp.*,javax.servlet.*" %>
        <%@page import = "com.RegForm.Dao.UserDao,com.RegForm.Dao.UserDetails" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Edit User</title>
	<link rel="icon" type="image/x-icon" href="images/Logo.ico">
<link rel="stylesheet" href="css/profile.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<input type="hidden" id = "status" value="<%=request.getAttribute("status") %>">
<%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	String uname=(String)session.getAttribute("name");
	if(session.getAttribute("email") == "" || session.getAttribute("email")== null)
		response.sendRedirect("Login.jsp");

%>
<input type="hidden" id = "u" value="<%=request.getAttribute("u") %>">
<script type="text/javascript">
UserDetails u= document.getElementById("u").value;
</script>
	
<!-- NAVBAR -->	
<header class="sticky">
        <a href="index.jsp" class="logo">A<span>nA</span>.</a>
        <ul class="navlist">
           
  <li> <a href="index.jsp">Home</a> </li>
  <li style="float:right"><a class="active" href="logout">Logout</a></li>
</ul>
     
        <div class="bx bx-menu" id="menu-icon">

            
        </div>
    </header>
<!-- Form -->

<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
            <img class="rounded-circle mt-5" width="150px" height="150px" src="data:image/jpeg;base64,${imageContent}">
             <span class="font-weight-bold">
             <c:out value="${u.getUname()}"></c:out>
             </span>
             <span class="text-black-50">
             <c:out value="${u.getUemail()}"></c:out>
             </span><span> </span>
             </div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
                <form action="updateuser" method="post">
                <div class="row mt-2">
                    <div class="col-md-12"><label class="labels">Name</label>
                    <input  name="name" id="name" type="text" class="form-control" 
                    placeholder="Name" value="${u.getUname()}"></div>
                   <!-- <div class="col-md-6"><label class="labels">Surname</label><input type="text" class="form-control" value="" placeholder="surname"></div>  --> 
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Mobile Number</label>
                    <input name="contact" id="contact" type="text" class="form-control" 
                    placeholder="enter phone number" value="${u.getUphn()}"></div>
                <!--     <div class="col-md-12"><label class="labels">Address Line 1</label><input type="text" class="form-control" placeholder="enter address line 1" value=""></div>  
                    <div class="col-md-12"><label class="labels">Address Line 2</label><input type="text" class="form-control" placeholder="enter address line 2" value=""></div>  
                    <div class="col-md-12"><label class="labels">Postcode</label><input type="text" class="form-control" placeholder="enter address line 2" value=""></div> 
                    <div class="col-md-12"><label class="labels">State</label><input type="text" class="form-control" placeholder="enter address line 2" value=""></div>  
                    <div class="col-md-12"><label class="labels">Area</label><input type="text" class="form-control" placeholder="enter address line 2" value=""></div> 
                -->
                
                    <input type="hidden" name="email" id="email" class="form-control" 
                    placeholder="enter email id" value="${u.getUemail()}"></div>
                <!--      <div class="col-md-12"><label class="labels">Education</label><input type="text" class="form-control" placeholder="education" value=""></div>-->
               	 
                <!--  <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Country</label><input type="text" class="form-control" placeholder="country" value=""></div>
                    <div class="col-md-6"><label class="labels">State/Region</label><input type="text" class="form-control" value="" placeholder="state"></div>
                </div>-->
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Password</label>
                    <input type="text" name="password" id="password" class="form-control" 
                    placeholder="enter your password" value="${u.getUpswd()}"></div>
               	 </div>
                <div class="mt-5 text-center"><input class="btn btn-primary profile-button" type="submit" value="Save Profile"></div>
           	</form>	
            </div>
        </div>
        <!--  <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div><br>
                <div class="col-md-12"><label class="labels">Experience in Designing</label><input type="text" class="form-control" placeholder="experience" value=""></div> <br>
                <div class="col-md-12"><label class="labels">Additional Details</label><input type="text" class="form-control" placeholder="additional details" value=""></div>
            </div> -->
        </div>
    </div>
<!--    </div> -->

<script type="text/javascript">
		var status = document.getElementById("status").value;
		
		if (status == "success")
			alert("Data Updated Successfully");
		</script>
		
</body>
</html>
