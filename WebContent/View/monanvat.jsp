<%@page import="Bean.produce"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="DBConnec.function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thực Phẩm Giá Rẻ</title>
<!-- Local bootstrap CSS & JS -->
<link rel="stylesheet" media="screen" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
</head>
<body onload="play1()" >
	<jsp:include page="_headder.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="_nav.jsp"></jsp:include>
		<jsp:include page="_danhMuc.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="_aside.jsp"></jsp:include>
			<div class="colum2">
				<%
		function fn = new function();
		fn.openConnection("sa", "123", "foodStore");
		ArrayList<produce> listproduce = fn.showProduce("SELECT * FROM  PRODUCE WHERE IDCATEGORIES = 3");
		for (produce x : listproduce) {
			out.println("<div class=\"col-xs-12 col-sm-4 col-md-3\">");
			out.println("<div class=\"thumbnail\">");
			out.println("<a href=\"#\">");
			out.println("<img width=\"100%\" max-height = 150px src=\"" + x.getImage() + "\" alt=\"...\">");
			out.println("</a>");
			out.println("<div class=\"caption\">");
			out.println("<div class=\"title\">" + x.getTitle() + "</div>");
			out.println("<div class=\"price\">" + x.getPrice() + "</div>");
			out.println("<a href=\"cart?action=addtocart&code="+x.getCode()+"&title="+x.getTitle()+"&price="+x.getPrice()+"&image="+x.getImage()+"\">	<div class=\"btn-cart\" >");
			out.println("</div></a>");
			out.println("</div>");
			out.println("</div>");
			out.println("</div>");

		}
	%>
			</div>
		</div>
	</div>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</body>
</html>