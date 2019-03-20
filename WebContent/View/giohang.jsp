<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giỏ Hàng</title>
<!-- Local bootstrap CSS & JS -->
<link rel="stylesheet" media="screen" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
</head>

<body onload="play1()">
	<jsp:include page="_headder.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="_nav.jsp"></jsp:include>
		<jsp:include page="_danhMuc.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="_aside.jsp"></jsp:include>
			<div class="colum2">
				<c:set var="shop" value="${sessionScope.SHOP}"></c:set>
				<c:choose>
					<c:when test="${empty shop }">
						<c:out value="Giỏ Hàng Rỗng"></c:out>
					</c:when>
					<c:otherwise>

						<c:if test="${not empty shop }">
							<table class="table table-hover  table-bordered  ">
								<thead>
									<tr>
										<th>Mã Sản Phẩm</th>
										<th>Tên Sản Phẩm</th>
										<th>Hình Ảnh</th>
										<th>Giá</th>
										<th>Số Lượng</th>
										<th>Thành Tiền</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="dong" items="${shop}">
										<tr>
											<td>${dong.value.produce.code}</td>
											<td>${dong.value.produce.title}</td>
											<td><img width="70px" height="70px"
												src="${dong.value.produce.image}"
												alt="sanppam${dong.value.produce.code}"></td>
											<td>${dong.value.produce.price}</td>
											<td><input type="text" value="${dong.value.quantity}"></input></td>
											<td>${dong.value.quantity * dong.value.produce.price }</td>
											<form action="cart" method="get">
												<td><input type="checkbox" name="rms"
													value="${dong.value.produce.code}"></td>
										</tr>
									</c:forEach>

									<td class="action" colspan="7"><input type="submit"
										class="btn btn-success btn-sm " name="action" value="Đặt hàng">
										<input class="btn btn-danger btn-sm " type="submit"
										name="action" value="Xóa"> <input type="submit"
										name="action" class="btn btn-info btn-sm " value="Mua Thêm">
									</td>
									</form>
								</tbody>
							</table>
						</c:if>
					</c:otherwise>



				</c:choose>






			</div>
		</div>
	</div>
	<jsp:include page="_footer.jsp"></jsp:include>


</body>
</html>