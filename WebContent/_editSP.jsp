<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="sanpham">
	<div class="sanpham">
		<form action = "produceDAO" method="get" >
			<div class="form-group">
				<label>MÃ SẢN PHẨM</label> <input type="text" name="codeUpdate" readonly value="${code}" class="form-control">
			</div>
			<div class="form-group">
				<label>TÊN SẢN PHẨM</label> <input type="text" name="titleUpdate" value="${title}" class="form-control">
			</div>
			<div class="form-group">
				<label>HÌNH ẢNH</label> <input type="text" name="imageUpdate" value="${image}" class="form-control">
			</div>
			<div class="form-group">
				<label>GIÁ SẢN PHẨM</label> <input type="text"
				value="${price}"name="priceUpdate"	class="form-control">
			</div>
			<input type="submit" value="Update" name ="action" class="btn btn-default">
			<input type="submit" value="Back" name ="action" class="btn btn-default">

		</form>
	</div>
</div>