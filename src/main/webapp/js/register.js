function validateForm() {
  var email = document.forms["register-form"]["email"].value;
  var password = document.forms["register-form"]["password"].value;
  var name = document.forms["register-form"]["name"].value;
  var contact = document.forms["register-form"]["contact"].value;
  var role = document.forms["register-form"]["role"].value;
  var image = document.forms["register-form"]["image"].value;
  
	
	  
  if (name == "" || name == null) {
   swal("Sorry", "ENTER name","error");
    return false;
  }
  if (email == "" || email == null) {
   swal("Sorry", "ENTER Email","error");
    return false;
  }
  if (password == "" || password == null) {
   swal("Sorry", "ENTER Password","error");
    return false;
  }
  if (password.length<8) {
   swal("Sorry", "Password can't be less than 8 character","error");
    return false;
  }
  
  if (contact == "" || contact == null) {
   swal("Sorry", "ENTER contact","error");
    return false;
  }
  if (contact.length<10 || contact.length>13) {
   swal("Sorry", "Invalid Length of Contact ","error");
    return false;
  }
  
  if (role == "" || role == null) {
   swal("Sorry", "ENTER role","error");
    return false;
  }
  /*if (role != "Teacher" || role != "Student") {
   swal("Sorry", "ENTER Correct role","error");
    return false;
  }*/
  
  if (image == "" || image == null) {
   swal("Sorry", "Insert image","error");
    return false;
  }

   

}