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
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <style >
  .section {
	position: relative;
	height: 100vh;
}

.section .section-center {
	position: absolute;
	top: 50%;
	left: 0;
	right: 0;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
}

#booking {
	font-family: 'Montserrat', sans-serif;
	background-image: url('../img/background.jpg');
	background-size: cover;
	background-position: center;
}

#booking::before {
	content: '';
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
	background: rgba(47, 103, 177, 0.6);
}

.booking-form {
	background-color: #fff;
	padding: 50px 20px;
	-webkit-box-shadow: 0px 5px 20px -5px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 5px 20px -5px rgba(0, 0, 0, 0.3);
	border-radius: 4px;
}

.booking-form .form-group {
	position: relative;
	margin-bottom: 30px;
}

.booking-form .form-control {
	background-color: #ebecee;
	border-radius: 4px;
	border: none;
	height: 40px;
	-webkit-box-shadow: none;
	box-shadow: none;
	color: #3e485c;
	font-size: 14px;
}

.booking-form .form-control::-webkit-input-placeholder {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form .form-control:-ms-input-placeholder {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form .form-control::placeholder {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form input[type="date"].form-control:invalid {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form select.form-control {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.booking-form select.form-control+.select-arrow {
	position: absolute;
	right: 0px;
	bottom: 4px;
	width: 32px;
	line-height: 32px;
	height: 32px;
	text-align: center;
	pointer-events: none;
	color: rgba(62, 72, 92, 0.3);
	font-size: 14px;
}

.booking-form select.form-control+.select-arrow:after {
	content: '\279C';
	display: block;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}

.booking-form .form-label {
	display: inline-block;
	color: #3e485c;
	font-weight: 700;
	margin-bottom: 6px;
	margin-left: 7px;
}

.booking-form .submit-btn {
	display: inline-block;
	color: #fff;
	background-color: #1e62d8;
	font-weight: 700;
	padding: 14px 30px;
	border-radius: 4px;
	border: none;
	-webkit-transition: 0.2s all;
	transition: 0.2s all;
}

.booking-form .submit-btn:hover,
.booking-form .submit-btn:focus {
	opacity: 0.9;
}

.booking-cta {
	margin-top: 80px;
	margin-bottom: 30px;
}

.booking-cta h1 {
	font-size: 52px;
	text-transform: uppercase;
	color: #fff;
	font-weight: 700;
}

.booking-cta p {
	font-size: 16px;
	color: rgba(255, 255, 255, 0.8);
}
  
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark p-1">
<div class="container-fluid">
  <a class="navbar-brand" href="/patient/profile"><img class="rounded-circle" alt="" src="/patientimage/satoru-gojo-1.jpg" height="40"></a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a href="#"><img alt="" src="/img/white-search-icon-button-png-img-116400840301syqkherpj.png" height="20"></a>

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
        <a class="nav-link mx-2 btn btn-primary" href="/new/appointment">Set Appointment</a>
      </li>
    
      
    </ul>
  </div>
</div>
</nav>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-md-push-5">
						<div class="booking-cta">
							<h1>Make your Appoitment</h1>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi facere, soluta magnam consectetur molestias itaque
								ad sint fugit architecto incidunt iste culpa perspiciatis possimus voluptates aliquid consequuntur cumque quasi.
								Perspiciatis.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-md-pull-7">
						<div class="booking-form">
							<form:form action="/new/appointment" method="post" modelAttribute="newApt">
								<div class="form-group">
									<span class="form-label">Set Date</span>
									<form:errors class="text-danger" path="date"/>
									<form:input path="date" class="form-control" type="date" placeholder="Enter Date of appointment"/>
								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
										<span class="form-label">Select Service</span>
										<form:errors class="text-danger" path="activity"/>
											<form:input path="activity" class="form-control" type="text" placeholder="Select Service"/>
										</div>
									</div>
									
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Start Time</span>
											<form:errors class="text-danger" path="startTime"/>
											<form:input path="startTime" class="form-control" type="time" placeholder="Enter start time"/>
										</div>
									</div>
					
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">End Time</span>
											<form:errors class="text-danger" path="endTime"/>
											<form:input path="endTime" class="form-control" type="time" placeholder="Enter end time"/>
										</div>
									</div>
									
								</div>
								<div class="row">
									<div class="col-sm-8">
										<div class="form-group">
											<span class="form-label">Select Doctor</span>
											<select class="form-control" name="doctor_id" id="doctor_id">
											<c:forEach items="${doctors}" var="doctor" >
												<option value="${doctor.id}">
												
												<c:out value="Dr ${doctor.firstName} ${doctor.lastName}"></c:out>
												</option>
											</c:forEach>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
									<div class="form-btn">
									<input type="submit" value="Create" class="btn btn-success"/>
									
								</div>
								
									
								</div>
								</form:form>
								</div>
							
					</div>
					</div>
					</div>
				</div>
			</div>
		

</body>

</html>