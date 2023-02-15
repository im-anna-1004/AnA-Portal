package com.RegForm.Servlets;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RegForm.Dao.UserDao;
import com.RegForm.Dao.UserDetails;

/**
 * Servlet implementation class ViewUser
 */
@WebServlet("/EditForm")
public class ViewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ViewUser() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String path = "C:\\uploaded\\"+"images_"+email+".jpg";
		 try {	File file = new File(path);
		 byte[] fileContent;
		 try (FileInputStream inputStream = new FileInputStream(file);
		     ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
		     byte[] buffer = new byte[1024];
		     int bytesRead;
		     while ((bytesRead = inputStream.read(buffer)) != -1) {
		         outputStream.write(buffer, 0, bytesRead);
		     }
		     fileContent = outputStream.toByteArray();
		 }

		 // Encode the byte[] array to a Base64-encoded string
		 String base64Content = Base64.getEncoder().encodeToString(fileContent);

		 // Pass the Base64-encoded string to the JSP page as a request attribute
		 request.setAttribute("imageContent", base64Content);
	         
		 
		 		UserDetails u = UserDao.getRecordByemail(email);
	             
	            request.setAttribute("u", u);
	             
	            
	            RequestDispatcher requestDispatcher = request.getRequestDispatcher("EditForm.jsp");
	            requestDispatcher.forward(request, response);              
	        } catch (Exception ex) {
	            throw new ServletException(ex);
	        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
