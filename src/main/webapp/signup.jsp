<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
   <h1>Register form</h1>
  <form:form action="saveuser" modelAttribute="user">
   Name : <form:input path="name" /> <br><br>
   Email : <form:input path="email"/> <br><br>
   phone : <form:input path="phoneNumber"/> <br><br>
   Password : <form:password path="password"/> <br><br>
   Role : 
  <form:radiobutton path="role" value="BRANCHMANAGER" label="BRANCHMANGER"/>
  <form:radiobutton path="role" value="CUSTOMER" label="CUSTOMER"/>
  <form:radiobutton path="role" value="STAFF" label="STAFF"/> <br><br>
    <form:button>SignUp</form:button> <br><br>
    
  
  </form:form>
</body>
</html>