<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-fluid">
	<div class="row">
		<div class="nav1">
			<div class="container-fluid">

				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${empty userNameQuest}">
								<li><a href="login.jsp">Đăng Nhập</a></li>
								<li><a href="dangky.jsp">Đăng Ký</a></li>
							</c:when>

							<c:otherwise>

								<li><a href="#">Xin Chào ${ userNameQuest }</a></li>
								<li><a href="log-in?req=dang-xuat-quest">Đăng Xuất</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="giohang.jsp">Giỏ hàng</a></li>

					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
		</div>
	</div>
	<div class="row">
		<nav class="nav2">
			<div class="container-fluid ">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header ">
					<a href="index.jsp"> <img class="img-responsive"
						src="logo/logo.png" alt=""></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">

					<form class="navbar-form navbar-right" method="get"
						action="timKiem">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Đồ ăn nhanh"
								name="key">
						</div>
						<input type="submit" class="btn btn-success" value="Tìm Kiếm"
							name="action">
					</form>

				</div>
				<!-- /.navbar-collapse -->
			</div>
		</nav>
	</div>
</div>

