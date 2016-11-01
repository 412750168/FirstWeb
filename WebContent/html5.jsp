<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function checkhHtml5() {
		if (typeof (Worker) !== "undefined") {
			alert("支持HTML5");
		} else {
			alert("不支持HTML5");
		}
	}

</script>
<style type="text/css">
#myCanvas {
	background: red;
	width: 200px;
	height: 100px;
}
</style>
</head>
<body>
	<c:out value="this jstl 测试！！"></c:out>
	<canvas id="myCanvas">不支持html5</canvas>
	<P>Hello World 你好啊！！！</P>
	<input type="button" style='font-size: 40px' value="Check"
			onclick="checkhHtml5()">
</body>
</html>