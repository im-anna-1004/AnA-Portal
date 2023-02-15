<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@page import = "java.util.*,javax.servlet.jsp.*,javax.servlet.*" %>
    <%@page import = "com.RegForm.Dao.UserDao,com.RegForm.Dao.UserDetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Users</title>
<link rel="stylesheet" href="css/view.css">
<link rel="stylesheet" href="css/common.css">
</head>
<body>

<header class="sticky">
        <a href="index.jsp" class="logo">A<span>nA</span>.</a>
        <ul class="navlist">
           
  <li> <a href="index.jsp">Home</a> </li>
  <li style="float:right"><a href="Profile">Profile</a></li>
  <li style="float:right"><a class="active" href="logout">Logout</a></li>
</ul>
     
        <div class="bx bx-menu" id="menu-icon">

            
        </div>
    </header>
<input type="hidden" id = "role" value="<%=session.getAttribute("role") %>">
<input type="hidden" id = "email" value="<%=session.getAttribute("email") %>">
<script type="text/javascript">
		var email = (String)session.getAttribute("email"); 
		</script>
		
<%
	String role= (String)session.getAttribute("role");
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	if(session.getAttribute("email") == "" || session.getAttribute("email")== null || 
			session.getAttribute("role") == "" || session.getAttribute("role")== null)
		response.sendRedirect("Login.jsp");
	%>
	


<%-- for ADMIN --%>

<%if(role.equals("admin")){ %> 
	<%
	List<UserDetails> list = UserDao.ViewRecords();  
	request.setAttribute("list",list);
	List<UserDetails> list1 = UserDao.ViewRecords1();  
	request.setAttribute("list1",list1);  
	%>

<div class="table">
	<table  class="tables conatiner" >
		<tr>
			
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Role</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>

		<c:forEach items="${list}" var ="u">
			<tr><td><c:out value="${u.getUname()}"></c:out></td>
			<td><c:out value="${u.getUemail()}"></c:out></td>
			<td><c:out value="${u.getUphn()}"></c:out></td>
			<td><c:out value="${u.getUrole()}"></c:out></td>
			<td><a href="EditForm?email=${u.getUemail()}"><button class="but">Edit</button></a></td>
			<td> <a href="Delete?email=${u.getUemail()}"><button class="but">Delete</button></a></td></tr>
		</c:forEach>
	</table>
	</div>
	
	<div class="table">
	<table  class="tables conatiner" >
		<tr>
			
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Role</th>
			<th>Edit</th>
			<th>Delete</th>
			
		</tr>

		<c:forEach items="${list1}" var ="u">
			<tr><td><c:out value="${u.getUname()}"></c:out></td>
			<td><c:out value="${u.getUemail()}"></c:out></td>
			<td><c:out value="${u.getUphn()}"></c:out></td>
			<td><c:out value="${u.getUrole()}"></c:out></td>
			<td><a href="EditForm?email=${u.getUemail()}"><button class="but">Edit</button></a></td>
			<td> <a href="Delete?email=${u.getUemail()}"><button class="but">Delete</button></a></td></tr>
		</c:forEach>
	</table>
	</div>
<%} %>


<%-- For teacher --%>


<%if(role.equals("Teacher")){ %> 
	<%
	List<UserDetails> list = UserDao.ViewRecords();  
	request.setAttribute("list",list);
	List<UserDetails> list1 = UserDao.ViewRecords1();  
	request.setAttribute("list1",list1);  
	%>

<div class="table">
	<table  class="tables conatiner" >
		<tr>
			
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Role</th>
			
		</tr>

		<c:forEach items="${list}" var ="u">
			<tr><td><c:out value="${u.getUname()}"></c:out></td>
			<td><c:out value="${u.getUemail()}"></c:out></td>
			<td><c:out value="${u.getUphn()}"></c:out></td>
			<td><c:out value="${u.getUrole()}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	
	<div class="table">
	<table  class="tables conatiner" >
		<tr>
			
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Role</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>

		<c:forEach items="${list1}" var ="u">
			<tr><td><c:out value="${u.getUname()}"></c:out></td>
			<td><c:out value="${u.getUemail()}"></c:out></td>
			<td><c:out value="${u.getUphn()}"></c:out></td>
			<td><c:out value="${u.getUrole()}"></c:out></td>
			<td><a href="EditForm?email=${u.getUemail()}"><button class="but">Edit</button></a></td>
			<td> <a href="Delete?email=${u.getUemail()}"><button class="but">Delete</button></a></td></tr>
		</c:forEach>
	</table>
	</div>
<%} %>
<%-- For Student --%>

<%if(role.equals("Student")){ %> 
	<%
	List<UserDetails> list = UserDao.ViewRecords();  
	request.setAttribute("list",list);
	List<UserDetails> list1 = UserDao.ViewRecords1();  
	request.setAttribute("list1",list1);  
	%>

<div class="table">
	<table  class="tables conatiner" >
		<tr>
			
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Role</th>
			
		</tr>

		<c:forEach items="${list}" var ="u">
			<tr><td><c:out value="${u.getUname()}"></c:out></td>
			<td><c:out value="${u.getUemail()}"></c:out></td>
			<td><c:out value="${u.getUphn()}"></c:out></td>
			<td><c:out value="${u.getUrole()}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	
	<div class="table">
	<table  class="tables conatiner" >
		<tr>
			
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Role</th>
			
		</tr>

		<c:forEach items="${list1}" var ="u">
			<tr><td><c:out value="${u.getUname()}"></c:out></td>
			<td><c:out value="${u.getUemail()}"></c:out></td>
			<td><c:out value="${u.getUphn()}"></c:out></td>
			<td><c:out value="${u.getUrole()}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	</div>
<%} %>
<script src="js/script.js"></script>
</body>
</html>