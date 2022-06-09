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

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<div class="container">
                <form:form action="/login/doctors" method="POST" modelAttribute="newLogin" class="p-4 bg-dark text-light">
                    <h2 class="text-success">Login</h2>
                    <form:label path="email" class="py-2">Email:</form:label>
                    <form:errors path="email" class="text-danger"/>
                    <form:input path="email" type="email" class="form-control"/>
                    <form:label path="password" class="py-2">Password:</form:label>
                    <form:errors path="password" class="text-danger"/>
                    <form:password path="password" class="form-control"/>
                    <p class="pt-3">
                        <input type="submit" value="Login" class="btn btn-success">
                    </p>
                
                </form:form>
                
                <a href="/register/doctor/page">Register</a>
                </div>

</body>
</html>