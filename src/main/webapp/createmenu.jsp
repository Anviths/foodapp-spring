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
   <h1>create menu</h1>
  <form:form action="savemenu" modelAttribute="menu">
  
  BranchManager: <form:select path="user.id">
        <form:options items="${branchManagers}" itemValue="id" itemLabel="name" />
    </form:select><br><br>
 
    <form:button>Create menu</form:button> <br><br>
    
  
  </form:form>
</body>
</html>