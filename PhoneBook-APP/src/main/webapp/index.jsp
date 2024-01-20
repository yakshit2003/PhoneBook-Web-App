 <%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="component/allCss.jsp" %>
<style type="text/css">
.back-img {
    background: url("img/kk.jpg");
     width: 100%;
    height: 84vh;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>


<div class="container-fluid back-img text-center text-#000000">

<h1> Welcome To PhoneBook</h1> 
</div>
<%@include file="component/footer.jsp" %>
</body>
</html>