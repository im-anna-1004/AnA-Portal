package com.RegForm.Dao;



public class UserDetails {
	//Setter and Getter Function
		private String uname,uemail,urole,uphn,upswd;  
		private String Image;
				
		public UserDetails(String uname,String uemail, String uphn, String Image) {
			super();
			this.uname = uname;
			this.uemail = uemail;
			this.uphn = uphn;
			this.Image = Image;
		}

		public UserDetails() {
			super();
		}

		public String getUname() {  
		    return uname;  
		}  
		  
		public void setUname(String uname) {  
		    this.uname = uname;  
		}  
		  
		public String getUemail() {  
		    return uemail;  
		}  
		  
		public void setUemail(String uemail) {  
		    this.uemail = uemail;  
		}  
		  
		public String getUphn(){  
		    return uphn;  
		}  
		  
		public void setUphn(String uphn) {  
		    this.uphn = uphn;  
		}
	
		public String getUpswd() {  
		    return upswd;  
		}  
		  
		public void setUpswd(String upswd) {  
		    this.upswd = upswd;  
		}
		public String getUrole() {  
		    return urole;  
		}  
		  
		public void setUrole(String urole) {  
		    this.urole = urole;  
		}  
		public String getImage() {
	        return Image;
	    }
	 
	    public void setImage(String Image) {
	        this.Image = Image;
	    }
		
	}