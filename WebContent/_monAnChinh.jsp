<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Sample.Dao.produceDAO"%>
<%@page import="Sample.Entity.produce"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="DBConnec.function"%>
<div class="monxao">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<div class="danhmuc1">Món Ăn Chính</div>
	</div>
	<!-- LẤY DỮ LIỆU SẢN PHẨM TỪ DATABASE DM1  -->
	<%
		List<produce> listSanPham= produceDAO.getListProduce2("1");
		for (produce x : listSanPham) {
			out.println("<div class=\"col-xs-12 col-sm-4 col-md-3\">");
			out.println("<div class=\"thumbnail\">");
			out.println("<a href=\"#\">");
			out.println("<img width=\"100%\" max-height = 150px src=\"" + x.getImages()+ "\" alt=\"...\">");
			out.println("</a>");
			out.println("<div class=\"caption\">");
			out.println("<div class=\"title\">" + x.getTitle() + "</div>");
			out.println("<div class=\"price\">" + x.getPrice() + "</div>");
			out.println("<a href=\"cart?action=addtocart&code="+x.getCode()+"&title="+x.getTitle()+"&price="+x.getPrice()+"&image="+x.getImages()+"\">	<div class=\"btn-cart\" >");
			out.println("</div></a>");
			out.println("</div>");
			out.println("</div>");
			out.println("</div>");

		}
	%>
</div>

