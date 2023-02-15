package com.RegForm.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class update1
 */
@WebServlet("/updateuser")
public class updateEditForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher dispatcher;
		String uname = request.getParameter("name");
		String uphn= request.getParameter("contact");
		String upswd= request.getParameter("password");
		String uemail= request.getParameter("email");
		 int status=0;
		try{  
			Connection con=ConnectionProvider.getCon(); 
		
			PreparedStatement ps = con.prepareStatement("update reg set name=?,contact=?,password=? where email=?;");
				ps.setString(1,uname);   
		        ps.setString(2,uphn); 
		        ps.setString(3,upswd);
		        ps.setString(4,uemail);
		       
		        System.out.println(ps);  
		       status= ps.executeUpdate();    
		}catch(Exception e){}
		request.setAttribute("status", status);
		dispatcher= request.getRequestDispatcher("ViewUser.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
