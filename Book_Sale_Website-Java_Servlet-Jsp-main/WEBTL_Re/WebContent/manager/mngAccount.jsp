<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shop bán hàng NetaShop</title>
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
		<h1>Danh sách tài khoản</h1>
		<form action="mngAccount">
			<table>
				<tr onclick="addRowHandlers();">
					<td><label for="fname">id:</label> <input type="text" id="id"
						value="${account.id}" name="id"></td>
					<td><label for="lname">tài khoản:</label> <input type="text"
						id="user" value="${account.user}" name="user"></td>
					<td><label for="lname">Mật khẩu:</label> <input
						type="password" id="pass" value="${account.pass}" name="pass"
						readonly="false"></td>
					<td><label for="lname">isSell:</label> <input type="text"
						id="isSell" value="${account.isSell}" name="isSell"></td>
					<td><label for="lname">isAdmin:</label> <input type="text"
						id="isAdmin" name="isAdmin" value="${account.isAdmin}"></td>
				</tr>
			</table>

			<input type="submit" value=Sửa name="aa"> <input
				type="submit" value="Xóa" name="aa"> <input type="submit"
				value="Tìm kiếm" name="aa"> <select name="type" id="cars">
				<option value="id">id</option>
				<option value="user">Tên tài khoản</option>
				<option value="isSell">Là người dùng</option>
				<option value="isAdmin">Là admin</option>
			</select>
		</form>

		<!-- Button Thêm mới -->
		<a href="create.php" class="btn btn-primary"> <i
			class="fas fa-plus"></i> Thêm mới
		</a>
		<table border="1" class="hoverTable" id="tableId">
			<thead>
				<tr>
					<th>id</th>
					<th>Tên người dùng</th>
					<th>Mật khẩu</th>
					<th>isSell</th>
					<th>isAdmin</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="account" items="${list}">

					<tr onclick="addRowHandlers();">
						<td><c:out value="${account.id}" /></td>
						<td><c:out value="${account.user} " /></td>
						<td><input type="password" readonly="false"
							value="${account.pass}" size="10"></td>
						<td><c:out value="${account.isSell}" /></td>
						<td><c:out value="${account.isAdmin}" /></td>
					</tr>
					<tr>
						<button>
							<a href="home">Back</a>
							<button>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


</body>
</html>