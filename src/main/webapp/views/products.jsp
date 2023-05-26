<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 4</title>
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
<!-- MDB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.css" rel="stylesheet" />

</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body>
	<div class="container">
		<header>
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<!-- Container wrapper -->
				<div class="container-fluid">
					<!-- Toggle button -->
					<button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<i class="fas fa-bars"></i>
					</button>

					<!-- Collapsible wrapper -->
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<!-- Navbar brand -->
						<a class="navbar-brand mt-2 mt-lg-0" href="products">
							<img src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp" height="15" alt="MDB Logo" loading="lazy" />
						</a>
						<!-- Left links -->
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link" href="products">PRODUCTS</a></li>
							<li class="nav-item"><a class="nav-link" href="cart">CART</a></li>
						</ul>
						<!-- Left links -->
					</div>
					<!-- Collapsible wrapper -->
				</div>
				<!-- Container wrapper -->
			</nav>
			<!-- Navbar -->
		</header>
		<section style="background-color: #eee;">
			<div class="container py-5">
				<div class="row">
					<c:forEach items="${items}" var="item">
						<div class="col-md-6 col-lg-4 mb-4 mb-lg-0 mt-lg-2">
							<div class="card">
								<div class="d-flex justify-content-between p-3">
									<p class="lead mb-0">Today's Combo Offer</p>
									<div class="bg-info rounded-circle d-flex align-items-center justify-content-center shadow-1-strong" style="width: 35px; height: 35px;">
										<p class="text-white mb-0 small">x4</p>
									</div>
								</div>
								<img src="${item.getImg()}" class="card-img-top" alt="Laptop" />
								<div class="card-body">
									<div class="d-flex justify-content-between">
										<p class="small">
											<a href="#!" class="text-muted">Laptops</a>
										</p>
										<p class="small text-danger">
											<s>$5000</s>
										</p>
									</div>

									<div class="d-flex justify-content-between mb-3">
										<h5 class="mb-0" id="name">${item.getName()}</h5>
										<h5 class="text-dark mb-0">${item.getPrice()}$</h5>
										<form action="/products" method="post">
											<input type="hidden" name="itemId" value="${item.getId()}">
											<input type="hidden" name="quantity" value="1" min="1">
											<button type="submit" class="btn btn-primary add-to-cart">Add Cart</button>
										</form>
									</div>

									<div class="d-flex justify-content-between mb-2">
										<p class="text-muted mb-0">
											Available: <span class="fw-bold">6</span>
										</p>
										<div class="ms-auto text-warning">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- Right -->
		<div>
			<a href="#!" class="text-white me-4">
				<i class="fab fa-facebook-f"></i>
			</a>
			<a href="#!" class="text-white me-4">
				<i class="fab fa-twitter"></i>
			</a>
			<a href="#!" class="text-white me-4">
				<i class="fab fa-google"></i>
			</a>
			<a href="#!" class="text-white">
				<i class="fab fa-linkedin-in"></i>
			</a>
		</div>
		<!-- Right -->
	</div>
	<script>
		$('.add-to-cart').on('click', function() {
			alert("Added to cart");
		});
	</script>
	<!-- MDB -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.js"></script>
</body>
</html>
