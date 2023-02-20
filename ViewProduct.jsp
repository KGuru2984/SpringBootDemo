<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="row">
	<c:forEach items="${ singleproduct }" var="product">
	<div class="col-xl-3 col-lg-8 border text-center">
	<img src="${product.product_image}" class="col-lg-8" style="height: 250px">
	<h1>${product.product_name}</h1>
	<p>${product.product_price }</p>
	<p>${product.product_qty }</p>
	<a href="/product/modify/${ product.product_id}"><input type="button" value="Modify" class="btn btn-danger" /></a>
	</div>
	</c:forEach>
</div>
</body>
</html>