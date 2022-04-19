<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Ecommerce Template</title>

<link href="http://fonts.googleapis.com/css?family=Oswald:700"
	rel="stylesheet" type="text/css" />

<!-- Custom styles for this template (imports bootstrap from LESS) -->
<link href="css/style.css" rel="stylesheet">

</head>

<body>

	<div class="container">

		<!-- Menu -->
		<jsp:include page="Menu.jsp"></jsp:include>
		<!-- Menu -->
		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron">
			<!-- Nav tabs -->
			<ul class="tablist" role="tablist">
				<li role="presentation" class="active"><a href="#featured-item"
					aria-controls="featured-item" role="tab" data-toggle="tab">Featured Item</a></li>
				<li role="presentation"><a href="#best-seller"
					aria-controls="best-seller" role="tab" data-toggle="tab">Best Seller</a></li>
				<li role="presentation"><a href="#discount"
					aria-controls="discount" role="tab" data-toggle="tab">Summer Discount</a></li>
				<li role="presentation"><a href="#premium"
					aria-controls="premium" role="tab" data-toggle="tab">Premium Product</a></li>
				<li role="presentation"><a href="#gift-idea"
					aria-controls="gift-idea" role="tab" data-toggle="tab">Gift Idea</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="featured-item">
				<c:forEach items="${listP}" var="o">
					<div class="tab-text">
					
			
						<h2>${o.title}</h2>
						<p>${o.name}</p>
						<a href="detail?pid=${o.id}" class="btn btn-default">Read More</a>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="${o.image}" />
					</c:forEach>
				</div>
				<div role="tabpanel" class="tab-pane" id="best-seller">
					<div class="tab-text">
						<h2>Xbox One</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Etiam feugiat, magna ornare euismod consectetur, dolor arcu
							finibus erat, in finibus ex elit quis nunc. Aliquam erat
							volutpat. Cras posuere feugiat ligula nec lacinia.</p>
						<a href="product.html" class="btn btn-default">Read More</a>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/xbox.png" />
				</div>
				<div role="tabpanel" class="tab-pane" id="discount">
					<div class="tab-text">
						<h2>Playstation 4</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Etiam feugiat, magna ornare euismod consectetur, dolor arcu
							finibus erat, in finibus ex elit quis nunc. Aliquam erat
							volutpat. Cras posuere feugiat ligula nec lacinia.</p>
						<a href="product.html" class="btn btn-default">Read More</a>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/ps4.png" />
				</div>
				<div role="tabpanel" class="tab-pane" id="premium">
					<div class="tab-text">
						<h2>Microsoft Surface</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Etiam feugiat, magna ornare euismod consectetur, dolor arcu
							finibus erat, in finibus ex elit quis nunc. Aliquam erat
							volutpat. Cras posuere feugiat ligula nec lacinia.</p>
						<a href="product.html" class="btn btn-default">Read More</a>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/surface.png" />
				</div>
				<div role="tabpanel" class="tab-pane" id="gift-idea">
					<div class="tab-text">
						<h2>Vizio Smart TV</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Etiam feugiat, magna ornare euismod consectetur, dolor arcu
							finibus erat, in finibus ex elit quis nunc. Aliquam erat
							volutpat. Cras posuere feugiat ligula nec lacinia.</p>
						<a href="product.html" class="btn btn-default">Read More</a>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/tv.png" />
				</div>
			</div>

		</div>
		<!-- jumbotron -->

		<section id="products" class="">

			<div class="row">
			  <c:forEach items="${listP}" var="o">
			
				<div class="col-md-4">
					<div class="thumbnail">
						<img src="${o.image}">
						<div class="caption">
							<h4 class="pull-right">${o.price}</h4>
							<h4>
								<a href="detail?pid=${o.id}">${o.title}</a>
							</h4>
							<p>${o.name}</p>
						</div>
						<!-- caption -->
						<div class="ratings" id="">
							<p class="pull-right">15 Reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
					<!-- thumbnail -->
				</div>
				</c:forEach>
				<!-- col-md-4 -->
				<div class="col-md-4">
					<div class="thumbnail">
						<img src="img/xbox.png">
						<div class="caption">
							<h4 class="pull-right">$399.99</h4>
							<h4>
								<a href="product.html">Xbox One</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Etiam feugiat, magna ornare euismod</p>
						</div>
						<!-- caption -->
						<div class="ratings" id="">
							<p class="pull-right">8 Reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
					<!-- thumbnail -->
				</div>
				<!-- col-md-4 -->
				<div class="col-md-4">
					<div class="thumbnail">
						<img src="img/ps4.png">
						<div class="caption">
							<h4 class="pull-right">$699.99</h4>
							<h4>
								<a href="product.html">Playstation 4</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Etiam feugiat, magna ornare euismod</p>
						</div>
						<!-- caption -->
						<div class="ratings" id="">
							<p class="pull-right">4 Reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
					<!-- thumbnail -->
				</div>
				<!-- col-md-4 -->
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img src="img/tv.png">
						<div class="caption">
							<h4 class="pull-right">$599.99</h4>
							<h4>
								<a href="product.html">Vizio Smart TV</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Etiam feugiat, magna ornare euismod</p>
						</div>
						<!-- caption -->
						<div class="ratings" id="">
							<p class="pull-right">12 Reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
					<!-- thumbnail -->
				</div>
				<!-- col-md-4 -->
				<div class="col-md-4">
					<div class="thumbnail">
						<img src="img/surface.png">
						<div class="caption">
							<h4 class="pull-right">$499.99</h4>
							<h4>
								<a href="Detail.jsp">Microsoft Surface</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Etiam feugiat, magna ornare euismod</p>
						</div>
						<!-- caption -->
						<div class="ratings" id="">
							<p class="pull-right">9 Reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span> <span
									class="glyphicon glyphicon-star-empty"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
					<!-- thumbnail -->
				</div>
				<!-- col-md-4 -->
				<div class="col-md-4">
					<div class="thumbnail">
						<img src="img/iphone.png">
						<div class="caption">
							<h4 class="pull-right">$599.99</h4>
							<h4>
								<a href="Detail.jsp">iPhone 5</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Etiam feugiat, magna ornare euismod</p>
						</div>
						<!-- caption -->
						<div class="ratings" id="">
							<p class="pull-right">22 Reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
					<!-- thumbnail -->
				</div>
				<!-- col-md-4 -->
			</div>
			<!-- row -->
		</section>

	</div>
	<!-- /container -->

	<jsp:include page="Footer.jsp"></jsp:include>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
