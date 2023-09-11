<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
</head>
<body>
<c:set var="staff" value="${staff }" scope="session" />
<c:out value="${sessionScope.staff.getName()}" />
	<div class="navbar"></div>





	<div class="wrapper">
		<div class="inner">
			<form action="update-food-order" class="food-order-form">
				<h3>Food Order</h3>



				<table class="branch-table" border="2px" solid black>
					<tr>
						<th>ProductId</th>
						<th>CustomerName</th>
						<th>CustomerNumber</th>
						<th>Order time</th>
						<th>Delivery time</th>
						<th>Order Status</th>
						<th>quantity</th>
						<th>Total Price</th>
						<th>orderCreateBy</th>
						<th>edit</th>
						<th>delete</th>
					</tr>

					<c:forEach var="foodOrder" items="${foodOrders}">

						<tr>
							<td>${foodOrder.getId() }</td>
							<td>${foodOrder.getCustomerName()}</td>
							<td>${foodOrder.getCustomerNumber()}</td>
							<td>${foodOrder.getOrderCreatedTime()}</td>
							<td>${foodOrder.getOrderDeliveryTime()}</td>
							<td>${foodOrder.getStatus()}</td>
							<td>${foodOrder.getItems().size()}</td>
							<td>${foodOrder.getTotalPrice()}</td>
							<td>${foodOrder.getUser().getName()}</td>
							<td><a href="editfoodOrder?id=${foodOrder.getId()}">Edit</a></td>
							<td><a href="deletefoodOrder?id=${foodOrder.getId() }">Delete</a></td>
						</tr>

					</c:forEach>

				</table>

				<a class="blue-button" href="createfoodorder">ADD</a> <a
					class="blue-button" href="staff.jsp">home</a>
			</form>
		</div>
	</div>

</body>
</html>