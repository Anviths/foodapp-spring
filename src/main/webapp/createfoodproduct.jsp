<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food product</title>
</head>
<body>
    	  
 <h1>food product</h1>
  <form:form action="saveproduct" modelAttribute="foodProduct">
  
   Product name<form:input path="name"/><br><br>
   Product price<form:input path="price"/><br><br>
    Product Availabilty 
  <form:radiobutton path="availabilty" value="AVAILABILE" label="AVAILABILE"/>
  <form:radiobutton path="availabilty" value="NOTAVAILABLE" label="NOTAVAILABLE"/><br><br>
    Product Type
  <form:radiobutton path="type" value="VEG" label="VEG"/>
  <form:radiobutton path="type" value="NONVEG" label="NONVEG"/><br><br>
   Product about :<form:textarea path="about"/><br><br>
   Menu: <form:select path="menu.id">
        <form:options items="${menu}" itemValue="id" itemLabel="id" />
    </form:select><br><br>
  <form:button>Create</form:button> <br><br>
  </form:form>

</body>
</html>