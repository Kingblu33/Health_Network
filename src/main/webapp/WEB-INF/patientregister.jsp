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
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Patient Register</title>
</head>
<body>

<section class="vh-100 bg-image"
  style="background-image: url('img/Medical-Wallpapers-HD-Free-download.jpg');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">

<h2 class="text-uppercase text-center mb-5">Create an account</h2>
 <form:form action="/patient/register" method="post" modelAttribute="newpatient" style="width: 23rem;">
                  
 
                    <div class="form-outline mb-4">
                   
                    <form:errors path="firstName" class="text-danger"/>
                    <form:input path="firstName" type="text" class="form-control" placeholder="First Name"/>
                    </div>
                    
                    <div class="form-outline mb-4">
                   
                    <form:errors path="lastName" class="text-danger"/>
                    <form:input path="lastName" type="text" class="form-control" placeholder="Last Name"/>
                    
                    </div>
                    
                    
                    <div class="form-outline mb-4">
                   
                    <form:errors path="userName" class="text-danger"/>
                    <form:input path="userName" type="text" class="form-control" placeholder="UserName"/>
                    </div>
                    
                    <div class="form-outline mb-4">
                    <form:errors path="email" class="text-danger"/>
                    <form:input path="email" type="email" class="form-control" placeholder="Email"/>
                    </div>
                      
                      
                    <div class="form-outline mb-4">  
                    
                    <form:errors path="age" class="text-danger"/>
                    <form:input path="age" type="number" class="form-control" placeholder="Age"/>
                    
                    </div>
                    
                    <div class="form-outline mb-4">
                    
                    <form:errors path="gender" class="text-danger"/>
                    <form:input path="gender"  class="form-control" placeholder="Gender"/>
                    </div>
                    
                   
                    <div class="form-outline mb-4">
                  
                    <form:errors path="password" class="text-danger"/>
                    <form:password path="password" class="form-control" placeholder="Password"/>
                    </div>
                    
                    <div class="form-outline mb-4">
                   
                    <form:errors path="confirm" class="text-danger"/>
                    <form:password path="confirm" class="form-control" placeholder="Confirm Password"/>
                    </div>
                    
                    <div class="form-outline mb-4">
                     
                    <form:errors path="location" class="text-danger"/>
                    <form:input path="location"  class="form-control" placeholder="Location"/>
                     </div>
  					<div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    I agree all statements in <a href="#!" class="text-body">Terms of service</a>
                  </label>
                </div>
                   <div class="d-flex justify-content-center">
                  <input type="submit"  class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" value="Register" >
                </div>
                

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="/login/patient"
                    class="fw-bold text-body">Login here</a></p>
                </form:form>
                
                
            </div>

        </div>
          </div>
        </div>
      </div>
    </div>
  
</section>