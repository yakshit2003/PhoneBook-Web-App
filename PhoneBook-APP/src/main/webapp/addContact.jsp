<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Contact Page</title>
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
<body>
	<%@include file="component/navbar.jsp" %>
	
	<%
	if(user==null){
		session.setAttribute("invalidMsg", "Please Login First");
		response.sendRedirect("login.jsp");
	}
	%>
	
	
	<div class="container-fluid back-img">
<div class="row p-3">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body " >
<h4 class="text-center text-success">Add Contact</h4>

<%

String successMsg= (String)session.getAttribute("successMsg");
String failedMsg= (String)session.getAttribute("failedMsg");

if(successMsg != null){
%>
	<p class="text-success text-center"><%=successMsg%></p> 
	
<%	
session.removeAttribute("successMsg");
}
if(failedMsg != null){
%>
	<p class="text-danger text-center"><%=failedMsg%></p> 
	
<%	
}
session.removeAttribute("failedMsg");

%>

<form action="addContact" method="post">

<%
if(user!=null){%>
<input type="hidden" value="<%=user.getId() %>" name="userid">
<%	
}
%>



<div class="form-group">
    <label for="exampleInputName">Enter Name</label>
    <input name="name" type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter Name">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>

<div class="form-group">
    <label for="exampleInputName">Enter Phone No.</label>
    <input name="phno" type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter Number">
  </div>
  
<div class="form-floating">
  <label for="floatingTextarea">About</label>
  <textarea name="about" class="form-control" placeholder="About" id="floatingTextarea"></textarea>
</div>
  
 <div class="text-center mt-2"> <button type="submit" class="btn btn-primary btn-success">Save Contact</button></div>
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