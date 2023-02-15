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
<sp:form method="post" action="/product/newadd" modelAttribute="productdata">
	<div class="form-group">
		<label>Enter Product Name</label>
		<sp:input path="ProductName" placeholder="Enter Product Name"  class="form-control"/>
	</div>
		<div class="form-group">
		<label>Enter Product Price</label>
		<sp:input path="ProductPrice" placeholder="Enter Product Price"  class="form-control"/>
	</div>
		<div class="form-group">
		<label>Enter Product Image</label>
		<sp:input path="ProductImage" placeholder="Enter Product Image"  class="form-control"/>
	</div>
	<div class="form-group">
		<label>Enter Product Quantity</label>
		<sp:input path="ProductQty" placeholder="Enter Product Quantity"  class="form-control"/>
	</div>
	
	<div class="form-group">
		<input type="submit" value="Register" class="btn btn-primary" />
		<input type="reset" value="Reset" class="btn btn-danger" />
	</div>
</sp:form>
</div>
</body>
</html>