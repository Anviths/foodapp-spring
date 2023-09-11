<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
</head>
<body>
  
  <h1>Menu ID : ${menu.getId() }</h1>
<table border="2px solid red">
  <tr> 
  <th>ProductId</th>
  <th>ProductName</th>
  <th>ProductType</th>
  <th>ProductPrice</th>
  <th>Product Availability</th>
  <th>About</th>
  <th>edit</th>
  <th>delete</th>
  </tr>
   
   <c:forEach var="foodProduct" items="${menu.getFoodProducts() }">
   
    	  <td>${foodProduct.getId()}</td>
        <td>${foodProduct.getName()}</td>
        <td>${foodProduct.getType()}</td>
        <td>${foodProduct.getPrice()}</td>
         <td>${foodProduct.getAvailabilty()}</td>
        <td>${foodProduct.getAbout()}</td>
        <td><a href="editproduct?id=${foodProduct.getId() }">Edit</a></td>
    	  <td><a href="deletemenu?id=${foodProduct.getId() }">Delete</a></td>
    </tr> 
    </c:forEach>
    	  
    
  </table>
    
     <a class="blue-button" href="creatproduct">ADD</a> <br>
      <a class="blue-button" href="branchmanager.jsp">ADD</a>
    
</body>
</html>