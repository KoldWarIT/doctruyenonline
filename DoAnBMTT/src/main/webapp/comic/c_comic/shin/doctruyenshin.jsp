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
body {
	margin: 0;
	padding: 0;
	background-color: #313131;
}

.container {
	margin-top: 60px; /* Khoảng cách từ navbar */
	display: flex;
	justify-content: center;
}

.detail-title {
	text-align: center; /* Căn giữa tiêu đề */
	margin-bottom: 20px; /* Khoảng cách dưới tiêu đề */
}

.detail-title a {
	color: white; /* Màu chữ */
	text-decoration: none; /* Xóa gạch chân */
}

.box {
	background-color: #4c4c4c;
	border-radius: 8px;
	box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
	padding: 40px;
	width: 100%; /* Chiều rộng toàn bộ của container */
	max-width: 1400px; /* Kích thước tối đa cho chiều dài nằm ngang */
	min-height: 400px; /* Điều chỉnh chiều cao nếu cần */
}

.chapter-control {
	text-align: center;
	color: #d9d9d9;
}

.favorite-box {
	display: inline-block;
	padding: 10px 20px;
	background-color: #eb3c3c; /* Màu nền yêu thích */
	color: #fff; /* Màu chữ trắng */
	border-radius: 5px; /* Bo góc cho khung */
	font-weight: bold; /* Chữ in đậm */
	font-size: 1rem; /* Kích thước chữ */
	text-decoration: none; /* Đảm bảo không có đường gạch dưới */
	margin: 10px; /* Khoảng cách giữa các phần tử */
}

.alert-info {
	margin-top: 10px;
}

.btn-info {
	background-color: #17a2b8;
	border-color: #17a2b8;
}

.btn-info:hover {
	background-color: #138496;
	border-color: #117a8b;
}

.go-btn {
	display: inline-block;
	margin: 10px;
}

.mrt10 {
	margin-top: 10px;
}

.add-chap-btn {
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #28a745; /* Màu xanh lá cây */
	color: #fff;
	border-radius: 5px;
	font-weight: bold;
	font-size: 1rem;
	text-decoration: none;
}

.add-chap-btn:hover {
	background-color: #218838;
}

/* CSS cho hộp chứa các nút */
.chapter-controls {
	width: 200px; /* Đặt chiều rộng cho khung chứa nút */
	display: flex;
	justify-content: center; /* Đưa các nút vào hai đầu của khung */
	gap: 10px; /* Khoảng cách giữa các nút */
	margin: 20px auto;
	/* Tự động căn giữa khung với khoảng cách trên và dưới */
	align-items: center; /* Căn giữa các nút theo chiều dọc */
}

/* CSS cho các nút */
.chapter-controls .btn {
	flex: 1; /* Chiều rộng của nút sẽ đồng đều */
	text-align: center; /* Căn giữa nội dung của nút */
	padding: 5px 10px; /* Padding cho các nút */
	font-size: 14px; /* Kích thước chữ trong nút */
	border-radius: 4px; /* Góc bo tròn cho nút */
	color: #fff; /* Màu chữ */
}

/* CSS cho nút "Chapter trước" */
.chapter-controls .prev {
	background-color: #007bff; /* Màu nền của nút "Chapter trước" */
	color: #fff; /* Màu chữ trong nút "Chapter trước" */
}

/* CSS cho nút "Chapter sau" */
.chapter-controls .next {
	background-color: #28a745; /* Màu nền của nút "Chapter sau" */
	color: #fff; /* Màu chữ trong nút "Chapter sau" */
}

.dropdown-menu {
	background-color: #fff; /* Màu nền của menu dropdown */
	border: 1px solid #ddd; /* Đường viền của menu dropdown */
}

.dropdown-item {
	color: #1a73e8; /* Màu chữ cho các mục trong menu dropdown */
}

.dropdown-item:hover {
	background-color: #f1f3f4; /* Màu nền khi hover trên mục dropdown */
}
</style>

<body>
<%
		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
	%>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary"
		style="background-color: #2895d5 !important;">
		<div class="container-fluid">
			<a class="navbar-brand" href=<%=url+ "/TrangChu.jsp"%>> <img src=<%=url +"/img/logo.jpg"%>
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
								<li><a class="dropdown-item" href="#">Đăng kí</a></li>
								<li><a class="dropdown-item" href="#">Đăng nhập</a></li>
							</ul></li>
					</form>
				</div>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->

	<!-- Khung thông tin -->

	<div class="container">
		<div class="box">
			<div>
				<h1 class="detail-title txt-primary">
					<a href="#" style="color: white">Shin - Cậu bé bút chì</a>
				</h1>
			</div>
			<div class="chapter-control">
				<div class="mrt10">
					<span class="note-server">Chapter 1</span>
				</div>
				<div class="mrt10">
					<a rel="nofollow" href="#" class="favorite-box"><i
						class="fa fa-exclamation-triangle"></i> Yêu thích</a>
				</div>
				<div class="alert alert-info mrt10">
					<i class="fa fa-info-circle"></i> <em>Sử dụng mũi tên trái (←)
						hoặc phải (→) để chuyển chapter</em>
				</div>

				<!-- Nút danh sách chap với dropdown menu -->
				<div class="dropdown">
					<button class="btn btn-list dropdown-toggle text-white"
						type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Danh sách chap</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="#">Chapter 1</a></li>
						<li><a class="dropdown-item" href="#">Chapter 2</a></li>
						<li><a class="dropdown-item" href="#">Chapter 3</a></li>
						<!-- Thêm các chương khác ở đây -->
					</ul>
				</div>

				<!-- Các nút "Chapter trước" và "Chapter sau" nằm ngang nhau -->
				<div class="chapter-controls">
					<a class="btn prev text-white" href="#"> <em
						class="fa fa-arrow-left"></em> Chap trước
					</a> <a class="btn next text-white" href="#"
						onclick="alert('Hết Chương Rồi Bạn Ơi!!!')"> Chap sau <em
						class="fa fa-arrow-right"></em>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Kết thúc khung thông tin -->

	<!-- Đọc truyện Conan -->

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/1.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/2.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/3.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/4.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/5.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/6.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/7.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/8.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/9.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/10.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/11.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/12.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/13.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/14.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/15.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/16.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/17.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/18.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/19.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/20.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/21.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/22.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/23.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/24.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/25.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/26.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/27.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/28.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/29.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/30.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/31.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/32.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/33.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/34.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/35.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/36.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/37.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/38.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/39.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/40.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/41.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/41.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/43.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/44.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/45.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/46.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/47.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/48.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/49.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/50.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/51.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/52.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/53.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/54.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/55.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/56.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/57.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/58.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/59.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/60.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/61.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/62.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/63.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/64.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/65.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/66.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/67.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/68.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/69.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/70.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/71.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/72.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/73.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/74.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/75.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/76.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/77.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/78.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/79.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/80.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/81.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/82.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/83.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/84.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/85.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/86.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/87.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/88.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/89.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/90.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/91.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/92.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/93.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/94.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/95.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/96.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/97.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/98.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/99.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/100.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/101.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/102.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/103.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/104.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/105.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/106.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/107.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/108.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/109.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/110.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/111.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/112.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/113.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/114.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/115.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/116.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/117.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/118.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/119.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/120.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/121.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/122.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/123.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/124.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/125.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/126.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/127.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/128.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/129.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/130.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/131.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/132.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/133.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/134.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/135.jpg"
			alt="Bootstrap"></a>
	</div>

	<div class="d-flex justify-content-center mt-3">
		<a><img class="img-fluid" src="docshin/chapter1/136.jpg"
			alt="Bootstrap"></a>
	</div>

</body>
</html>