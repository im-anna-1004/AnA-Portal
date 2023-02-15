
function validateForm() {
  var x = document.forms["login-form"]["email"].value;
  var y = document.forms["login-form"]["password"].value;
  var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  
  if (x == "" || x == null) {
   swal("Sorry", "ENTER Username","error");
    return false;
  }
  if (y == "" || y == null) {
   swal("Sorry", "ENTER Password","error");
    return false;
}
  if (!x.value.match(validRegex)) {

    swal("Sorry", "Invalid email address!","error");

    document.form1.text1.focus();

    return false;

  } 
}