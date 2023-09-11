<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/foodorder.css">
<title>User</title>
</head>
<body>
  
  
<table class="branch-table">
  <tr> 
  <th>Id</th>
  <th>Name</th>
  <th>Email</th>
  <th>Phone Number</th>
  <th>Role</th>
  <th>edit</th>
  <th>delete</th>
 
  </tr>
  
    <c:if test="${not empty errorMessage}">
        <p>${errorMessage}</p>
    </c:if>
  <c:forEach var="user" items="${users }">
    	 <tr>
    	  <td>${user.getId() }</td>
    	  <td>${user.getName() }</td>
    	  <td>${user.getEmail() }</td>
    	  <td>${user.getPhoneNumber() }</td>
    	  <td>${user.getRole() }</td>
    	  <td><a href="edituser?id=${user.getId() }">Edit</a></td>
    	  <td><a href="deleteuser?id=${user.getId() }">Delete</a></td>
    	  
    	  </tr> 
     </c:forEach>
    	  
      </table> 
    
</body>
</html>