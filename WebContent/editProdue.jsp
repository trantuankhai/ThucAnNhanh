<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Trang Quản Lý</title>
<link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/cssAdmin.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Trang Quản Lý</title>
</head>
<body>
	<div class="container-fluid">
		<div class="banner">
			<img src="banner/header.jpg" alt="">
		</div>
	</div>
	<div class="clear"></div>
	<div class="container">
		<c:if test="${ not empty userNameAdmin  }">
			<div class="loichao">
				<c:out value="Xin Chào ${userNameAdmin}"></c:out>
				<a href="log-in?req=dang-xuat" > Đăng Xuất</a>
			</div>
		</c:if>
		<jsp:include page="_asideAdmin.jsp"></jsp:include>
		<div class="content">
			<jsp:include page="_editSP.jsp"></jsp:include>
		</div>
	</div>
	<div class="clear"></div>
	<div class="container-fluid">
		<div class="footer">&reg Thiết Kế Bởi Nhóm 3</div>
	</div>
</body>
</html>