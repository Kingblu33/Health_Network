<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   
  
  <style>
  
  .container {
  padding: 80px 120px;
}
footer {

  color: #f5f5f5;
  padding: 32px;
}

footer a {
  color: #f5f5f5;
}

footer a:hover {
  color: #777;
  text-decoration: none;
}
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark p-3">
<div class="container-fluid">
  <a class="navbar-brand" href="/patient/profile"><img class="rounded-circle" alt="" src="/patientimage/satoru-gojo-1.jpg" height="60"></a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class=" collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ms-auto ">
      <li class="nav-item">
        <a class="nav-link mx-2 active" aria-current="page" href="/patient/dashboard">Home</a>
      </li>
      
     
      <li class="nav-item dropdown">
        <a class="nav-link mx-2 dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Company
        </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <li><a class="dropdown-item" href="#">Reviews</a></li>
          <li><a class="dropdown-item" href="#">About Us</a></li>
          <li><a class="dropdown-item" href="#">Contact us</a></li>
        </ul>
        <li class="nav-item">
        <a class="nav-link mx-2 btn btn-primary" href="#">Set Appointment</a>
      </li>
    
      
    </ul>
  </div>
</div>
</nav>
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/wallpaper-mania.com_High_resolution_wallpaper_background_ID_77701450995.jpg" alt="Los Angeles" class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>Career Services</h3>
        <p>See how you can start your career with health networks today</p>
        <a href="/careers" class="btn btn-success">See Jobs</a>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/thumb-1920-203679.jpg" alt="Chicago" class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>Set Appointment</h3>
        <p>See what services we offer book an appointment today</p>
        <a href="/appointments" class="btn btn-success">See Jobs</a>
        
      </div> 
    </div>
    <div class="carousel-item">
      <img src="/img/medical anatomy.webp" alt="New York" class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>Services</h3>
        <p>See What Services We cover</p>
       <a href="/appointments" class="btn btn-success">See Jobs</a>
      </div>  
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
<hr>
<div class="container-fluid text-center">
  <h3>Medical Team</h3>
  <p><em>We care about your safety</em></p>
  <p>asdasdasdiashdasdiasdiashaifasfiashfaskfaskfasnfkasnfkasfaksfakfaskf.</p>
</div>
<div class="container-fluid d-flex justify-content-between">
<div class="card alignt-center " style="width: 18rem;">
  <img src="/images/Doctor-placeholder-male.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
<div class="card alignt-center " style="width: 18rem;">
  <img src="/images/Doctor-placeholder-male.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
<div class="card alignt-center " style="width: 18rem;">
  <img src="/images/Doctor-placeholder-male.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
<div class="card alignt-center " style="width: 18rem;">
  <img src="/images/Doctor-placeholder-male.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>


</div>


<hr>

    
<div class="container-fluid  ">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We love our fans!</em></p>
  <div class="row test"> 
    <div class="col-md-6">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d48480.38
    069470409!2d-73.70356994331298!3d40.58523021240131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c26ff6430184c9%3A0xd3936da1e33b9063!2sLong%20Beach%2C%20NY!5e0!3m2!1sen!2sus!4v1651114657865!5m2!1sen!2sus" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
     
    </div>
    <div class="col-md-5 ">
      <div class="row">
      
        <div class="col-sm-6 form-group">
          <input class="form-control mb-5" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right btn-success mt-3 mb-3" type="submit">Send</button>
           <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker "></span>LongBeach, US</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email:skdahdaihs@mail.com</p>
        </div>
      </div>
    </div>
  </div>
</div>
<hr>
<!-- Remove the container if you want to extend the Footer to full width. -->
<div class="container-fluid my-5">

  <footer class="text-center text-lg-start" ">
    <div class="container d-flex justify-content-center py-5">
      <button type="button" class="btn  btn-lg btn-floating " >
       <img alt="" src="/img/facebook.png" height="30">
      </button>
      
     <button type="button" class="btn  btn-lg btn-floating " >
       <img alt="" src="/img/png-transparent-youtube-logo-youtube-logo-computer-icons-subscribe-angle-rectangle-airplane.png" height="30">
      </button>
      <button type="button" class="btn  btn-lg btn-floating " >
       <img alt="" src="/img/facebook.png" height="20">
      </button>
      <button type="button" class="btn  btn-lg btn-floating " >
       <img alt="" src="/img/facebook.png" height="30">
      </button>
    </div>

    <!-- Copyright -->
    <div class="text-center text-white p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2020 Copyright:
      <a class="text-white" href="/patient/dashboard">www.healthcarenetworks.com</a>
    </div>
    <!-- Copyright -->
  </footer>
  
</div>


</body>
</html>