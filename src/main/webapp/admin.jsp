<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/login.css">
<title>Admin page</title>
</head>
<body>
  


 <c:set var="staff" value="${user }" scope="session" />
<c:out value="${sessionScope.staff.getName()}" />

<div class="wrapper">
    <div class="inner">
        <button>
            <span><a href="createbranch">Create Branch</a></span>
        </button>
        <button>
            <span><a href="findbranch.jsp">View Branch</a></span>
        </button>
        <button>
            <span><a href="finduser">View User</a></span>
        </button>
        <button>
            <span><a href="loginin">logout</a></span>
        </button>
    </div>
</div>

</body>
</html>