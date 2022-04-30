<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ hàng</title>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="js/event.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/cart.css">
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>

	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- score-top-->
	<button onclick="topFunction()" id="myBtn-scroll" title="Go to top">
		<i class="fas fa-chevron-down"></i>
	</button>
	<!-- cart -->
	<section class="cart">
		<div class="container">
			<article class="row cart__head pc">
				<nav class="menu__nav col-lg-3 col-md-12 col-sm-0">
					<ul class="menu__list">
						<li class="menu__item menu__item--active"><a href="#"
							class="menu__link"> <img src="images1/item/baby-boy.png"
								alt="" class="menu__item-icon" id="Capa_1"
								enable-background="new 0 0 512 512" height="512"
								viewBox="0 0 512 512" width="512"> Sách Tiếng Việt
						</a></li>
						<li class="menu__item"><a href="#" class="menu__link"> <img
								src="images1/item/translation.png" alt=""
								class="menu__item-icon" id="Capa_1"
								enable-background="new 0 0 512 512" height="512"
								viewBox="0 0 512 512" width="512"> Sách nước ngoài
						</a></li>

						<li class="menu__item"><a href="#" class="menu__link"> <img
								src="images1/item/1380754_batman_comic_hero_superhero_icon.png"
								alt="" class="menu__item-icon" viewBox="0 0 512 512"
								width="1012" height="512"> Manga - Comic
						</a></li>

					</ul>
				</nav>
				<div class="col-6 cart__head-name">Thông tin sản phẩm</div>
				<div class="col-3 cart__head-quantity">Số lượng</div>
				<div class="col-3 cart__head-price">Đơn giá</div>
			</article>

			<c:forEach items="${sessionScope.cart}" var="entry">
				<tr>
					<article class="row cart__head pc">
						<div class="col-6 cart__head-name">
							<td>${entry.value.product.name }</td>
						</div>
						<option id="id" value="${entry.value.product.id }"></option>
						<div class="col-3 cart__head-quantity">
							<td><select id="mySelect" onchange="myFunction()">
									<option value="${entry.value.quantity }">${entry.value.quantity }</option>
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
							</select></td>
						</div>
						<%-- <td><img src="/finalweb10/download?image=${entry.value.product.image }" width="100" /></td> --%>
						<div class="col-3 cart__head-price">
							<td>${entry.value.price}</td>
						</div>

						<%-- <td><a href="/finalweb10/delete-from-cart?key=${entry.id }">Xoa</a></td> --%>
					</article>
				</tr>
				<br>
			</c:forEach>
			<article class="row cart__foot">
				<div class="col-6 col-lg-6 col-sm-6 cart__foot-update">
					<button class="cart__foot-update-btn">Cập nhật giỏ hàng</button>
				</div>

				

				<span class="col-3 col-lg-3 col-sm-3 cart__foot-price">
					
					<c:choose>
						<c:when test="${sessionScope.cart != null}">
							<c:if test="${sessionScope.acc != null}">
								<br>
								<a href="orderDetail.jsp"
									class="cart__foot-price-btn">Mua hàng</a>
							</c:if>
							<c:if test="${sessionScope.acc == null}">
								<br>
								<a href="Login.jsp" class="cart__foot-price-btn">Vui lòng
									đăng nhập để thanh toán</a>
							</c:if>
						</c:when>
						<c:otherwise>
							<br>
							<a href="home" class="cart__foot-price-btn">Mua hàng đê giỏ
								hàng rỗng!</a>
						</c:otherwise>
					</c:choose>
				</span>
			</article>
		</div>
	</section>
	<!--end cart -->

	<!-- footer -->
	<footer>
		<section class="footer__top">
			<div class="container">
				<div class="row">
					<article class="footer__top-intro col-lg-5 col-md-4 col-sm-6">
						<h4 class="footer__top-intro-heading">Về chúng tôi</h4>
						<div class="footer__top-intro-content">
							Edubook là cửa hàng luôn cung cấp cho các bạn tìm tòi tri thức,
							đam mê đọc sách trên khắp cả nước.Chúng tôi sẽ liên tục cập nhật
							những cuốn sách hay nhất, mới nhất, chất lượng nhất giúp người
							đọc có những cuốn sách hay nhất để đọc! <br> <br> Điện
							thoại: 0352 860 701 <br> Email: teamed2@gmail.com <br>
							Zalo: 039.882.3232 <br>
						</div>
					</article>

					<article class="footer__top-policy col-lg-3 col-md-4 col-sm-6">
						<h4 class="footer__top-policy-heading">Chính sách mua hàng</h4>

						<ul class="footer__top-policy-list">
							<li class="footer__top-policy-item"><a href="#"
								class="footer__top-policy-link">Hình thức đặt hàng</a></li>
							<li class="footer__top-policy-item"><a href="#"
								class="footer__top-policy-link">Hình thức thanh toán</a></li>
							<li class="footer__top-policy-item"><a href="#"
								class="footer__top-policy-link">Phương thức vận chuyển</a></li>
							<li class="footer__top-policy-item"><a href="#"
								class="footer__top-policy-link">Chính sách đổi trả</a></li>
							<li class="footer__top-policy-item"><a href="#"
								class="footer__top-policy-link">Hướng dẫn sử dụng</a></li>
						</ul>
					</article>

					<article
						class="footer__top-contact-wrap col-lg-4 col-md-4 col-sm-6">
						<h4 class="footer__top-contact-heading">Hotline liên hệ</h4>

						<div class="footer__top-contact">
							<div class="footer__top-contact-icon">
								<img src="images/phone_top.png" class="footer__top-contact-img">
							</div>

							<div class="footer__top-contact-phone-wrap">
								<div class="footer__top-contact-phone">039.882.3232</div>
								<div class="footer__top-contact-des">(Giải đáp thắc mắc
									24/24)</div>
							</div>
						</div>

						<h4 class="footer__top-contact-heading">Kết nối với chúng tôi
						</h4>

						<div class="footer__top-contact-social">
							<a href="#" class="footer__top-contact-social-link"> <img
								src="images/facebook.png">
							</a> <a href="#" class="footer__top-contact-social-link"> <img
								src="images/youtube.png">
							</a> <a href="#" class="footer__top-contact-social-link"> <img
								src="images/tiktok.png">
							</a> <a href="#" class="footer__top-contact-social-link"> <img
								src="images/zalo.png">
							</a>
						</div>
					</article>
				</div>
			</div>
		</section>
		<section class="footer__bottom">
			<div class="container">
				<div class="row">
					<span class="footer__bottom-content">@Bản quyền thuộc về
						edubook | Thiết kế bởi team ED2 </span>
				</div>
			</div>
		</section>
	</footer>
	<!-- end footer -->
	<script src="js/jq.js"></script>

</body>
</html>