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
<style style="text/css">
.hoverTable {
	width: 100%;
	border-collapse: collapse;
}

.hoverTable td {
	padding: 7px;
	border: #4e95f4 1px solid;
}
/* Define the default color for all the table rows */
.hoverTable tr {
	background: #b8d1f3;
}
/* Define the hover highlight color for the table row */
.hoverTable tr:hover {
	background-color: #ffff99;
}
</style>
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
		<form action="mngOrder">
			<table>
				<tr>
					<td><label for="lname">Họ tên khách hàng:</label> <input type="text"
						id="user" value="${order.user}" name="user"></td>
					</tr>
			</table>
			<input type="submit" value=Sửa name="aa"> <input
				type="submit" value="Xóa" name="aa"> <input type="submit"
				value="Tìm kiếm" name="aa"> <select name="type" id="cars">
				<option value="name">Tên khách hàng</option>
			</select>
		</form>

		
		<table border="1" class="hoverTable" id="tableId">
			<thead>
				<tr>
					<th>id</th>
					<th>Tên người mua</th>
					<th>Địa chỉ</th>
					<th>Số điện thoại</th>
					<th>Tổng tiền</th>
					<th>id tài khoản</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="order" items="${listOr}">
					<tr>
						<td><c:out value="${order.id}" /></td>
						<td><c:out value="${order.fullName}" /></td>
						<td><c:out value="${order.address}" /></td>
						<td><c:out value="${order.phoneNumber}" /></td>
						<td><c:out value="${order.tongTien}" /></td>
						<td><c:out value="${order.idAcc}" /></td>
						<td><input type="checkbox"></td>
						<td>
								<a href="mngOrderDetail?idOr=${order.id}">...</a>
						</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


</body>
</html>