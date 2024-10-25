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

<link rel="stylesheet" href="css/mystyle.css">

<body>
	<%
		boolean login = false;
		//xử lý đăng nhập
		String log = session.getAttribute("log") + "";
	
		if(!log.equals("null")){
			login = true;
		}
	
		//xử lý link truyện
		
		String linkConan = "comic/gioithieutruyenconan.jsp";
		String linkDoraemon = "comic/gioithieutruyendoraemon.jsp";
		String linkDragonBall = "comic/gioithieutruyendragonball.jsp";
		String linkFairyTail = "comic/gioithieutruyenfairytail.jsp";
		String linkGintama = "comic/gioithieutruyengintama.jsp";
		String linkNaruto = "comic/gioithieutruyennaruto.jsp";
		String linkShin = "comic/gioithieutruyenshin.jsp";
		String linkTsubasa = "comic/gioithieutruyentsubasa.jsp";
		if(login == false){
			linkConan = linkDoraemon = linkDragonBall = linkFairyTail = linkGintama = linkNaruto = linkShin = linkTsubasa = "DangNhap.jsp";
		}
		
	%>
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
	<div class="container">
		<div class="row">
			<!-- Thẻ div 1 -->
			<div class="col-8">

				<div>
					<h1>Truyện đề cử</h1>
					<!-- List truyện đề cử-->
					<div class="row">

						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card h-100">
								<a href=<%=linkConan %>><img class="card-img-top" src="img/conan.png"
									alt="" height="200px"></a>
								<div class="card-body">
									<h4>
										<a class="setupLink" href=<%=linkConan %>>Conan</a>
									</h4>
									<div class="row">
										<div class="col-6">
											<h7>Chapter 131</h7>
										</div>
										<div class="col-6">
											<p class="card-text" font-size: small>5 giờ trước</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card h-100">
								<a href=<%=linkDoraemon %>><img class="card-img-top" src="img/doraemon.png"
									alt="" height="200px"></a>
								<div class="card-body">
									<h4 class="card-title">
										<a class="setupLink" href=<%=linkDoraemon %>>Doraemon</a>
									</h4>
									<div class="row">
										<div class="col-6">
											<h7>Chapter 129</h7>
										</div>
										<div class="col-6">
											<p class="card-text" font-size: small>7 giờ trước</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card h-100">
								<a href=<%=linkDragonBall %>><img class="card-img-top"
									src="img/dragonball.png" alt="" height="200px"></a>
								<div class="card-body">
									<h4 class="card-title">
										<a class="setupLink" href=<%=linkDragonBall %>>Dragonball</a>
									</h4>
									<div class="row">
										<div class="col-6">
											<h7>Chapter 126</h7>
										</div>
										<div class="col-6">
											<p class="card-text" font-size: small>8 giờ trước</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card h-100">
								<a href=<%=linkFairyTail %>><img class="card-img-top"
									src="img/fairytail.png" alt="" height="200px"></a>
								<div class="card-body">
									<h4 class="card-title">
										<a class="setupLink" href=<%=linkFairyTail %>>Fairytail</a>
									</h4>
									<div class="row">
										<div class="col-6">
											<h7>Chapter 255</h7>
										</div>
										<div class="col-6">
											<p class="card-text" font-size: small>10 giờ trước</p>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- Kết thúc list truyện đề cử -->
				</div>

				<div>
					<h1>Truyện hay</h1>
					<!-- List truyện hay -->
					<div class="row">

						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card h-100">
								<a class="setupLink" href=<%=linkGintama %>><img class="card-img-top" src="img/gintama.png"
									alt="" height="200px"></a>
								<div class="card-body">
									<h4 class="card-title">
										<a href=<%=linkGintama %>>Gintama</a>
									</h4>
									<div class="row">
										<div class="col-6">
											<h7>Chapter 145</h7>
										</div>
										<div class="col-6">
											<p class="card-text" font-size: small>13 giờ trước</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card h-100">
								<a href=<%=linkNaruto %>><img class="card-img-top" src="img/naruto.png"
									alt="" height="200px"></a>
								<div class="card-body">
									<h4 class="card-title">
										<a class="setupLink" href=<%=linkNaruto %>>Naruto</a>
									</h4>
									<div class="row">
										<div class="col-6">
											<h7>Chapter 241</h7>
										</div>
										<div class="col-6">
											<p class="card-text" font-size: small>17 giờ trước</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card h-100">
								<a href=<%=linkShin %>><img class="card-img-top" src="img/shin.png"
									alt="" height="200px"></a>
								<div class="card-body">
									<h4 class="card-title">
										<a class="setupLink" href=<%=linkShin %>>Shin</a>
									</h4>
									<div class="row">
										<div class="col-6">
											<h7>Chapter 278</h7>
										</div>
										<div class="col-6">
											<p class="card-text" font-size: small>20 giờ trước</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card h-100">
								<a href=<%=linkTsubasa %>><img class="card-img-top" src="img/Tsubasa.png"
									alt="" height="200px"></a>
								<div class="card-body">
									<h4 class="card-title">
										<a class="setupLink" href=<%=linkTsubasa %>>Tsubasa</a>
									</h4>
									<div class="row">
										<div class="col-6">
											<h7>Chapter 257</h7>
										</div>
										<div class="col-6">
											<p class="card-text" font-size: small>24 giờ trước</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Kết thúc list truyện hay -->
					</div>


				</div>
			</div>
			<!-- End Thẻ div 1 -->

			<!-- Thẻ div 2 -->
			<div class="col-2 mt-5">

				<!-- List Mới Đăng -->
				<div class="col-lg-12">
					<div class="list-group">
						<a href="#" class="list-group-item list-group-item-action">
							Truyện mới đăng </a>

						<div class="row">
							<div class="col-2">
								<img src="img/naruto.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Naruto<br />Chapter 255
									</a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/conan.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Conan<br />Chapter 131
									</a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/doraemon.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Doraemon<br />Chapter 128
									</a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/dragonball.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Dragonball<br />Chapter 126
									</a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/fairytail.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Fairytail<br />Chapter 254
									</a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/gintama.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Gintama<br />Chapter 145
									</a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/shin.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#"
										class="list-group-item list-group-item-action"
										style="font-size: small;">Shin<br />Chapter 237
									</a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/Tsubasa.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#"
										class="list-group-item list-group-item-action"
										style="font-size: small;">Tsubasa<br />Chapter 255
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
								<img src="img/Top5truyentrinhtham.png" alt="Bootstrap"
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
								<img src="img/Top10mangahaynhat.png" alt="Bootstrap" width="42">
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
								<img src="img/Top5truyenngontinh.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Top 5 truyện ngôn tình hay tháng
										9 </a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/Top10mangavebongda.png" alt="Bootstrap" width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Top 10 manga về bóng đá </a>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-2">
								<img src="img/Top10nhanvatmangaduocyeuthich.png" alt="Bootstrap"
									width="42">
							</div>
							<div class="col-10">

								<div>
									<a href="#" class="list-group-item list-group-item-action"
										style="font-size: small;">Top truyện được yêu thích </a>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- End Thẻ div 3 -->

			</div>
		</div>
		<!-- Kết thúc trang chính -->

		<!-- Phân trang -->
		<ul class="pagination">
			<li><a href="#">&laquo;</a></li>
			<li><a href="#" class="active">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>

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
<script type="text/javascript" src="javascript/script.js" defer="defer"></script>
</body>
</html>