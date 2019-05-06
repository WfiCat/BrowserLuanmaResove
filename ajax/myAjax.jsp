<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>测试Ajax</title>
<!-- css代码域 -->
<style type="text/css">
#showDiv {
	border: 1px solid;
	width: 500px;
	height: 500px;
	margin: auto;
}
</style>
<!-- 声明js代码域 -->
<script type="text/javascript">
	function getData(){
		// ajax使用步骤
		// 1.创建Ajax引擎对象
		var ajax;
		if(window.XMLHttpRequest){ 
			// 火狐浏览器
			ajax = new XMLHttpRequest();
		}else if(window.ActiveXObject){
			// ie浏览器
			ajax = new ActiveXObject("MSxm12.XMLHTTP");
		}
		// 2.复写onreadystatechange函数
		ajax.onreadystatechange = function() {
			// 判断Ajax状态码
			if(ajax.readyState==4){
				var showDiv = document.getElementById("showDiv");
				// 判断响应状态码
				if(ajax.status==200){
						// 获取响应内容
						var result = ajax.responseText;
						showDiv.innerHTML = result;
				}else if(ajax.status==404){
					showDiv.innerHTML = "请求的资源不存在！"
				}else if(ajax.status==500){
					showDiv.innerHTML = "服务器繁忙！"
				}
		}
		}
		// 3. 发送请求
		ajax.open("get","aj2ax"); // get 参数在uri后
		ajax.send(null); // 用来传递post参数的
	}
</script>
</head>
<body>
	<input type="submit" value="测试" onclick="getData()" />
	<div id="showDiv"></div>
</body>
</html>