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
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
    <div class="app">
       
<jsp:include page="Header.jsp"></jsp:include>

<jsp:include page="Nav.jsp"></jsp:include>
<!-- score-top-->

<button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></i></button>
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
                        <img src="images1/product/image_195509_1_22250_thanh_ly_1.jpg" alt="Biểu tượng thất truyền" class="bestselling__product-img">
                    </div>
                    <div class="bestselling__product-text">
                        <h3 class="bestselling__product-title">
                            <a href="#" class="bestselling__product-link">Biểu tượng thất truyền</a>
                        </h3>

                        <div class="bestselling__product-rate-wrap">
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                        </div>

                        <span class="bestselling__product-price">
                            147.000đ
                        </span>

                        <div class="bestselling__product-btn-wrap">
                            <button class="bestselling__product-btn">Xem hàng</button>
                        </div>
                    </div>
                </div>
                <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                    <div class="bestselling__product-img-box">
                        <img src="images1/product/image_195509_1_31875.jpg" alt="Hỏa Ngục (Tái bản 2020)" class="bestselling__product-img">
                    </div>
                    <div class="bestselling__product-text">
                        <h3 class="bestselling__product-title">
                            <a href="#" class="bestselling__product-link">Hỏa Ngục (Tái bản 2020)</a>
                        </h3>

                        <div class="bestselling__product-rate-wrap">
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                        </div>

                        <span class="bestselling__product-price">
                            219.000đ
                        </span>

                        <div class="bestselling__product-btn-wrap">
                            <button class="bestselling__product-btn">Xem hàng</button>
                        </div>
                    </div>
                </div>
                <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                    <div class="bestselling__product-img-box">
                        <img src="images1/product/tr_-tue-do-thai_outline_15.9.2017-02.jpg" alt="Trí Tuệ Do Thái (Tái Bản 2018)" class="bestselling__product-img">
                    </div>
                    <div class="bestselling__product-text">
                        <h3 class="bestselling__product-title">
                            <a href="#" class="bestselling__product-link">Trí Tuệ Do Thái (Tái Bản 2018)</a>
                        </h3>

                        <div class="bestselling__product-rate-wrap">
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                        </div>

                        <span class="bestselling__product-price">
                            169.000đ
                        </span>

                        <div class="bestselling__product-btn-wrap">
                            <button class="bestselling__product-btn">Xem hàng</button>
                        </div>
                    </div>
                </div>
                <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                    <div class="bestselling__product-img-box">
                        <img src="images1/product/image_195509_1_36793.jpg" alt="Nhà Giả Kim (Tái Bản 2020)" class="bestselling__product-img">
                    </div>
                    <div class="bestselling__product-text">
                        <h3 class="bestselling__product-title">
                            <a href="#" class="bestselling__product-link">Nhà Giả Kim (Tái Bản 2020)</a>
                        </h3>

                        <div class="bestselling__product-rate-wrap">
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                        </div>

                        <span class="bestselling__product-price">
                            79.000đ
                        </span>

                        <div class="bestselling__product-btn-wrap">
                            <button class="bestselling__product-btn">Xem hàng</button>
                        </div>
                    </div>
                </div>
                <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                    <div class="bestselling__product-img-box">
                        <img src="images1/product/image_180164_2_287.jpg" alt="Tuổi Trẻ Đáng Giá Bao Nhiêu? " class="bestselling__product-img">
                    </div>
                    <div class="bestselling__product-text">
                        <h3 class="bestselling__product-title">
                            <a href="#" class="bestselling__product-link">Tuổi Trẻ Đáng Giá Bao Nhiêu? </a>
                        </h3>

                        <div class="bestselling__product-rate-wrap">
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                        </div>

                        <span class="bestselling__product-price">
                            80.000đ
                        </span>

                        <div class="bestselling__product-btn-wrap">
                            <button class="bestselling__product-btn">Xem hàng</button>
                        </div>
                    </div>
                </div>
                <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                    <div class="bestselling__product-img-box">
                        <img src="images1/product/ttdc01.jpg" alt="Thám Tử Đã Chết - Tập 1 - Tặng Kèm Bookmark Tròn" class="bestselling__product-img">
                    </div>
                    <div class="bestselling__product-text">
                        <h3 class="bestselling__product-title">
                            <a href="#" class="bestselling__product-link">Thám Tử Đã Chết - Tập 1 - Tặng Kèm Bookmark Tròn</a>
                        </h3>

                        <div class="bestselling__product-rate-wrap">
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                        </div>

                        <span class="bestselling__product-price">
                            119.000đ
                        </span>

                        <div class="bestselling__product-btn-wrap">
                            <button class="bestselling__product-btn">Xem hàng</button>
                        </div>
                    </div>
                </div>
            </section>

            <div class="row bestselling__banner">

                <div class="bestselling__banner-left col-lg-6">
                    <img src="images1/banner/920x420_phienchodocu.png" alt="Banner quảng cáo"
                    class="bestselling__banner-left-img">
                </div>
                <div class="bestselling__banner-right col-lg-6">
                    <img src="images1/banner/muonkiepnhansinh_resize_920x420.jpg" alt="Banner quảng cáo"
                    class="bestselling__banner-right-img">
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
                        <img src="images1/item/1380754_batman_comic_hero_superhero_icon.png" alt="" class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                        Manga - Comic</h2>
                    </div>

                    <nav class="product__sidebar-list">

                        <div class="row">
                            <div class="product__sidebar-item col-lg-6">
                                <img src="images1/product/【グラブル】「炭治郎&禰豆子&善逸&伊之助」の評価_性能検証｜鬼滅コラボ【グランブルーファンタジー】 - ゲームウィズ(GameWith).jfif" alt="" class="product__sidebar-item-img">
                                <a href="" class="product__sidebar-item-name">Manga</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <img src="images1/product/My Anime For Life.jfif" class="product__sidebar-item-img">
                                <a href="" class="product__sidebar-item-name">Series Manga</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <img src="images1/product/twd2_biaao_demo.jpg" alt="" class="product__sidebar-item-img">
                                <a href="" class="product__sidebar-item-name">Comics</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <img src="images1/product/8936054081882.jpg" alt="" class="product__sidebar-item-img">
                                <a href="" class="product__sidebar-item-name">Truyện tranh Việt Nam</a>
                            </div>
                        </div>
                    </nav>

                    <div class="product__sidebar-img-wrap">
                        <!-- <img src="images1/product/Demon Slayer_ Kimetsu no Yaiba - Assista na Crunchyroll.png" width="255" height="350" alt=""> -->
                        <video width="255" height="300" controls>
                        <source src="video/contra.st_1629123780_musicaldown.com.mp4" type="video/mp4">
                        </video>
                        <!-- <img src="images/banner_7.jpg" alt="" class="product__sidebar-img"> -->
                    </div>
                </aside>

                <article class="product__content col-lg-9 col-md-12 col-sm-12">
                    <nav class="row">
                        <ul class="product__list hide-on-mobile">
                            <li class="product__item product__item--active">
                                <a href="#" class="product__link">Hành động - Phiêu lưu</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Bí ẩn - Siêu nhiên</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Giả tưởng - Khoa học</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Lãng mạn - Hài kịch</a>
                            </li>
                        </ul>

                        <div class="product__title-mobile">
                            <h2>Hành động - Phiêu lưu</h2>
                        </div>
                    </nav>

                    <div class="row product__panel">
                    
						<c:forEach items="${list1234}" var="o">
                        <div class="product__panel-item col-lg-3 col-md-4 col-sm-6">
                            <div class="product__panel-item-wrap">
                                <div class="product__panel-img-wrap">
                                    <img src="${o.image}" alt="" class="product__panel-img">
                                </div>
                                <h3 class="product__panel-heading">
                                    <a href="product.html" class="product__panel-link">${o.name}</a>
                                </h3>
                                <div class="product__panel-rate-wrap">
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                </div>

                                <div class="product__panel-price">
                                    <span class="product__panel-price-old">
									
                                    </span>
                                    <span class="product__panel-price-current">
                                        ${o.price}đ
                                    </span>
                                </div>

                                <div class="product__panel-price-sale-off">
                                    -11%
                                </div>
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
                    <h2 class="product__love-heading">
                        Có thể bạn thích
                    </h2>
                </div>
            </div>
            <div class="row bg-white">
                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                    <div class="product__panel-img-wrap">
                        <img src="images1/product/image_187163.jpg" alt="" class="product__panel-img">
                    </div>
                    <h3 class="product__panel-heading">
                        <a href="#" class="product__panel-link">Tuổi Thơ Dữ Dội - Tập 2 (Tái Bản 2019)</a>
                    </h3>
                    <div class="product__panel-rate-wrap">
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                    </div>

                    <div class="product__panel-price">
                        <span class="product__panel-price-old product__panel-price-old-hide">
                            80.000đ
                        </span>
                        <span class="product__panel-price-current">
                            69.000đ
                        </span>
                    </div>  
                </div>

                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                    <div class="product__panel-img-wrap">
                        <img src="images1/product/image_188285.jpg" alt="" class="product__panel-img">
                    </div>
                    <h3 class="product__panel-heading">
                        <a href="#" class="product__panel-link">Chuyện Con Mèo Dạy Hải Âu Bay</a>
                    </h3>
                    <div class="product__panel-rate-wrap">
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                    </div>

                    <div class="product__panel-price">
                        <span class="product__panel-price-old product__panel-price-old-hide">
                            49.000đ
                        </span>
                        <span class="product__panel-price-current">
                            34.300đ
                        </span>
                    </div> 
                </div>

                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                    <div class="product__panel-img-wrap">
                        <img src="images1/product/8936186542176.jpg" alt="" class="product__panel-img">
                    </div>
                    <h3 class="product__panel-heading">
                        <a href="#" class="product__panel-link">Tôi thích một cô gái nhưng không dám ngỏ lời</a>
                    </h3>
                    <div class="product__panel-rate-wrap">
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                    </div>

                    <div class="product__panel-price">
                        <span class="product__panel-price-old product__panel-price-old-hide 
                        ">
                            109.000đ
                        </span>
                        <span class="product__panel-price-current">
                            70.000đ
                        </span>
                    </div>
                </div>
                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                    <div class="product__panel-img-wrap">
                        <img src="images1/product/biamem.jpg" alt="" class="product__panel-img">
                    </div>
                    <h3 class="product__panel-heading">
                        <a href="#" class="product__panel-link">Con Chim Xanh Biếc Bay Về - Tặng Kèm 6 Postcard</a>
                    </h3>
                    <div class="product__panel-rate-wrap">
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                    </div>

                    <div class="product__panel-price">
                        <span class="product__panel-price-old product__panel-price-old-hide">
                            150.000đ
                        </span>
                        <span class="product__panel-price-current">
                            112.500đ
                        </span>
                    </div> 
                </div>

                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                    <div class="product__panel-img-wrap">
                        <img src="images1/product//8936049524905.jpg" alt="" class="product__panel-img" >
                    </div>
                    <h3 class="product__panel-heading">
                        <a href="#" class="product__panel-link">5 Centimet Trên Giây</a>
                    </h3>
                    <div class="product__panel-rate-wrap">
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                    </div>

                    <div class="product__panel-price">
                        <span class="product__panel-price-old product__panel-price-old-hide">
                            50.000đ
                        </span>
                        <span class="product__panel-price-current">
                            39.500đ
                        </span>
                    </div> 
                </div>

                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                    <div class="product__panel-img-wrap">
                        <img src="images1/product/bia1_tobinhyen_2_1_1.jpg" alt="" class="product__panel-img" >
                    </div>
                    <h3 class="product__panel-heading">
                        <a href="#" class="product__panel-link">Tô Bình Yên Vẽ Hạnh Phúc 
                        </a>
                    </h3>
                    <div class="product__panel-rate-wrap">
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                    </div>

                    <div class="product__panel-price">
                        <span class="product__panel-price-old product__panel-price-old-hide">
                            78.000đ
                        </span>
                        <span class="product__panel-price-current">
                            63.960đ
                        </span>
                    </div> 
                </div>
            </div>
        </div>
    </section>
    <!--end product love -->

    <!-- post -->
    <section class="posts">
        <div class="container">
            <header class="row posts__title">
                <div class="posts__title-wrap col-lg-12 col-md-12 col-sm-12">
                    <h2 class="posts__heading">
                        Tin tức - Bài viết
                    </h2>
                </div>
            </header>
            <article class="row posts__list">
                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img" >
                        <img src="images1/post/got-it-e-voucher.png" width="80%">
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="" class="posts__item-title">
                            Mẹo săn mã voucher giảm giá tại Edu Book
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        28/05/2020
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                Nguyễn Nhung
                            </div>   
                        </div>
                    </div>
                    <div class="posts__item-description">
                        Nếu bạn đang gặp phải những vấn đề về săn, lấy, sử dụng mã voucher của EduBook. Xin hãy yên tâm, bài viết này 
                        dành cho bạn! Trong bài viết này mình sẽ chia sẻ đến bạn những mẹo, những kinh nghiệm giúp bạn săn được nhiều 
                        mã giảm giá EduBook nhất có thể.....
                    </div>
                </div>

                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img">
                        <img src="images1/post/hinh-ghep-15986994500641611959184.jpg">
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="" class="posts__item-title">
                            Cách phân biệt sách thật, giả chính xác
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        05/06/2020
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                Trung Trần
                            </div>   
                        </div>
                    </div>
                    <div class="posts__item-description">
                        Để các độc giả, phụ huynh, học sinh và các thầy cô giáo… không mua phải các loại sách tham khảo giả, sách in lậu, 
                        mình sẽ hướng dẫn cách phân biệt sách thật, giả nhanh chóng và chính xác. Nếu bạn chú ý quan sát một xíu là có thể 
                        phân biệt được sách giả ngay. Với sách giả khi cầm trên tay sẽ có cảm giác mềm hơn, không cứng và chắc tay như sách thật...
                    </div>
                </div>

                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img">
                        <img src="images1/post/cach-su-dung-ma-giam-gia-hieu-qua-tai-vnreviews.png">
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="#" class="posts__item-title">
                            Sử dụng mã giảm giá Edu Book như thế nào
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        26/05/2020
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                Tùng Lương
                            </div>   
                        </div>
                    </div>
                    <div class="posts__item-description">
                        Sau khi lấy được mã rồi thì tất nhiên bạn phải biết cách sử dụng nó rồi. Về cơ bản thì EduBook cho phép bạn sử dụng cùng 
                        lúc 3 loại mã giảm giá mà mình đã kể trên trong cùng 1 đơn hàng. Bao gồm:
                            Mã FreeShip,
                            Mã giảm giá của Shop,
                            Và Ưu đãi từ đối tác thanh toán,....
                    </div>
                </div>

                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img">
                        <img src="images1/post/images.jfif">
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="" class="posts__item-title">
                            Hướng dẫn đổi trả sách, hoàn tiền Edu Book
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        22/05/2020
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                Nguyễn Nhung
                            </div>   
                        </div>
                    </div>
                    <div class="posts__item-description">
                        Mua hàng trên Edu Book nhưng sản phẩm bạn nhận được không giống hình, sản phẩm bị lỗi. Bạn nghĩ mình bị lừa, bạn bối rối không biết
                        làm thế nào và quyết định search google: “Phải làm gì khi muốn hoàn trả hàng hoàn tiền trên Edu Book”.  Bài viết này sẽ hướng dẫn 
                        bạn đổi trả sách EduBook đúng quy trình...
                    </div>
                </div>
            </article>
            <article class="row posts__view">
                <a href="post.html" class="posts__view-btn">Xem thêm</a>
            </article>
        </div>
    </section>
    <!-- end post -->


  

    <div class="main__modal">
        <div class="modal__overlay"></div>
        <div class="modal__body">
            <!-- resgist form -->
            <div class="sale-off">
                <div class="sale-off__container">
                    <h2 class="sale-off__heading">
                        Nhận phiếu giảm giá <span class="sale-off__sp">30%</span>  khi mua <br> <span class="sale-off__name">Học tập qua dự án</span> 
                    </h2>
                    <div class="sale-off__img">
                        <img src="images1/product/hoc-tap-qua-du-an-2-01-1.jpg" width="300">
                    </div>
                    
                    <a href="product.html" class="sale-off__link">
                        <button class="sale-off__btn">Mua ngay</button>
                    </a>
                </div>

                <div class="sale-off__close">
                    <!-- <svg class="sale-off__close-icon" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg> -->
                    x
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="js/jq.js"></script>
    <script src="js/index.js"></script>
</body>
</html>