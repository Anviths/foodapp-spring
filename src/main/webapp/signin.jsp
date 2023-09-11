<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/login.css">
</head>
<body>
    <h1>Sign-in form</h1>
     <c:if test="${not empty errorMessage}">
        <p>${errorMessage}</p>
    </c:if>
  
        <div class="wrapper">
			<div class="inner">
				
				<form:form action="loginin"  modelAttribute="user">
					<h3>Login Account</h3>
					
					
					<div class="form-holder">
						<span class="lnr lnr-envelope"></span>
						<form:input path="email" class="form-control" id="email" required="true"/>
					</div>
					<div class="form-holder">
						<span class="lnr lnr-lock"></span>
						<form:password path="password" class="form-control" id="password" required="true"/>
					</div>
					
					<button>
						<span>Log-In</span>
					</button>
				<p class="text-center">Not a user? <a data-toggle="tab" href="signup.jsp">Sign Up</a></p>
				</form:form>
			
		</div>
		</div>

	
</body>
</html>