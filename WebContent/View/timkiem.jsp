<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="Bean.produce"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="DBConnec.function"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kết Quả Tìm Kiếm</title>
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
				<c:catch var="eror">
					<c:choose>

						<c:when test="${empty key }">

							<c:out value="CHuổi bạn vừa nhập rỗng ">
							</c:out>
						</c:when>

						<c:otherwise>
							<sql:setDataSource
								driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
								url="jdbc:sqlserver://localhost:1433;databaseName=foodStore"
								user="sa" password="123" var="con" />

							<c:if test="${empty con}">
								<c:out value="Chưa có kết kết nối với DataBase"></c:out>
							</c:if>

							<sql:query dataSource="${con}" var="rs">
							 SELECT IMAGES ,TITLE ,PRICE FROM PRODUCE WHERE TITLE LIKE N'%${key}%'
							</sql:query>

							<c:if test="${empty rs.rows }">
								<c:out value="Không Tìm Thấy Kết Quả Phù Hợp"></c:out>
							</c:if>
							<c:forEach var="dong" items="${rs.rows}">
								<div class="col-xs-12 col-sm-4 col-md-3">
									<div class="thumbnail">
										<a href="#"> <img width="100%" max-height=150px
											src="${dong.IMAGES}" alt="..."></a>
										<div class="caption">
											<div class="title">${dong.TITLE}</div>

											<div class="price">${dong.PRICE}</div>
											<a
												href="cart?title=${dong.TITLE}&price=${dong.PRICE}&image=${dong.IMAGES}">
												<div class="btn-cart">"</div>
											</a>
										</div>
									</div>
								</div>
							</c:forEach>

						</c:otherwise>
					</c:choose>
				</c:catch>
				<c:if test="${not empty eror }">
					<c:out value="${eror }"></c:out>
				</c:if>
			</div>
		</div>
	</div>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>