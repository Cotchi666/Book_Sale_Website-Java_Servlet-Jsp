<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>

</style>
<header id="header">
	<!-- header top -->
	<div class="header__top">
		<div class="container">
			<section class="row flex">
				<div class="col-lg-5 col-md-0 col-sm-0 heade__top-left">
					<span>EduBook - Cội nguồn của tri thức</span>
				</div>

				<nav class="col-lg-7 col-md-0 col-sm-0 header__top-right">
					<ul class="header__top-list">
						<c:if
							test="${sessionScope.acc.isSell == 1 and sessionScope.acc.isAdmin == 0||sessionScope.acc == null}">
							<li class="header__top-item"><a href="#"
								class="header__top-link"> Hỏi đáp</a></li>
						</c:if>
						<c:if
							test="${sessionScope.acc.isSell == 1 and sessionScope.acc.isAdmin == 0||sessionScope.acc == null}">
							<li class="header__top-item"><a href="#"
								class="header__top-link">Hướng dẫn</a></li>
						</c:if>
						<c:if
							test="${sessionScope.acc.isSell == 1 and sessionScope.acc.isAdmin == 0||sessionScope.acc == null}">
							<li class="header__top-item"><a href="#"
								class="header__top-link">Về chúng tôi</a></li>
						</c:if>

						<c:if test="${sessionScope.acc.isAdmin == 1  }">
							<li class="header__top-item"><a class="header__top-link"
								href="#">Manager Account</a></li>
						</c:if>
						
						<c:if test="${sessionScope.acc.isAdmin == 1}">
							<li class="header__top-item"><a class="header__top-link"
								href="manager">Manager Product</a></li>
						</c:if>
						<c:if test="${sessionScope.acc != null}">
							<li class="header__top-item"><a class="header__top-link"
								href="#">Hello ${sessionScope.acc.user}</a></li>
							<li class="header__top-item"><a class="header__top-link"
								href="logout">Logout</a></li>
						</c:if>
						<c:if test="${sessionScope.acc == null}">
							<li class="header__top-item"><a class="header__top-link"
								href="Login.jsp">Đăng nhập</a></li>
						</c:if>
					</ul>
				</nav>
			</section>
		</div>
	</div>
	<!--end header top -->

	<!-- header bottom -->
	<div class="header__bottom">
		<div class="container">
		<form action="search" method="post">
			<section class="row">
				<div class="col-lg-3 col-md-4 col-sm-12 header__logo">
					<h1 class="header__heading">
						<a href="home" class="header__logo-link"> <img
							src="images1/logo1.png" alt="Logo" class="header__logo-img">
						</a>
					</h1>
				</div>

				<div class="col-lg-6 col-md-7 col-sm-0 header__search">
				
					<select name="" id="" class="header__search-select">
						<option value="0">All</option>
						<option value="1">Sách tiếng việt</option>
						<option value="2">Sách sách nước ngoài</option>
						<option value="3">Manga-Comic</option>

					</select>

					
						<input value="${txtS}" name="txt" type="text"
							class="header__search-input" placeholder="Tìm kiếm tại đây...">

						<button type="submit" class="header__search-btn">
							<div class="header__search-icon-wrap">
								<i class="fas fa-search header__search-icon"></i>
							</div>
						</button>
					
				</div>
</form>
				<div class="col-lg-2 col-md-0 col-sm-0 header__call">
					<div class="header__call-icon-wrap">
						<i class="fas fa-phone-alt header__call-icon"></i>
					</div>
					<div class="header__call-info">
						<div class="header__call-text">Gọi điện tư vấn</div>
						<div class="header__call-number">09.0149.9903</div>
					</div>
				</div>

				<a href="Cart.jsp" class="col-lg-1 col-md-1 col-sm-0 header__cart">
					<div class="header__cart-icon-wrap">
						<span class="header__notice">4</span> <i
							class="fas fa-shopping-cart header__nav-cart-icon"></i>
					</div>
				</a>
			</section>
		</div>
	</div>
	<!--end header bottom -->