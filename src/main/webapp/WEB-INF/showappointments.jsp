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
<title>appoinments</title>
</head>
<body>

<h1><c:out value="${patient.userName}"></c:out></h1>
<table class="table">
<thead>
    <tr>
      <td>Patient</td>
      <td>Doctor</td>
      <td>Date</td>
      <td>Start Time</td>
      <td>End Time</td>
    </tr>
  </thead>



<c:forEach items="${patient.appointments}" var="pat">
<tr>
      <td><c:out value="${pat.patient.userName}"></c:out></td>
      <td><c:out value="${pat.doctor.userName}"></c:out></td>
      <td><c:out value="${pat.date}"></c:out></td>
      <td><c:out value="${pat.startTime}"></c:out></td>
      <td><c:out value="${pat.endTime}"></c:out></td>
     
    </tr>
</c:forEach>
</table>
</body>
</html>