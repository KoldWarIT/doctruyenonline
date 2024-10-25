<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctruyen3TV.com</title>
</head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="mystyle.css">

<style>
.btn-facebook {
	background-color: #3b5998;
	color: white;
}

.btn-google {
	background-color: #db4437;
	color: white;
}

.social-login {
	margin-top: 10px;
}
</style>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary"
		style="background-color: #2895d5 !important;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img src="img/logo.jpg"
				alt="Bootstrap" height="30">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: white;"> Danh sách </a>
						<ul class="dropdown-menu" style="background-color: #2895d5;">
							<li><a class="dropdown-item" href="#" style="color: white;">Truyện
									mới đăng</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Truyện
									hay</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Truyện
									Full</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Truyện
									yêu thích</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: white;"> Thể loại </a>
						<ul class="dropdown-menu" style="background-color: #2895d5;">
							<li><a class="dropdown-item" href="#" style="color: white;">Hành
									động</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Hài
									hước</a></li>

							<li><a class="dropdown-item" href="#" style="color: white;">Tình
									cảm</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Trinh
									thám</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Kinh
									dị</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Viễn
									tưởng</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Thể
									thao</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: white;"> Xếp hạng </a>
						<ul class="dropdown-menu" style="background-color: #2895d5;">
							<li><a class="dropdown-item" href="#" style="color: white;">Top
									ngày</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Top
									tháng</a></li>

							<li><a class="dropdown-item" href="#" style="color: white;">Top
									tuần</a></li>
							<li><a class="dropdown-item" href="#" style="color: white;">Top
									Follow</a></li>
						</ul></li>
				</ul>

				<div class="container-fluid search-form">
					<form class="d-flex mx-auto" role="search">
						<input class="form-control me-6" type="search"
							placeholder="Nội dung tìm kiếm" aria-label="Search">
						<button class="btn bg-white " type="submit">Tìm kiếm</button>
						<li class="nav-item dropdown ms-3"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white;"> Thành viên </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="DangKi.jsp">Đăng kí</a></li>
							</ul></li>
					</form>
				</div>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->

	<!-- Trang đăng nhập -->
	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-4">
				<h2 class="text-center">Đăng nhập</h2>
				<form>
					<div class="mb-3">
						<label for="username" class="form-label">Tên đăng nhập</label> <input
							type="text" class="form-control" id="username"
							placeholder="Nhập tên đăng nhập" onkeyup="openlogin()">
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Mật khẩu</label> <input
							type="password" class="form-control" id="password"
							placeholder="Nhập mật khẩu" onkeyup="openlogin()">
							<div id=blockLog style="color: red; font-size: small;"></div>
					</div>
					<button type="button" class="btn btn-primary w-100" onclick="blockLogin1()">Đăng
						nhập</button>
					<a type="button" class="btn btn-light w-100 mt-3" href="DangKi.jsp">Đăng kí</a>
				</form>

				<div class="social-login text-center">
					<p>Hoặc đăng nhập bằng:</p>
					<a class="btn btn-facebook w-100 mb-2" href="dangnhapfacebook.jsp">Đăng nhập bằng
						Facebook</a>
					<a href="google.jsp" class="btn btn-google w-100">Đăng nhập bằng Google</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Kết thúc trang đăng nhập -->

	<!-- Footer -->
	<div class="container mt-5">
		<footer class="py-3 my-4">
			<ul class="nav justify-content-center border-bottom pb-3 mb-3">
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">Home</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">Features</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">Pricing</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">FAQs</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">About</a></li>
			</ul>
			<p class="text-center text-body-secondary">© 2024 Company, Inc</p>
		</footer>
	</div>
	<!-- End Footer -->
	<script type="text/javascript" src="javascript/myscript.js" defer></script>
	<script type="text/javascript" src="javascript/script.js" defer="defer"></script>
</body>
</html>