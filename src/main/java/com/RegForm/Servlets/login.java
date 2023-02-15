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

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
   		String uemail = request.getParameter("email");
   		String upswd  = request.getParameter("password");
   		//System.out.println(uemail);
   		//System.out.println(upswd);
   		RequestDispatcher dispatcher=null;
   		
   		
   		try {
   			  
			  
   			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("select * from reg where email=? and password=?");
			
			ps.setString(1, uemail);
			ps.setString(2, upswd);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) 
			{		
					session.setAttribute("email" ,rs.getString("email"));
					session.setAttribute("role", rs.getString("role"));
					session.setAttribute("name", rs.getString("name"));
					dispatcher = request.getRequestDispatcher("index.jsp");
			}
			else
			{
				request.setAttribute("status","failed");
				dispatcher = request.getRequestDispatcher("Login.jsp");
			}
		
   		dispatcher.forward(request, response);
   		}catch(Exception e) {
   			System.out.println(e);
   			e.printStackTrace();
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
