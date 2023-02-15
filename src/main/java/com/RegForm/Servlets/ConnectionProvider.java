package com.RegForm.Servlets;

import java.sql.*;

public class ConnectionProvider {
	private static Connection con=null;
	
	static{  
		try{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		con=DriverManager.getConnection("jdbc:Driver","username","password");  
		
		}catch(Exception e){
			System.out.print(e);
		}  
		}  
		  
		public static Connection getCon(){  
		    return con;  
		}  
}
