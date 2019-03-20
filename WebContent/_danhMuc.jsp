<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">

	<div class="danhmuc">
		<ul>

			<li
				style="background-color: #cc3300; font-weight: bold; font-size: 25px; color: white; padding-left: 10px; width: auto; height: 38px;">
				<img src="icon/danh-muc.png" alt=""> Thực Đơn
			</li>
			<li><img src="logo/icon.png" alt=""><a href="monanchinh.jsp">Món Ăn Chính</a></li>
			<li><img src="logo/icon.png" alt=""><a href="monxao.jsp">Món Xào
					</a></li>
			<li><img src="logo/icon.png" alt=""><a href="monanvat.jsp">Món Ăn
					Vặt</a></li>
			<li><img src="logo/icon.png" alt=""><a href="comchien.jsp">Cơm Chiên</a></li>
			<li style="border: none; margin-bottom: 0px;"><img
				src="logo/icon.png" alt=""><a href="douong.jsp">Đồ Uống</a></li>
		</ul>
	</div>

	<div class="slider">
		<img src="banner/aa.jpg" alt="slider" id="sliderr">
	</div>
	
	<script type="text/javascript">
	
	var anh = ["aa.jpg","bb.jpg"];
	  var dem = 0;
	  function next1(){
	    if(dem < anh.length){
	      document.getElementById('sliderr').src="banner/"+anh[dem];
	            dem++;

	    }else{
	      dem=0;
	            document.getElementById('sliderr').src="banner/"+anh[dem];


	    }


	  }
	  var t;
	  function play1(){
	    t= setInterval(next1,2000);
	  }


	function stop1(){
	  clearInterval(t);
	}
	
	</script>
</div>
