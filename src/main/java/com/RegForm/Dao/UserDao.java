 package com.RegForm.Dao;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;


 
public class UserDao {
	
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


	public static List <UserDetails> ViewRecords(){  
		  List<UserDetails> list=new ArrayList<UserDetails>(); 
		try{  
			String sql ="SELECT * FROM reg where role='Teacher';";
			Connection con = getCon(); 
		
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println(ps);  
			ResultSet rs = ps.executeQuery();
			  while(rs.next()){ 
				  	UserDetails u = new UserDetails();
				  	u.setUname(rs.getString("name"));  
				  	u.setUemail(rs.getString("email"));
				  	u.setUphn(rs.getString("contact"));
				  	u.setUrole(rs.getString("role"));
				  
		            list.add(u);
		       
		       }  
			  
		}catch(Exception e){}  
		return list;      
	}  
	public static List <UserDetails> ViewRecords1(){  
		  List<UserDetails> list=new ArrayList<UserDetails>(); 
		try{  
			String sql ="SELECT * FROM reg where role='Student'";
			Connection con = getCon(); 
		
			PreparedStatement ps = con.prepareStatement(sql);
			//System.out.println(ps);  
			ResultSet rs = ps.executeQuery();
			  while(rs.next()){ 
				  	UserDetails u = new UserDetails();
				  	u.setUname(rs.getString("name"));  
				  	u.setUemail(rs.getString("email"));
				  	u.setUphn(rs.getString("contact"));
				  	u.setUrole(rs.getString("role"));
				  	
		            list.add(u);
		       
		       }  
		}catch(Exception e){}  
		return list;      
	}  
	 
	public static UserDetails getRecordByemail(String email){  
	    UserDetails u = new UserDetails(); 
	    
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement("select * from reg where email=?");  
	       	ps.setString(1,email);  
	    	//System.out.println(ps);  
	        ResultSet rs=ps.executeQuery();  
	        if(rs.next()){  
	            u=new UserDetails();  
	            u.setUname(rs.getString("name"));  
	            u.setUemail(rs.getString("email")); 
	            u.setUphn(rs.getString("contact"));
	            u.setUpswd(rs.getString("password"));
	            
	        	}  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
	
}
