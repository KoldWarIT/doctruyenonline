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
.content-container {
	display: flex;
	justify-content: space-between;
	margin-top: 50px;
}

.image-container {
	flex: 1;
	text-align: center;
}

.image-container img {
	max-width: 90%;
	height: 500px;
}

.info-container {
	flex: 1;
	padding: 20px;
}

.info-container h2 {
	margin-bottom: 20px;
}

.info-container p {
	font-size: 18px;
	line-height: 1.5;
}

.read-button {
	margin-top: 20px;
}
</style>

<style>
body {
	font-family: Arial, sans-serif;
}

.chapter-list-container {
	width: 900px;
	height: 400px;
	border: 1px solid #ccc;
	border-radius: 8px;
	padding: 10px;
	overflow-y: scroll;
}

.chapter-list-container::-webkit-scrollbar {
	width: 10px;
}

.chapter-list-container::-webkit-scrollbar-thumb {
	background-color: #888;
	border-radius: 5px;
}

.chapter-list-container::-webkit-scrollbar-thumb:hover {
	background-color: #555;
}

.chapter-list li {
	margin: 10px 0;
	list-style-type: none;
}

.chapter-list a {
	text-decoration: none;
	color: #007bff;
}

.chapter-list a:hover {
	text-decoration: underline;
}
</style>

<body>

	<%
		boolean login = false;
		//xử lý đăng nhập
		String log = session.getAttribute("log") + "";
	
		if(!log.equals("null")){
			login = true;
		}
		%>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary"
		style="background-color: #2895d5 !important">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img src="../img/logo.jpg"
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
						<li class="nav-item dropdown ms-3">
						<%if(login == false){ %>
						<a class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white;"> Thành viên </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="DangKi.jsp">Đăng kí</a></li>
								<li><a class="dropdown-item" href="DangNhap.jsp">Đăng
										nhập</a></li>
							</ul>
							<%} else{ %>
							<a class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white;"> <%=log %> </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="dang-xuat">Đăng
										xuất</a></li>
							</ul>
							<%} %>
							</li>
					</form>
				</div>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->

	<!-- Trang chính -->
	<div class="row">
		<div class="container">
			<div class="row">

				<!-- Thẻ div 1 -->
				<div class="col-8">
					<div class="container content-container">
						<!-- Ảnh truyện -->
						<div class="image-container">
							<img src="../img/Tsubasa.png" alt="Bootstrap">
						</div>

						<!-- Thông tin truyện -->
						<div class="info-container">
							<h2>
								<strong>Captain Tsubasa</strong>
							</h2>
							<p>
								<strong>Tác giả:</strong> Takahashi Yoichi
							</p>
							<p>
								<strong>Tình trạng:</strong> Đang cập nhật
							</p>
							<p>
								<strong>Thể loại:</strong> Thể thao
							</p>
							<p>
								<strong>Lượt xem:</strong> 42198
							</p>
							<p>
								<strong>Lượt thích:</strong> 1892
							</p>
							<p>
								<strong>Mô tả:</strong> Đây là một bộ truyện nổi tiếng của
								Takahashi Yoichi, nhân vật chính là cậu bé tên Tsubasa, khi còn
								nhỏ đã thoát chết nhờ một quả bóng (khi xe tải đụng), từ đó cậu
								trở nên đam mê bóng đá, bộ truyện là những trận đấu bóng đá hấp
								dẫn không thể bỏ qua, nếu là fan của bóng đá và các manga như
								Itto, Tappei....thì đây là sự lựa chọn lý tưởng tiếp theo dành
								cho các bạn. ...
							</p>
							<div class="mt-5">
								<a type="button" class="btn btn-primary btn-lg" href="c_comic/tsubasa/doctruyentsubasa.jsp">Đọc
									từ đầu</a>
								<a type="button" class="btn btn-primary btn-lg mx-2" href="c_comic/tsubasa/doctruyentsubasa.jsp">Đọc
									mới nhất</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Thẻ div 2 -->
				<div class="col-2 mt-5">

					<!-- List Mới Đăng -->
					<div class="col-lg-12">
						<div class="list-group">
							<a href="#" class="list-group-item list-group-item-action">
								Truyện mới đăng </a>

							<div class="row">
								<div class="col-2">
									<img src="../img/naruto.png" alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Naruto<br />Chapter 700
										</a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/conan.png" alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Conan<br />Chapter 1133
										</a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/doraemon.png" alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Doraemon<br />Chapter 823
										</a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/dragonball.png" alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Dragon ball<br />Chapter 1265
										</a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/fairytail.png" alt="Bootstrap" width="43">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Fairy tail: Years Quest<br />Chapter 162
										</a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/gintama.png" alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Gintama<br />Chapter 699
										</a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/shin.png" alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Crayon Shin-chan<br />Chapter
											45
										</a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/Tsubasa.png" alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;"> Captain Tsubasa<br />Chapter
											2002
										</a>
									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- End List Mới Đăng -->
				</div>
				<!-- End Thẻ Div 2 -->

				<!-- Thẻ div 3 -->
				<div class="col-2 mt-5">

					<!-- Menu Right -->
					<div class="col-lg-12">
						<div class="list-group">
							<a href="#" class="list-group-item list-group-item-action">
								Review truyện </a>

							<div class="row">
								<div class="col-2">
									<img src="../img/Top5truyentrinhtham.png" alt="Bootstrap"
										width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Top 5 truyện trinh thám hay năm
											2024 </a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/Top10mangahaynhat.png" alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Top 10 manga đáng đọc nhất </a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/Top5truyenngontinh.png" alt="Bootstrap"
										width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Top 5 truyện ngôn tình hay
											tháng 9 </a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/Top10mangavebongda.png" alt="Bootstrap"
										width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Top 10 manga đề tài bóng đá hay
											nhất </a>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2">
									<img src="../img/Top10nhanvatmangaduocyeuthich.png"
										alt="Bootstrap" width="42">
								</div>
								<div class="col-10">

									<div>
										<a href="#" class="list-group-item list-group-item-action"
											style="font-size: small;">Top manga được yêu thích nhất</a>
									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- End Thẻ div 3 -->

				</div>
			</div>
			<!-- Kết thúc trang chính -->

			<!-- Danh sách chương -->

			<div class="mt-5 container	">
				<div class="chapter-list-container">
					<ul class="chapter-list">
						<h5>Danh sách chương</h5>
						<div class="row">
							<div class="col-10">
								<li><a href="#chapter1">Chapter 1</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>18 giờ trước</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter2">Chapter 2</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter3">Chapter 3</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter4">Chapter 4</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter5">Chapter 5</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter6">Chapter 6</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter7">Chapter 7</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter8">Chapter 8</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter9">Chapter 9</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-10">
								<li><a href="#chapter10">Chapter 10</a></li>
							</div>
							<div class="col-2">

								<div>
									<li><a>Đang update</a></li>
								</div>
							</div>
						</div>
						<!-- Thêm nhiều chương hơn tại đây -->
					</ul>
				</div>
			</div>
		</div>
		<!-- Kết thúc danh sách chương -->

		<!-- Footer -->
		<div class="container">
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
</body>
</html>