const openDialogButton = document.getElementById('open-dialog-button');
const changePasswordDialog = document.getElementById('change-password-dialog');
const form = document.getElementById('change-password-form');

openDialogButton.addEventListener('click', () => {
  changePasswordDialog.classList.add('show');
});

form.addEventListener('submit', (event) => {
  event.preventDefault();
  const currentPassword = document.getElementById('current-password').value;
  const newPassword = document.getElementById('new-password').value;
  const confirmPassword = document.getElementById('confirm-password').value;

  if (newPassword !== confirmPassword) {
    alert('New Password and Confirm Password do not match.');
  } else {
    // Code to send request to server to change password goes here.
    alert('Password changed successfully!');
    changePasswordDialog.classList.remove('show');
  }
});








/* var password = document.getElementById("password")
, confirm_password = document.getElementById("confirmPassword");

document.getElementById('signupLogo').src = "https://s3-us-west-2.amazonaws.com/shipsy-public-assets/shipsy/SHIPSY_LOGO_BIRD_BLUE.png";
enableSubmitButton();

function validatePassword() {
if(password.value != confirm_password.value) {
  confirm_password.setCustomValidity("Passwords Don't Match");
  return false;
} else {
  confirm_password.setCustomValidity('');
  return true;
}
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

function enableSubmitButton() {
document.getElementById('submitButton').disabled = false;
document.getElementById('loader').style.display = 'none';
}

function disableSubmitButton() {
document.getElementById('submitButton').disabled = true;
document.getElementById('loader').style.display = 'unset';
}

function validateForm() {
var form = document.getElementById('signupForm');

for(var i=0; i < form.elements.length; i++){
    if(form.elements[i].value === '' && form.elements[i].hasAttribute('required')){
      console.log('There are some required fields!');
      return false;
    }
  }

if (!validatePassword()) {
  return false;
}

onSignup();
}

function onSignup() {
var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
  
  disableSubmitButton();
  
  if (this.readyState == 4 && this.status == 200) {
    enableSubmitButton();
  }
  else {
    console.log('AJAX call failed!');
    setTimeout(function(){
      enableSubmitButton();
    }, 1000);
  }
  
};

xhttp.open("GET", "ajax_info.txt", true);
xhttp.send();
}  */