<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="staff" value="${staff }" scope="session" />
<c:out value="${sessionScope.staff.getName()}" />
 
 <div class="wrapper">
    <div class="inner">
        <button>
            <span><a href="createfoodorder">Order food</a></span>
        </button>
        
        <button>
            <span><a href="viewfoodOrder">View FoodOrder</a></span>
        </button>
         <button>
            <span><a href="loginin">logout</a></span>
        </button> 
    </div>
</div>
</body>
</html>