<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ - EduBook</title>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/home.css">
</head>

<body>
	<div class="app">

		<jsp:include page="Header.jsp"></jsp:include>

		<jsp:include page="Nav.jsp"></jsp:include>
		<!-- score-top-->

		<button onclick="topFunction()" id="myBtn-scroll" title="Go to top">
			<i class="fas fa-chevron-up"></i></i>
		</button>
		<!-- bestselling product -->
		<section class="bestselling">
			<div class="container">
				<div class="row">
					<div class="bestselling__heading-wrap">
						<img src="images/bestselling.png" alt="Sản phẩm bán chạy"
							class="bestselling__heading-img">
						<div class="bestselling__heading">Top bán chạy nhất tuần</div>
					</div>
				</div>

				<section class="row">
					<div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
						<div class="bestselling__product-img-box">
							<img src="images1/product/image_195509_1_22250_thanh_ly_1.jpg"
								alt="Biểu tượng thất truyền" class="bestselling__product-img">
						</div>
						<div class="bestselling__product-text">
							<h3 class="bestselling__product-title">
								<a href="#" class="bestselling__product-link">Biểu tượng
									thất truyền</a>
							</h3>

							<div class="bestselling__product-rate-wrap">
								<i class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i>
							</div>

							<span class="bestselling__product-price"> 147.000đ </span>

							<div class="bestselling__product-btn-wrap">
								<button class="bestselling__product-btn">Xem hàng</button>
							</div>
						</div>
					</div>
					<div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
						<div class="bestselling__product-img-box">
							<img src="images1/product/image_195509_1_31875.jpg"
								alt="Hỏa Ngục (Tái bản 2020)" class="bestselling__product-img">
						</div>
						<div class="bestselling__product-text">
							<h3 class="bestselling__product-title">
								<a href="#" class="bestselling__product-link">Hỏa Ngục (Tái
									bản 2020)</a>
							</h3>

							<div class="bestselling__product-rate-wrap">
								<i class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i>
							</div>

							<span class="bestselling__product-price"> 219.000đ </span>

							<div class="bestselling__product-btn-wrap">
								<button class="bestselling__product-btn">Xem hàng</button>
							</div>
						</div>
					</div>
					<div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
						<div class="bestselling__product-img-box">
							<img
								src="images1/product/tr_-tue-do-thai_outline_15.9.2017-02.jpg"
								alt="Trí Tuệ Do Thái (Tái Bản 2018)"
								class="bestselling__product-img">
						</div>
						<div class="bestselling__product-text">
							<h3 class="bestselling__product-title">
								<a href="#" class="bestselling__product-link">Trí Tuệ Do
									Thái (Tái Bản 2018)</a>
							</h3>

							<div class="bestselling__product-rate-wrap">
								<i class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i>
							</div>

							<span class="bestselling__product-price"> 169.000đ </span>

							<div class="bestselling__product-btn-wrap">
								<button class="bestselling__product-btn">Xem hàng</button>
							</div>
						</div>
					</div>
					<div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
						<div class="bestselling__product-img-box">
							<img src="images1/product/image_195509_1_36793.jpg"
								alt="Nhà Giả Kim (Tái Bản 2020)"
								class="bestselling__product-img">
						</div>
						<div class="bestselling__product-text">
							<h3 class="bestselling__product-title">
								<a href="#" class="bestselling__product-link">Nhà Giả Kim
									(Tái Bản 2020)</a>
							</h3>

							<div class="bestselling__product-rate-wrap">
								<i class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i>
							</div>

							<span class="bestselling__product-price"> 79.000đ </span>

							<div class="bestselling__product-btn-wrap">
								<button class="bestselling__product-btn">Xem hàng</button>
							</div>
						</div>
					</div>
					<div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
						<div class="bestselling__product-img-box">
							<img src="images1/product/image_180164_2_287.jpg"
								alt="Tuổi Trẻ Đáng Giá Bao Nhiêu? "
								class="bestselling__product-img">
						</div>
						<div class="bestselling__product-text">
							<h3 class="bestselling__product-title">
								<a href="#" class="bestselling__product-link">Tuổi Trẻ Đáng
									Giá Bao Nhiêu? </a>
							</h3>

							<div class="bestselling__product-rate-wrap">
								<i class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i>
							</div>

							<span class="bestselling__product-price"> 80.000đ </span>

							<div class="bestselling__product-btn-wrap">
								<button class="bestselling__product-btn">Xem hàng</button>
							</div>
						</div>
					</div>
					<div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
						<div class="bestselling__product-img-box">
							<img src="images1/product/ttdc01.jpg"
								alt="Thám Tử Đã Chết - Tập 1 - Tặng Kèm Bookmark Tròn"
								class="bestselling__product-img">
						</div>
						<div class="bestselling__product-text">
							<h3 class="bestselling__product-title">
								<a href="#" class="bestselling__product-link">Thám Tử Đã
									Chết - Tập 1 - Tặng Kèm Bookmark Tròn</a>
							</h3>

							<div class="bestselling__product-rate-wrap">
								<i class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i> <i
									class="fas fa-star bestselling__product-rate"></i>
							</div>

							<span class="bestselling__product-price"> 119.000đ </span>

							<div class="bestselling__product-btn-wrap">
								<button class="bestselling__product-btn">Xem hàng</button>
							</div>
						</div>
					</div>
				</section>

				<div class="row bestselling__banner">

					<div class="bestselling__banner-left col-lg-6">
						<img src="images1/banner/920x420_phienchodocu.png"
							alt="Banner quảng cáo" class="bestselling__banner-left-img">
					</div>
					<div class="bestselling__banner-right col-lg-6">
						<img src="images1/banner/muonkiepnhansinh_resize_920x420.jpg"
							alt="Banner quảng cáo" class="bestselling__banner-right-img">
					</div>
				</div>
			</div>
		</section>

		<!-- end bestselling product -->

		<!-- product -->
		<section class="product">
			<div class="container">
				<div class="row">
					<aside class="product__sidebar col-lg-3 col-md-0 col-sm-12">
						<div class="product__sidebar-heading">
							<div class=""></div>
							<h2 class="product__sidebar-title">
								<img
									src="images1/item/1380754_batman_comic_hero_superhero_icon.png"
									alt="" class="menu__item-icon" id="Capa_1"
									enable-background="new 0 0 512 512" height="512"
									viewBox="0 0 512 512" width="512"> Manga - Comic
							</h2>
						</div>

						<nav class="product__sidebar-list">

							<div class="row">
							 <c:forEach items="${listCC}" var="o">
								<div class="product__sidebar-item col-lg-6">
									<img
										src="${o.cimage}"
										alt="" class="product__sidebar-item-img"> <a href="category?cid=${o.cid}"
										class="product__sidebar-item-name">${o.cname}</a>
								</div>
								 </c:forEach>
							</div>
						</nav>

						<div class="product__sidebar-img-wrap">
							<!-- <img src="images1/product/Demon Slayer_ Kimetsu no Yaiba - Assista na Crunchyroll.png" width="255" height="350" alt=""> -->
							<video width="255" height="300" controls>
								<source src="video/contra.st_1629123780_musicaldown.com.mp4"
									type="video/mp4">
							</video>
							<!-- <img src="images/banner_7.jpg" alt="" class="product__sidebar-img"> -->
						</div>
					</aside>

					<article class="product__content col-lg-9 col-md-12 col-sm-12">
						<nav class="row">
							<ul class="product__list hide-on-mobile">
								<li class="product__item product__item--active"><a href="#"
									class="product__link">Hành động - Phiêu lưu</a></li>
								<li class="product__item"><a href="#" class="product__link">Bí
										ẩn - Siêu nhiên</a></li>
								<li class="product__item"><a href="#" class="product__link">Giả
										tưởng - Khoa học</a></li>
								<li class="product__item"><a href="#" class="product__link">Lãng
										mạn - Hài kịch</a></li>
							</ul>

							<div class="product__title-mobile">
								<h2>Hành động - Phiêu lưu</h2>
							</div>
						</nav>

						<div class="row product__panel">

							<c:forEach items="${list1234}" var="o">
								<div class="product__panel-item col-lg-3 col-md-4 col-sm-6" data-type="${o.id}">
									<div class="product__panel-item-wrap">
										<div class="product__panel-img-wrap">
											<img src="${o.image}" alt="" class="product__panel-img">
										</div>
										<h3 class="product__panel-heading">
											<a href="detail?pid=${o.id}" class="product__panel-link">${o.name}</a>
										</h3>
										<div class="product__panel-rate-wrap">
											<i class="fas fa-star product__panel-rate"></i> <i
												class="fas fa-star product__panel-rate"></i> <i
												class="fas fa-star product__panel-rate"></i> <i
												class="fas fa-star product__panel-rate"></i> <i
												class="fas fa-star product__panel-rate"></i>
										</div>

										<div class="product__panel-price">
											<span class="product__panel-price-old"> </span> <span
												class="product__panel-price-current"> ${o.price} đ </span>
										</div>

										<div class="product__panel-price-sale-off"></div>
									</div>
								</div>
							</c:forEach>
						</div>

					</article>
				</div>
			</div>
		</section>
		<!--end product -->

		<!-- product love -->
		<section class="product__love">
			<div class="container">

				<div class="row bg-white">
					<div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
						<h2 class="product__love-heading">Có thể bạn thích</h2>
					</div>
				</div>


				<div class="row bg-white">
					<c:forEach items="${list5}" var="o">
						<div class="product__panel-item col-lg-2 col-md-3 col-sm-6" data-type="${o.id}">
							<div class="product__panel-img-wrap">
								<img src="${o.image}" alt="" class="product__panel-img">
							</div>
							<h3 class="product__panel-heading">
								<a href="detail?pid=${o.id}" class="product__panel-link">${o.name}</a>
							</h3>
							<div class="product__panel-rate-wrap">
								<i class="fas fa-star product__panel-rate"></i> <i
									class="fas fa-star product__panel-rate"></i> <i
									class="fas fa-star product__panel-rate"></i> <i
									class="fas fa-star product__panel-rate"></i> <i
									class="fas fa-star product__panel-rate"></i>
							</div>

							<div class="product__panel-price">
								<span
									class="product__panel-price-old product__panel-price-old-hide">

								</span> <span class="product__panel-price-current"> ${o.price}đ
								</span>
							</div>
						</div>


					</c:forEach>
				</div>
			</div>
	</div>
	</section>
	<!--end product love -->


</body>
</html>