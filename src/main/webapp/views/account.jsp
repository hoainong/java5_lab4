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
<link href="<c:url value='/css/style.css'/>" rel="stylesheet"
	type="text/css">
</head>
<body>

	<div class="container">
		<header>
			<!-- Navbar -->
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
						<a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
							src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
							height="15" alt="MDB Logo" loading="lazy" />
						</a>
					</div>
					<!-- Collapsible wrapper -->
				</div>
				<!-- Container wrapper -->
			</nav>
			<!-- Navbar -->
			<!-- Navbar -->
		</header>
		<section class="vh-100">
			<div class="container-fluid h-custom">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-md-9 col-lg-6 col-xl-5">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
							class="img-fluid" alt="Sample image">
					</div>
					<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
						<form action="/account/login" method="post">
							<!-- Email input -->
							<div class="form-outline mb-4">
								<label class="form-label" >UserName</label>
								<input type="text" id="form3Example3" name="username"
									class="form-control form-control-lg border border-primary" />
							
							</div>

							<!-- Password input -->
							<div class="form-outline mb-3">
								<label class="form-label">Password</label> <input
									type="password" id="form3Example4" name="password"
									class="form-control form-control-lg border border-primary" />
							</div>

							<div class="d-flex justify-content-between align-items-center">
								<!-- Checkbox -->
								<div class="form-check mb-0">
									<input class="form-check-input me-2" type="checkbox"
										name="remember" id="form2Example3" /> <label
										class="form-check-label" for="form2Example3"> Remember
										me </label>
								</div>
							</div>
							<div class="text-center text-lg-start mt-4 pt-2">
								<button type="submit" class="btn btn-primary btn-lg"
									style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div
				class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
				<!-- Copyright -->
				<div class="text-white mb-3 mb-md-0">Copyright © 2020. All
					rights reserved.</div>
				<!-- Copyright -->

				<!-- Right -->
				<div>
					<a href="#!" class="text-white me-4"> <i
						class="fab fa-facebook-f"></i>
					</a> <a href="#!" class="text-white me-4"> <i
						class="fab fa-twitter"></i>
					</a> <a href="#!" class="text-white me-4"> <i class="fab fa-google"></i>
					</a> <a href="#!" class="text-white"> <i class="fab fa-linkedin-in"></i>
					</a>
				</div>
				<!-- Right -->
			</div>
		</section>
	</div>
</body>
</html>