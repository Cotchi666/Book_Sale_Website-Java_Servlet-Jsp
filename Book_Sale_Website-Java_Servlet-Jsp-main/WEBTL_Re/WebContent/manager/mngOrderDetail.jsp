<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quản lí đơn hàng</title>

<script type="text/javascript" src="js/event.js"></script>
<!-- Liên kết CSS Bootstrap bằng CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>

<body>

	<!-- Main content -->
	<div class="container">
		<h1>Danh sách đơn hàng</h1>



		<table border="1" class="hoverTable" id="tableId"
			style="padding-top: 100;">
			<thead>
				<tr>
					<th>id</th>
					<th>id Sản phẩm</th>
					<th>id Đơn hàng</th>
					<th>Đơn giá</th>
					<th>Số lượng</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderDetail" items="${listOrderDetail}">
					<tr>
						<td><c:out value="${orderDetail.id}" /></td>
						<td><c:out value="${orderDetail.product.id}" /></td>
						<td><c:out value="${orderDetail.idOrder}" /></td>
						<td><c:out value="${orderDetail.price}" /></td>
						<td><c:out value="${orderDetail.quantity}" /></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	<div>
		<button>
			<a href="mngOrder?idOrder=${listOrderDetail.get(0).idOrder}">Giao hang</a>
		</button>
	</div>


</body>
</html>