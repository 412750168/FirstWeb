<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Insert title here</title>
<script>
	function checkhHtml5() {
		if (typeof (Worker) !== "undefined") {
			alert("支持HTML5");
		} else {
			alert("不支持HTML5");
		}
	}

	$.validator.setDefaults({
		submitHandler : function() {
			alert("提交事件!");
		}
	});

	$().ready(
			function() {
				// 提交时验证表单
				var validator = $("#form1").validate(
						{
							errorPlacement : function(error, element) {
								// Append error within linked label
								$(element).closest("form").find(
										"label[for='" + element.attr("id")
												+ "']").append(error);
							},
							errorElement : "span",
							messages : {
								user : {
									required : " (必需字段)",
									minlength : " (不能少于 3 个字母)"
								},
								password : {
									required : " (必需字段)",
									minlength : " (字母不能少于 5 个且不能大于 12 个)",
									maxlength : " (字母不能少于 5 个且不能大于 12 个)"
								}
							}
						});

				$(".cancel").click(function() {
					validator.resetForm();
				});
			});
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
	<br>
	<br>

	<form method="get" class="cmxform" id="form1" action="">
		<fieldset>
			<legend>登录框</legend>
			<p>
				<label for="user">用户名</label> <br> <input id="user" name="user"
					required minlength="3">
			</p>
			<p>
				<label for="password">密码</label> <br> <input id="password"
					type="password" maxlength="12" name="password" required
					minlength="5">
			</p>
			<p>
				<input class="submit" type="submit" value="Login">
			</p>
		</fieldset>
	</form>
</body>
</html>