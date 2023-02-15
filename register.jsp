<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<sp:form method="post" action="/users/add" modelAttribute="usersdata">
	<div class="form-group">
		<label>Enter First Name</label>
		<sp:input path="UserFirstName" placeholder="Enter First Name"  class="form-control"/>
	</div>
		<div class="form-group">
		<label>Enter Last Name</label>
		<sp:input path="UserLastName" placeholder="Enter Last Name"  class="form-control"/>
	</div>
		<div class="form-group">
		<label>Enter Email Address</label>
		<sp:input path="EmailID" placeholder="Enter Email ID"  class="form-control"/>
	</div>
	<div class="form-group">
		<label>Enter User Password</label>
		<sp:password path="UserPassword" placeholder="Enter User Password"  class="form-control"/>
	</div>
	
	<div class="form-group">
		<input type="submit" value="Register" class="btn btn-primary" />
		<input type="reset" value="Reset" class="btn btn-danger" />
	</div>
</sp:form>
</div>

</body>
</html>

