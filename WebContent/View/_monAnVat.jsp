<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Bean.produce"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="DBConnec.function"%>
<div class="monxao">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<div class="danhmuc3">Món Ăn Vặt</div>
	</div>
	<!-- LẤY DỮ LIỆU SẢN PHẨM TỪ DATABASE  -->
	<%
		function fn = new function();
		fn.openConnection("sa", "123", "foodStore");
		ArrayList<produce> listproduce = fn.showProduce("SELECT TOP 4 * FROM  PRODUCE WHERE IDCATEGORIES = 3");
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

