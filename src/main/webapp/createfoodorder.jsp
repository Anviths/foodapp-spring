<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food product</title>
</head>
<body>
<c:set var="staff" value="${staff }" scope="session" />
<c:out value="${sessionScope.staff.getName()}" />
	<h1>food product</h1>
	<form:form action="savefoodOrder" modelAttribute="foodOrder">
   Name : <form:input path="customerName" />
		<br>
		<br>
   Email : <form:input path="customerEmail" />
		<br>
		<br>
   phone : <form:input path="customerNumber" />
		<br>
		<br>
  
    Order status:
		<form:radiobutton path="status" value="PENDING" label="PENDING" />
		<form:radiobutton path="status" value="ONTHEWAY" label="ONTHEWAY" />
		<form:radiobutton path="status" value="DELIVERD" label="DELIVERD" />
		<form:radiobutton path="status" value="PREPARING" label="PREPARING" />
		<br>
		<br>
   
		<table border="2px solid red">
			<tr>
				<th>ProductId</th>
				<th>ProductName</th>
				<th>ProductType</th>
				<th>ProductPrice</th>
				<th>Product Availability</th>
				<th>about</th>
				<th>quantity</th>
				<th>select</th>

			</tr>

			<c:forEach var="foodProduct" items="${menu.getFoodProducts() }">
				<tr>
					<td>${foodProduct.getId()}</td>
					<td>${foodProduct.getName()}</td>
					<td>${foodProduct.getType()}</td>
					<td>${foodProduct.getPrice()}</td>
					<td>${foodProduct.getAvailabilty()}</td>
					<td>${foodProduct.getAbout()}</td>
					<td><input type="number"
						name="quantity_${foodProduct.getId()}"></td>
					<td><input type="checkbox" name="order_items"
						value="${foodProduct.getId()}"></td>

					<td></td>
				</tr>
			</c:forEach>


		</table>

		<form:button>Create</form:button>
		<br>
		<br>
	</form:form>

</body>
</html>