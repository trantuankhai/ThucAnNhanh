<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Đăng Ký</title>

<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="cssform/animate.css">
<!-- Custom Stylesheet -->
<link rel="stylesheet" href="cssform/style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden">
			<a href="index.jsp"><span id="logo">FOOD <span>STORE</span></span></a>	
			</h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<form method="post" action="log-in">

				<br /> <label for="username">Username</label><br> <input
					type="text" id="username" name="userName" required > <br /> <label
					for="password" required >Password</label> <br /> <input type="password"
					id="password" name="passWord"> <br /> 
					<label for="Fullname">Fullname</label><br> <input
					type="text" id="fullname" name="fullName" required> <br /> 
					<input type="submit" name="btnAction" value="Regist"> <br />
			</form>
			<a href="login.jsp"><p class="small">Đăng Nhập</p></a>
		</div>
	</div>

</body>
<script>
	
</script>
</html>