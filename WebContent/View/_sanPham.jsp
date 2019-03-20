<%@page import="Bean.produce"%>
<%@page import="DBConnec.function"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!-- KHỞI TẠO GIÁ TRỊ BAN ĐẦU CHO BIẾN PAGEID -->

<c:set var="pageid" value="${param.pageid}"></c:set>
<sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=foodStore" user="sa"
	password="123" var="con" />
<sql:query var="rs" dataSource="${con}">
SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY CODE) AS RowNum FROM PRODUCE) AS MyDerivedTable
WHERE MyDerivedTable.RowNum BETWEEN ${(pageid-1)*6 +1} AND ${(pageid-1)*6 +6}
</sql:query>
<div class="sanpham">
	<table class="table table-hover  table-bordered  ">
		<thead>
			<tr>
				<th>Mã Sản Phẩm</th>
				<th>Tên Sản Phẩm</th>
				<th>Hình Ảnh</th>
				<th>Giá</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="dong" items="${rs.rows}">
				<tr>
					<td>${dong.CODE}</td>
					<td>${ dong.title}</td>
					<td><img width="70px" height="70px" src="${dong.images}"
						alt="sanpam${dong.code}"></td>
					<td>${dong.price}</td>
					<td>
						<form action="produceDAO" method="get">
							<input type="hidden" value="${dong.code}" name="txtcode"></input>
							<input type="hidden" value="${dong.title}" name="txttitle"></input>
							<input type="hidden" value="${dong.images}" name="txtimages"></input>
							<input type="hidden" value="${dong.price}" name="txtprice"></input>
							<input class="btn btn-danger btn-sm" type="submit" value="Delete"
								name="action" /> <input class="btn btn-warning btn-sm"
								type="submit" value="Edit" name="action" />
						</form>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="7"><input class="btn btn-success btn-sm"
					type="submit" value="Thêm Sản Phẩm" name="action" /></td>
			</tr>
		</tbody>
	</table>
</div>

<c:catch var="loi">
</c:catch>
<!-- NẾU CÓ YÊU CẦU CHUYỂN TRANG CỦA NGƯỜI DÙNG THÌ SET GIÁ TRỊ CHO BIẾN PAGE -->
<c:set var="pageid" value="${param.pageid}"></c:set>
<c:if test="${not empty error }">
	<c:out value="${error }"></c:out>
</c:if>


<!-- LẤY SỐ LƯỢNG SẢN PHẨM  -->


<sql:query var="rs" dataSource="${con}">
SELECT COUNT (*) AS SLSP FROM PRODUCE
</sql:query>
<c:forEach var="dong" items="${rs.rows}">
	<c:set var="SLSP" value="${dong.SLSP}"></c:set>
</c:forEach>

<!-- NHẢY SỐ LƯỢNG TRANG TỰ DỘNG  -->


<ul class="pagination">
	<c:if test="${pageid >1}">
		<li><a href="?pageid=${pageid-1 }">&laquo;</a></li>
	</c:if>
	<c:set var="i" value="0"></c:set>
	<c:forEach begin="1" end="${SLSP }" step="6">
		<c:set value="${i +1 }" var="i"></c:set>
		<li><a href="?pageid=${i}"> ${i} </a></li>
	</c:forEach>
	<c:if test="${pageid < 5}">
		<li><a href="?pageid=${pageid+1 }">&raquo;</a></li>
	</c:if>
</ul>

<c:if test="${not empty loi }">
	<c:out value="${loi}"></c:out>
</c:if>