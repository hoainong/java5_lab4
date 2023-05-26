<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 4</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.css"
	rel="stylesheet" />
</head>
<body>
	<div class="container">
		<header>
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<!-- Container wrapper -->
				<div class="container-fluid">
					<!-- Toggle button -->
					<button class="navbar-toggler" type="button"
						data-mdb-toggle="collapse"
						data-mdb-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-bars"></i>
					</button>

					<!-- Collapsible wrapper -->
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<!-- Navbar brand -->
						<a class="navbar-brand mt-2 mt-lg-0" href="products"> <img
							src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
							height="15" alt="MDB Logo" loading="lazy" />
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
		<section class="h-100" style="background-color: #eee;">
			<div class="container h-100 py-5">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-10">

						<div
							class="d-flex justify-content-between align-items-center mb-4">
							<h3 class="fw-normal mb-0 text-black">Shopping Cart</h3>
							<div>
								<p class="mb-0">
									<span class="text-muted">Sort by:</span> <a href="#!"
										class="text-body">price <i class="fas fa-angle-down mt-1"></i></a>
								</p>
							</div>
						</div>
						<c:forEach items="${cart}" var="c">
							<div class="card rounded-3 mb-4">
								<div class="card-body p-4">
									<div
										class="row d-flex justify-content-between align-items-center">
										<div class="col-md-2 col-lg-2 col-xl-2">
											<img src="${c.getImg()}" class="img-fluid rounded-3"
												alt="Cotton T-shirt">
										</div>
										<div class="col-md-3 col-lg-3 col-xl-3">
											<p class="lead fw-normal mb-2">${c.getName()}</p>
											<p>
												<span class="text-muted">Size: </span>M <span
													class="text-muted">Color: </span>Grey
											</p>
										</div>
										<div class="col-md-3 col-lg-3 col-xl-2 d-flex">
											<!-- Thêm thuộc tính 'data-itemid' và 'data-itemprice' -->
											<input id="form1" min="1" name="quantity"
												value="${c.getQty()}" type="number"
												class="form-control form-control-sm"
												data-itemid="${c.getId()}" data-itemprice="${c.getPrice()}" />
										</div>
										<div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
											<!-- Hiển thị giá tiền đã cập nhật -->
											<h5 class="mb-0" id="itemTotal-${c.getId()}">${c.getQty() * c.getPrice()}</h5>
										</div>
										<div class="col-md-1 col-lg-1 col-xl-1 text-end">
											<form action="/cart/remove" method="post">
												<input type="hidden" name="itemId" value="${c.getId()}">
												<button type="submit" class="btn btn-primary add-to-cart">
													<i class="fas fa-trash fa-lg"></i>
												</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<div class="card mb-4">
							<div class="card-body p-4 d-flex flex-row">
								<div class="form-outline flex-fill">
									<input type="text" id="form1"
										class="form-control form-control-lg" /> <label
										class="form-label" for="form1" id="totalLabel">${tong}</label>
								</div>
							</div>
						</div>


						<div class="card">
							<div class="card-body">

								<form action="/cart/clean" method="post">


									<button type="submit" class="btn btn-warning btn-block btn-lg">CleanForm</button>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- Right -->
		<div>
			<a href="#!" class="text-white me-4"> <i
				class="fab fa-facebook-f"></i>
			</a> <a href="#!" class="text-white me-4"> <i class="fab fa-twitter"></i>
			</a> <a href="#!" class="text-white me-4"> <i class="fab fa-google"></i>
			</a> <a href="#!" class="text-white"> <i class="fab fa-linkedin-in"></i>
			</a>
		</div>
		<!-- Right -->
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function() {
			// Xử lý sự kiện khi thay đổi giá trị của trường số lượng
			$('input[name="quantity"]').on('change', function() {
				var itemId = $(this).data('itemid');
				var itemPrice = $(this).data('itemprice');
				var quantity = $(this).val();
				var total = itemPrice * quantity;

				// Cập nhật giá trị mới cho thẻ hiển thị giá tiền của mặt hàng tương ứng
				$('#itemTotal-' + itemId).text(total);

				// Tính tổng số tiền và cập nhật giá trị trong thẻ <label>
				var sum = 0;
				$('input[name="quantity"]').each(function() {
					var price = $(this).data('itemprice');
					var qty = $(this).val();
					sum += price * qty;
				});
				$('#totalLabel').text(sum);
			});
		});
	</script>

</body>
</html>