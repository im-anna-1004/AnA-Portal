<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
<link rel="icon" type="image/x-icon" href="images/Logo.ico">
 <link rel="stylesheet" href="css/common.css">
    <!-- <link rel="stylesheet"
    href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    
    <style>
    .home{
	position: relative;
	height: 100vh;
	width: 100%;
	background-image: url('images/bg.jpg');
	background-size: cover;
	background-position: center;
	align-items: center;
	justify-content: flex-start;
}
    </style>
  
</head>
<body>
    <header class="sticky">
        <a href="index.jsp" class="logo">A<span>nA</span>.</a>
        <ul class="navlist">
            <li><a href="#home" class="active">Home</a></li>
            <li><a href="ViewUser.jsp">Users</a></li>
            <li><a href="#about" >About us</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#contact">Contact</a></li>
            <li style="float:right"><a href="Profile">Profile</a></li>
            <li><a href="logout" class="active">Logout</a></li>
        </ul>
        <div class="bx bx-menu" id="menu-icon">

            
        </div>
    </header>

    <section class="home" id="home">
            <div class="home-text">
            <div class="slide">
                <span class="one">Hello</span>
                <span class="two">We're</span>
            </div>
            <h1>Akshay AND Anand</h1>
            <h3>Aspiring<span> Web Developers.</span></h3>
            <p> We are final year students Of B.Tech Computer Science <br> and doing our internship at Componence Portal Services.</p>
            <div class="button">
                <a href="#" class="btn">Say Hello</a>
                
                <a href="#" class="btn2">
                <i class='bx bx-play'></i>Watch Our Work</a>
            </div>
        </div>
    </section>

    <section class="about" id="about">
        <div class="about-img">
            <img src="images/Logo.png">
        </div>
        <div class="about-text">
            <h2>About<span> Us</span></h2>
            <h4>Aspiring Web Developers!</h4>
            <p>We were born in India, but grew up with the world around us. We are an enthusiastic 
                fresher with strong interpersonal skills and high level of commitment to our duties. 
                Moreover, with this, We're looking for a challenging role in an organisation where we 
                can prove ourselves and make the most of our experience and education to achieve organisational
                goals as well our personal growth.</p>
                <a href="#" class="btn">More About us</a>
        </div>
    </section>

    <section class="services" id="services">
        <div class="main-text">
            <p>We are working on</p>
            <h2><span>Our</span> Services</h2>
        </div>    
        <div class="services-content">
            <div class="box">
                <div class="s-icons">
                    <i class='bx bx-mobile-alt'></i>
                </div>
                <h3>Web Development</h3>
                <p>We are currently designing our demo project for Componence Portal Services as project trainee. Apart from demo project we have done various academic projects. </p>
                <a href="#" class="read">Read More</a>
            </div>

            <div class="box">
                <div class="s-icons">
                    <i class='bx bxs-cloud'></i>
                </div>
                <h3>Cloud Computing</h3>
                <p>We are experts in providing cloud services in AWS and Google Cloud. Certified in Architecture in compute engine.</p>
                <a href="#" class="read">Read More</a>
            </div>

            <div class="box">
                <div class="s-icons">
                    <i class='bx bx-code'></i>
                </div>
                <h3>Java / C++ Developer</h3>
                <p>Being experts in programming and development field, we provide several services as java developers (Advance Java) and C++ development.</p>
                <a href="#" class="read">Read More</a>
            </div>
        </div>
    </section>

    <section class="contact" id="contact">
        <div class="contact-text">
            <h2>Contact<span> Us</span></h2>
            <h4>This site is for ERP management</h4>
            <p>We're open for work and ready to serve our services in relevant fields.</p> 
            <div class="list">
            <ul>
            	<li><a href="#"></a>xxxxxxxxxx</li>
                <li><a href="#"></a>xxxxxxxxxx</li>
                <li><a href="#"></a>vijay@gmail.com</li>
                <li><a href="#"></a>anand@gmail.com</li></ul>
                
            </div>
            <div class="contact-icons">
                <a href="https://www.linkedin.com/in/akshay-vijayvergiya-a19361200/"><i class='bx bxl-linkedin-square' ></i></a>
                <a href="https://www.instagram.com/the_akshu_/"><i class='bx bxl-instagram' ></i></a>
                <a href=""><i class='bx bxl-twitter' ></i></a>
            </div>
        </div>

        <div class="contact-form">
            <form action="">
                <input type="name" placeholder="Your Name" required>
                <input type="email" placeholder="Your Email" required>
                <input type="text" placeholder="Your Mobile Number" required>
                <textarea name="" id="" cols="30" rows="10" placeholder="How can we help you?" required></textarea>
                <input type="submit" value="Send Message" class="submit" required>
            </form>
        </div>
    </section>


    <script src="js/script.js"></script>
</body>
</html>