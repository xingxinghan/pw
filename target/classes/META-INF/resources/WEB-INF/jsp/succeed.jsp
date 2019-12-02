<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<!-- 引入JQuery  bootstrap.js-->
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	background: url(images/login_bg.jpg);
}

</style>
</head>
<body>

	<!-- 顶栏 -->
	<jsp:include page="/WEB-INF/jsp/top.jsp"></jsp:include>
	<!-- 中间主体 -->
	<div class="container">
		
		<div class="row" style="margin-top: 100px;">
			<div class="text-center" id="title">
				<h1 style="font-size:3em;font-family:LiSu">上网密码已重置为您的身份证后六位！<small><span id="begin">30</span>秒后跳转</small></h1>
			
			</div>
		
		</div>
		<br><br>
		<div class="row">
			<div class="col-md-12 col-md-offset-1">
				<h4>注意：此密码与如下学校统一身份认证平台的登录密码同步，请知悉！</h4>
			
			</div>
			
		</div>
		<br>
		<br>
		
		
		
		<div class="row">
			<div class="col-md-12 col-md-offset-1">
				<img src="images/notice1.png" width="644.5" height="365"/> 
				<img src="images/notice2.png" width="203.5" height="427.5" style="position:absolute; left:65%"/> 
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<!-- <div class="row">
			<div class="col-md-12 col-md-offset-12">
				<button type="button" class="btn btn-lg btn-warning" id="back">返回主页</button>
			</div>
		</div> -->
	</div>
<script>
   $('#back').click(function(){
	window.location.href='http://localhost:8080/'; 
	/* window.location.href='http://172.24.1.66:8080/';  */
})

	var t=30;
	    var timer=setInterval(time,1000);
	    var spans=document.getElementById("begin");
	    function time(){
	        t--;
	        spans.innerHTML='<span>'+t+'</span>';
	        if (t==0){
	            clearInterval(timer);
	          /* return window.location.href='http://localhost:8080/'; */ 
				/* return window.location.href='http://172.24.1.66:8080/';  */
	return window.location.href='http://172.24.1.18:8080/';
	        }console.log(t);
	    }


	
</script>
	
</body>
</html>