
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Đăng ký</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/mystyle.css">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous"></script>
<style>
.red {
	color: red;
}
</style>
</head>
<body style="background-color: #ebebeb;">
	<%
	String tenDangNhap = request.getAttribute("tenDangNhap") + "";
	tenDangNhap = (tenDangNhap.equals("null")) ? "" : tenDangNhap;

	String hoVaTen = request.getAttribute("hoVaTen") + "";
	hoVaTen = (hoVaTen.equals("null")) ? "" : hoVaTen;

	String gioiTinh = request.getAttribute("gioiTinh") + "";
	gioiTinh = (gioiTinh.equals("null")) ? "" : gioiTinh;

	String ngaySinh = request.getAttribute("ngaySinh") + "";
	ngaySinh = (ngaySinh.equals("null")) ? "" : ngaySinh;

	String diaChi = request.getAttribute("diaChi") + "";
	diaChi = (diaChi.equals("null")) ? "" : diaChi;


	String dienThoai = request.getAttribute("dienThoai") + "";
	dienThoai = (dienThoai.equals("null")) ? "" : dienThoai;

	String email = request.getAttribute("email") + "";
	email = (email.equals("null")) ? "" : email;
	
	String hasUser = request.getAttribute("hasUser")+ "";
	hasUser = (hasUser.equals("null"))?"":hasUser;
	
	String errorRePass = request.getAttribute("errorRePass")+ "";
	errorRePass = (errorRePass.equals("null"))?"":errorRePass;
	
	String errorPhoneNum = request.getAttribute("errorPhoneNum")+ "";
	errorPhoneNum = (errorPhoneNum.equals("null"))?"":errorPhoneNum;
	
	String errorEmail = request.getAttribute("errorEmail")+ "";
	errorEmail = (errorEmail.equals("null"))?"":errorEmail;

	%>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: #2895d5;">
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
						data-bs-toggle="dropdown" aria-expanded="false" style="color: white;"> Danh sách </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Truyện mới đăng</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Truyện hay</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Truyện Full</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Truyện yêu thích</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false" style="color: white; background-color: #2895d5;"> Thể loại </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Hành động</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Hài hước</a></li>

							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Tình cảm</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Trinh thám</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Kinh dị</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Viễn tưởng</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Thể thao</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false" style="color: white;"> Xếp hạng </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Top ngày</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Top tháng</a></li>

							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Top tuần</a></li>
							<li><a class="dropdown-item" href="#" style="color: white; background-color: #2895d5;">Top Follow</a></li>
						</ul></li>
				</ul>

				<div class="container-fluid search-form">
					<form class="d-flex mx-auto" role="search">
						<input class="form-control me-6" type="search"
							placeholder="Nội dung tìm kiếm" aria-label="Search">
						<button class="btn bg-white " type="submit">Tìm
							kiếm</button>
						<li class="nav-item dropdown ms-3"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false" style="color: white;"> Thành viên </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="DangNhap.jsp">Đăng nhập</a></li>
							</ul></li>
					</form>
				</div>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->
	<div class="container" style="background-color: white;">
	<div>
	<h1  style="font-family: Poppins; font-weight: bold;">ĐĂNG
			KÝ</h1></div>
		

		<div class="red" id= "e_user"><%=hasUser %></div>
		<div class="red" id="baoLoi">
			<%=errorRePass%>
		</div>
		<!-- Đăng kí -->
		<form class="form" action="dang-ky" method="post">
			<div class="row">
				<div class="col-sm-4">
					<h3 class="mt-3">Tài khoản</h3>
					<div class="mb-3">
						<label for="tenDangNhap" class="form-label">Tên đăng nhập<span
							class="red">*</span></label> <input type="text" class="form-control"
							id="tenDangNhap" name="tenDangNhap" required="required"
							value="<%=tenDangNhap%>">
					</div>
					<div class="mb-3">
						<label for="matKhau" class="form-label">Mật khẩu<span
							class="red">*</span></label> <input type="password" class="form-control"
							id="matKhau" name="matKhau" required="required"
							onkeyup="kiemTraMatKhau()">
					</div>
					<div class="mb-3">
						<label for="matKhauNhapLai" class="form-label">Nhập lại
							mật khẩu<span class="red">*</span> <span id="msg" class="red"></span>
						</label> <input type="password" class="form-control" id="matKhauNhapLai"
							name="matKhauNhapLai" required="required"
							onkeyup="kiemTraMatKhau()">
					</div>
				</div>
				<div class="row mt-3 col-sm-8">
					<h3>Thông tin khách hàng</h3>
					<div class="col-sm-6">

						<div class="mb-3">
							<label for="hoVaTen" class="form-label">Họ và tên</label> <input
								type="text" class="form-control" id="hoVaTen" name="hoVaTen"
								value="<%=hoVaTen%>">
						</div>
						<div class="mb-3">
							<label for="gioiTinh" class="form-label">Giới tính</label> <select
								class="form-control" id="gioiTinh" name="gioiTinh">
								<option></option>
								<option value="Nam"
									<%=(gioiTinh.equals("Nam")) ? "selected='selected'" : ""%>>Nam</option>
								<option value="Nữ"
									<%=(gioiTinh.equals("Nữ")) ? "selected='selected'" : ""%>>Nữ</option>
								<option value="Khác"
									<%=(gioiTinh.equals("Khác")) ? "selected='selected'" : ""%>>Khác</option>
							</select>
						</div>
						<div class="mb-3">
							<label for="ngaySinh" class="form-label">Ngày sinh</label> <input
								type="date" class="form-control" id="ngaySinh" name="ngaySinh" required="required"
								value="<%=ngaySinh%>">
						</div>

					</div>
					<div class="col-sm-6">

						<div class="mb-3">
							<label for="diaChiMuaHang" class="form-label">Địa chỉ</label> <input
								type="text" class="form-control" id="diaChiMuaHang"
								name="diaChi" value="<%=diaChi%>" required="required">
						</div>
						<div class="mb-3">
							<label for="dienThoai" class="form-label">Điện thoại</label> <input
								type="tel" class="form-control" id="dienThoai" name="dienThoai"
								value="<%=dienThoai%>" required="required">
							<div class="red"><%=errorPhoneNum %></div>
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email</label> <input
								type="email" class="form-control" id="email" name="email"
								value="<%=email%>" required="required">
							<div class="red"><%=errorEmail %></div>
						</div>

					</div>
				</div>

				<div class="mb-3 centerDiv">
					<label for="dongYDieuKhoan" class="form-label">Đồng ý với
						điều khoản<span style="color: red;"> *</span>
					</label> <input type="checkbox" class="form-check-input"
						id="dongYDieuKhoan" name="dongYDieuKhoan" required="required"
						onchange="xuLyChonDongY()">
				</div>
				<div class="mt-3 centerDiv">
					<input class="btn btn-primary" type="submit" value="Đăng ký"
						name="submit" id="submit" style="visibility: hidden;" />
				</div>
		</form>
		<!-- kết thúc Đăng kí -->

	</div>
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
</body>

<script type="text/javascript" src="javascript/myscript.js" defer="defer"></script>
<script type="text/javascript" src="javascript/script.js" defer="defer"></script>
</html>
