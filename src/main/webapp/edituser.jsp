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
  <form:form action="updateuser" modelAttribute="user">
   Id : <form:input path="id" readonly="true"/> <br><br>
   Name : <form:input path="name" /> <br><br>
   Email : <form:input path="email"/> <br><br>
   phone : <form:input path="phoneNumber"/> <br><br>
   Password : <form:input path="password"/> <br><br>
   Role : 
  <form:radiobutton path="role" value="BRANCHMANAGER" label="BRANCHMANGER"/>
  <form:radiobutton path="role" value="CUSTOMER" label="CUSTOMER"/>
  <form:radiobutton path="role" value="STAFF" label="STAFF"/> <br><br>
    <form:button>edit</form:button> <br><br>
    
  
  </form:form>
</body>
</html>