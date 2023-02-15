<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@page import = "java.util.*,javax.servlet.jsp.*,javax.servlet.*" %>
        <%@page import = "com.RegForm.Dao.UserDao,com.RegForm.Dao.UserDetails" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Profile</title>
	<link rel="icon" type="image/x-icon" href="images/Logo.ico">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<header class="sticky">
        <a href="index.jsp" class="logo">A<span>nA</span>.</a>
        <ul class="navlist">
           
  <li> <a href="index.jsp">Home</a> </li>
  <li><a href="ViewUser.jsp">Users</a></li>
  <li style="float:right"><a class="active" href="logout">Logout</a></li>
</ul>
     
        <div class="bx bx-menu" id="menu-icon">

            
        </div>
    </header>

<%
	String name=(String)session.getAttribute("name");
%>
<input type="hidden" id = "u" value="<%=request.getAttribute("u") %>">
<script type="text/javascript">
UserDetails u= document.getElementById("u").value;
</script>

<!-- Form -->

<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
            <img class="rounded-circle mt-5" width="150px" height="150px" src="data:image/jpeg;base64,${imageContent}">           
            <span class="font-weight-bold"><c:out value="${name}"></c:out></span>
            <span class="text-black-50"><c:out value="${email}"></c:out></span>
            <span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
                <form action="update" method="post">
                <div class="row mt-2">
                    <div class="col-md-12"><label class="labels">Name</label>
                    <input  name="name" id="name" type="text" class="form-control" placeholder="Name" value="${u.getUname()}"></div>
                 
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Mobile Number</label>
                    <input name="contact" id="contact" type="text" class="form-control" 
                    placeholder="enter phone number" value="${u.getUphn()}"></div>
            
                </div>
                    <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Email</label>
                    <input disabled type="text" name="email" id="email" class="form-control" 
                    placeholder="enter email id" value="${u.getUemail()}"></div>
                
               	 </div>
                
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Password</label>
                    <input type="text" name="password" id="password" class="form-control" 
                    placeholder="enter your password" value="${u.getUpswd()}"></div>
               	 </div>
                <div class="mt-5 text-center"><input class="btn btn-primary profile-button" type="submit" value="Save Profile"></div>
           	</form>	
            </div>
        </div>
      
        </div>
    </div>


</body>
</html>
