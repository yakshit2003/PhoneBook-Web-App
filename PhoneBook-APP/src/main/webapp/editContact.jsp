<%@page import="com.entity.Contact"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.ContactDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Contact Page</title>
<%@include file="component/allCss.jsp"%>
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
	<%@include file="component/navbar.jsp"%>

	<%
	if (user == null) {
		session.setAttribute("invalidMsg", "Please Login First");
		response.sendRedirect("login.jsp");
	}
	%>
	<div class="container-fluid back-img">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body ">
						<h4 class="text-center text-success">Update Contact </h4>

						<%
						String errorMsg = (String) session.getAttribute("failedMsg");
						if (errorMsg != null) {
						%>
						<p class="text-danger text-center"><%=errorMsg%></p>

						<%
						}
						session.removeAttribute("failedMsg");
						%>

						<form action="update" method="post">

							<%
							int cid = Integer.parseInt(request.getParameter("cid"));
							ContactDAO dao = new ContactDAO(DbConnect.getConn());
							Contact c = dao.getContactByID(cid);
							%>
							
							<input type="hidden" value="<%=cid%>" name="cid">



							<div class="form-group">
								<label for="exampleInputName">Enter Name</label> <input
									value="<%=c.getName()%>" name="name" type="text"
									class="form-control" id="exampleInputName"
									aria-describedby="emailHelp" placeholder="Enter Name">
							</div>


							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									value="<%=c.getEmail()%>" name="email" type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
							</div>

							<div class="form-group">
								<label for="exampleInputName">Enter Phone No.</label> <input
									value="<%=c.getPhno()%>" name="phno" type="text"
									class="form-control" id="exampleInputName"
									aria-describedby="emailHelp" placeholder="Enter Name">
							</div>

							<div class="form-floating">
								<label for="floatingTextarea">About</label>
								<textarea name="about" class="form-control" placeholder="About"
									id="floatingTextarea"><%=c.getAbout()%></textarea>
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary btn-success">Update
									Contact</button>
							</div>
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