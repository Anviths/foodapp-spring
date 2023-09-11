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
  <form:form action="savebranch" modelAttribute="branch">
  Branch Name : <form:input path="name" /> <br><br>
  Branch Email : <form:input path="email"/> <br><br>
  Branch phone : <form:input path="phoneNumber"/> <br><br>
  Branch  address : <form:input path="address"/> <br><br>
  User: <form:select path="user.id">
        <form:options items="${branchManagers}" itemValue="id" itemLabel="name" />
    </form:select><br><br>
 
    <form:button>Create branch</form:button> <br><br>
    
  
  </form:form>
</body>
</html>