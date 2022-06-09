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
<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/main.js"></script>
<title>Doctor Register</title>
</head>
<body>

		
	
<div class="container">
                <form:form action="/registor/doctor" method="post" modelAttribute="newDoctor" >
                    <h2 class="text-primary">Register</h2>
                    
                    <form:label path="firstName" class="py-2">FirstName:</form:label>
                    <form:errors path="firstName" class="text-danger"/>
                    <form:input path="firstName" type="text" class="form-control"/>
                    
                    <form:label path="lastName" class="py-2">LastName:</form:label>
                    <form:errors path="lastName" class="text-danger"/>
                    <form:input path="lastName" type="text" class="form-control"/>
                    
                    
                    
                    <form:label path="userName" class="py-2">User Name:</form:label>
                    <form:errors path="userName" class="text-danger"/>
                    <form:input path="userName" type="text" class="form-control"/>
                    
                    <form:label path="email" class="py-2">Email:</form:label>
                    <form:errors path="email" class="text-danger"/>
                    <form:input path="email" type="email" class="form-control"/>
                    
                    <form:label path="password" class="py-2">Password:</form:label>
                    <form:errors path="password" class="text-danger"/>
                    <form:password path="password" class="form-control"/>
                    
                    <form:label path="confirm" class="py-2">Confirm Password:</form:label>
                    <form:errors path="confirm" class="text-danger"/>
                    <form:password path="confirm" class="form-control"/>
                    
                     <form:label path="service" class="py-2">Service:</form:label>
                    <form:errors path="service" class="text-danger"/>
                    <form:password path="service" class="form-control"/>
                    
                    
                    
                    <p class="pt-3">
                        <input type="submit" value="Register" class="btn btn-primary">
                    </p>
                </form:form>
                
                <a href="/login/doctor">Login</a>
               </div>
</body>
</html>