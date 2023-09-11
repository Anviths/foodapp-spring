<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
<c:set var="staff" value="${staff }" scope="session" />
<c:out value="${sessionScope.staff.getName()}" />
   <h1>Edit form</h1>
  <form:form action="updatefoodOrder" modelAttribute="foodOrder">
  
    Id : <form:input path="id" readonly="true"/>
		<br>
		<br>
    Name : <form:input path="customerName" />
		<br>
		<br>
   Email : <form:input path="customerEmail" />
		<br>
		<br>
   phone : <form:input path="customerNumber" />
		<br>
		<br>
  
   Bill amount : <form:input path="totalPrice" readonly="true"/>
		<br>
		<br>
  
   staff id : <form:input path="user.id" readonly="true"/>
		<br>
		<br>
    Order status
  <form:radiobutton path="status" value="PENDING" label="PENDING" />
		<form:radiobutton path="status" value="ONTHEWAY" label="ONTHEWAY" />
		<form:radiobutton path="status" value="DELIVERD" label="DELIVERD" />
		<form:radiobutton path="status" value="PREPARING" label="PREPARING" />
		<br>
		<br>
   
    <form:button>edit</form:button>
  </form:form>
</body>
</html>