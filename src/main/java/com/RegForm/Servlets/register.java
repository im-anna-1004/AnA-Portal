package com.RegForm.Servlets;
import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;




@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = null;
		String uemail= null;
		String uphn= null;
		String upswd= null;
		String urole= null;
		String FileName = null;
		Connection con=ConnectionProvider.getCon();
		RequestDispatcher dispatcher = null;
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		try 
		{	List<FileItem> items = upload.parseRequest(request);
		
		for (FileItem item : items) {
			  if (item.isFormField()) {
			    if (item.getFieldName().equals("name")) {
			      uname = item.getString();
			    } else if (item.getFieldName().equals("email")) {
			      uemail = item.getString();
			    }else if (item.getFieldName().equals("contact")) {
				  uphn = item.getString();
				}else if (item.getFieldName().equals("password")) {
				  upswd = item.getString();
				}else if (item.getFieldName().equals("role")) {
				  urole = item.getString();
				}
			  } else {
			    if (item.getName() != null && !item.getName().isEmpty()) {
			    	FileName = "images_" + uemail +".jpg";
			      File uploadedFile = new File("C:\\uploaded\\" + FileName);
			      item.write(uploadedFile);
			    }
			  }
			}
			PreparedStatement sp = con.prepareStatement("select * from reg where email=?");
			sp.setString(1, uemail);
			ResultSet rs = sp.executeQuery();
			if(rs.next()) 
				{	String cmail = rs.getString("email");
					if(cmail.equals(uemail))
					{
						request.setAttribute("status","AlreadyExists");
						dispatcher = request.getRequestDispatcher("Registration.jsp");
						dispatcher.forward(request, response);
					}
				}
			else
			{
				  PreparedStatement ps =
				  con.prepareStatement("insert into reg values(?,?,?,?,?)");
				  ps.setString(1, uname);
				  ps.setString(2, uemail);
				  ps.setString(3, uphn); 
				  ps.setString(4, upswd); 
				  ps.setString(5, urole);
				 
				   //System.out.println(ps);
					
					  int rowcount= ps.executeUpdate();
					  if(rowcount>0) {
					  request.setAttribute("status","success"); } 
					  else {
					  request.setAttribute("status","failure" ); }
					 
				dispatcher = request.getRequestDispatcher("Registration.jsp");
				dispatcher.forward(request, response);
			}	
		}
		catch(Exception e) 
		{
			System.out.println(e);
		}
	}

}	
	


