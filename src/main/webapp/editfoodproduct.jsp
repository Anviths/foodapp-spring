<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>food product</h1>
  <form:form action="updatemenu" modelAttribute="foodproduct">
  
   Product ID<form:input path="id" readonly="true"/><br><br>
   Product name<form:input path="name"/><br><br>
   Product price<form:input path="price"/><br><br>
    Product Availabilty 
  <form:radiobutton path="availabilty" value="AVAILABILE" label="AVAILABILE"/>
  <form:radiobutton path="availabilty" value="NOTAVAILABLE" label="NOTAVAILABLE"/><br><br>
    Product 
  <form:radiobutton path="type" value="VEG" label="VEG"/>
  <form:radiobutton path="type" value="NONVEG" label="NONVEG"/><br><br>
   Product about :<form:textarea path="about"/><br><br>
  menu ID<form:input path="menu.id" readonly="true"/><br><br>
  <form:button>Edit</form:button> <br><br>
  </form:form>
</body>
</html>