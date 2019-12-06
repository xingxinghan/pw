﻿<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>上网密码重置系统</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
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
				<h1 style="font-size:3em;font-family:LiSu">身份证号输入错误，请重新输入！<small><span id="begin">3</span>秒后跳转</small></h1>
			
			</div>
		
		</div>
	</div>
	<p visibility="hidden"><span id="begin"></span></p>
	<script>
	    var t=3;
	    var timer=setInterval(time,1000);
	    var spans=document.getElementById("begin");
	    function time(){
	        t--;
	        spans.innerHTML='<span>'+t+'</span>';
	        if (t==0){
	            clearInterval(timer);
				return window.location.href='../';
	        }console.log(t);
	    }
	
		
	</script>
	
</body>

</html>


