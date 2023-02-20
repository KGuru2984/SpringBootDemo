<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<c:if test="${modifyproduct==null}">
<sp:form method="post" action="/product/newadd" modelAttribute="productdata">
	<div class="form-group">
		<label>Enter Product Name</label>
		<sp:input path="product_name" placeholder="Enter Product Name"  class="form-control"/>
	</div>
		<div class="form-group">
		<label>Enter Product Price</label>
		<sp:input path="product_price" placeholder="Enter Product Price"  class="form-control"/>
	</div>
		<div class="form-group">
		<label>Enter Product Image</label>
		<sp:input path="product_image" placeholder="Enter Product Image"  class="form-control"/>
	</div>
	<div class="form-group">
		<label>Enter Product Quantity</label>
		<sp:input path="product_qty" placeholder="Enter Product Quantity"  class="form-control"/>
	</div>
	
	<div class="form-group">
		<input type="submit" value="Register" class="btn btn-primary" />
		<input type="reset" value="Reset" class="btn btn-danger" />
	</div>
</sp:form>
</c:if>
<c:if test="${modifyproduct!=null}">
<sp:form method="post" action="/product/modifyprod" modelAttribute="modifyproduct">
<div class="form-group" hidden=true>
		<label>Enter Product ID</label>
		<sp:input path="product_id" name="a1" placeholder="Enter Product ID"  class="form-control"/>
	</div>
	<div class="form-group">
		<label>Enter Product Name</label>
		<sp:input path="product_name" name="a2"  placeholder="Enter Product Name"  class="form-control"/>
	</div>
		<div class="form-group">
		<label>Enter Product Price</label>
		<sp:input path="product_price" name="a3"  placeholder="Enter Product Price"  class="form-control"/>
	</div>
		<div class="form-group">
		<label>Enter Product Image</label>
		<sp:input path="product_image" name="a4" placeholder="Enter Product Image"  class="form-control"/>
	</div>
	<div class="form-group">
		<label>Enter Product Status</label>
		<sp:input path="product_status" name="a6" placeholder="Enter Product Status"  class="form-control"/>
	</div>
	<div class="form-group">
		<label>Enter Product Quantity</label>
		<sp:input path="product_qty" name="a5" placeholder="Enter Product Quantity"  class="form-control"/>
	</div>
	
	<div class="form-group">
		<input type="submit" value="Modify" class="btn btn-primary" />
		<input type="reset" value="Reset" class="btn btn-danger" />
	</div>
</sp:form>
</c:if>
</div>
</body>
</html>