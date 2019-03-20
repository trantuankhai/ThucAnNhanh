<%@page import="Sample.Entity.produce"%>
<%@page import="java.util.List"%>
<%@page import="Sample.Dao.produceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<produce> list = produceDAO.getListProduce("1");
		for (produce a : list) {
			out.println(a.getCode());
			out.println(a.getImages());
			out.println(a.getTitle());
			out.println(a.getPrice());

		}
	%>
</body>
</html>