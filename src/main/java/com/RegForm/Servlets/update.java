package com.RegForm.Servlets;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher;
		String uname = request.getParameter("name");
		
		String uphn= request.getParameter("contact");
		String upswd= request.getParameter("password");
		
		 int status=0;
		try{  
			Connection con=ConnectionProvider.getCon(); 
		
			PreparedStatement ps = con.prepareStatement("update reg set name=?,contact=?,password=? where email=?;");
				ps.setString(1,uname);   
		        ps.setString(2,uphn); 
		        ps.setString(3,upswd);
		        ps.setString(4,(String) session.getAttribute("email"));
		       
		        // System.out.println(ps);  
		       status= ps.executeUpdate();    
		}catch(Exception e){}
		request.setAttribute("status", status);
		dispatcher= request.getRequestDispatcher("Profile.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
