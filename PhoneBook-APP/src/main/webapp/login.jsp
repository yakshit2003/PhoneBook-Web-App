<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="component/allCss.jsp" %>
<style type="text/css">
.back-img {
    background: url("img/uu.jpg");
     width: 100%;
    height: 83vh;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
</head>
<body style="background-color: #D9D3DC;">
<%@include file="component/navbar.jsp" %>

<div class="container-fluid back-img">
<div class="row p-3">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body" >
<h4 class="text-center text-success">Login Page</h4>
<%


String invalidMsg= (String)session.getAttribute("invalidMsg");

if(invalidMsg != null){
%>
	<p class="text-danger text-center"><%=invalidMsg%></p> 
	
<%	
session.removeAttribute("invalidMsg");
}
%>

<%


String logMsg= (String)session.getAttribute("logMsg");

if(logMsg != null){
%>
	<p class="text-success text-center"><%=logMsg%></p> 
	
<%	
session.removeAttribute("logMsg");
}
%>
<form action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email Address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
 <div class="text-center mt-2"> <button type="submit" class="btn btn-primary">Login</button></div>
</form>
</div>
</div>
</div>
</div>
</div>


<div>
<%@include file="component/footer.jsp" %>
</div>
</body>
</html>