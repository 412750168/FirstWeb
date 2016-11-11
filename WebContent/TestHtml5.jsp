<%@page import="com.opensymphony.xwork2.inject.util.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>

<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css">
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>

<style type="text/css">
#myCanvas {
	background: red;
	width: 2000px;
	height: 1000px;
	size: 500px;
}

.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
	font-size: 16px;
}

.dropdown {
	width: 100%;
	position: relative;
	display: inline-block;
	position: relative;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	width: 100%;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}

div.background {
	width: 100%px;
	height: 250px;
	background: url(klematis.jpg) repeat;
	border: 2px solid black;
}

div.transbox {
	width: 100%px;
	height: 180px;
	margin: 30px 50px;
	background-color: #ffffff;
	border: 1px solid black;
	opacity: 0.6;
	filter: alpha(opacity = 60); /* IE8 及更早版本 */
}

div.transbox p {
	margin: 30px 40px;
	font-weight: bold;
	color: #000000;
}

#rcorners4 {
	border-radius: 15px 50px 30px 5px;
	background: #8AC007;
	padding: 20px;
	width: 200px;
	height: 150px;
}

#rcorners5 {
	border-radius: 15px 50px 30px;
	background: #8AC007;
	padding: 20px;
	width: 100%px;
	height: 150px;
}

#rcorners6 {
	border-radius: 15px 50px;
	background: #8AC007;
	padding: 20px;
	width: 200px;
	height: 150px;
}

div.animation
{
	width:100px;
	height:100px;
	background:red;
	position:relative;
	animation-name:myfirst;
	animation-duration:5s;
	animation-timing-function:linear;
	animation-delay:2s;
	animation-iteration-count:infinite;
	animation-direction:alternate;
	animation-play-state:running;
	/* Safari and Chrome: */
	-webkit-animation-name:myfirst;
	-webkit-animation-duration:5s;
	-webkit-animation-timing-function:linear;
	-webkit-animation-delay:2s;
	-webkit-animation-iteration-count:infinite;
	-webkit-animation-direction:alternate;
	-webkit-animation-play-state:running;
}

@keyframes myfirst
{
	0%   {background:red; left:0px; top:0px;}
	25%  {background:yellow; left:200px; top:0px;}
	50%  {background:blue; left:200px; top:200px;}
	75%  {background:green; left:0px; top:200px;}
	100% {background:red; left:0px; top:0px;}
}

@-webkit-keyframes myfirst /* Safari and Chrome */
{
	0%   {background:red; left:0px; top:0px;}
	25%  {background:yellow; left:200px; top:0px;}
	50%  {background:blue; left:200px; top:200px;}
	75%  {background:green; left:0px; top:200px;}
	100% {background:red; left:0px; top:0px;}
}
</style>
<script type="text/javascript">
	function gradeChange() {
		var objS = document.getElementById("pid");
		var grade = objS.options[objS.selectedIndex].value;
		alert(grade);
	}

	function a_test() {
		alert("Test the alert");
	}
</script>
<title>这个是测试html的页面！！</title>
</head>
<body>
	<br>
	<br>

	<div data-role="page" id="pageone">
		<div data-role="header">
			<h1>欢迎访问我的主页</h1>
		</div>

		<div data-role="content">
			<a href="http://baidu.com">去百度搜索啊</a> <br> <br>

			<h2>下拉菜单</h2>
			<p>鼠标移动到按钮上打开下拉菜单。</p>

			<div class="dropdown">
				<button class="dropbtn">下拉菜单</button>
				<div class="dropdown-content">
					<a onclick="a_test()">菜鸟教程 1</a> <a
						href="http://www.runoob.com/try/try.php?filename=trycss_dropdown_navbar">菜鸟教程
						2</a> <a href="http://www.runoob.com">菜鸟教程 3</a>
				</div>
			</div>

			<h1 align="center">成语词条列表！！</h1>
			<dl text-align="justify">
				<dt>知无不言，言无不尽</dt>
				<dd>知道的就说，要说就毫无保留。</dd>
				<dt>智者千虑，必有一失</dt>
				<dd>不管多陪明的人，在很多次的考虑中，也一定会出现个别错误！!</dd>
			</dl>

			<br> <br>

			<table summary="这个是table的表格，非常多的数据要使用！！" border="21px"
				bordercolor="#22222211" width="100%px">
				<caption>字符串222222</caption>
				<tr>
					<td>十进制</td>
					<td>十六进制</td>
					<td>字符</td>
				</tr>
				<tr>
					<td>二进制</td>
					<td>六进制</td>
					<td>字符</td>
				</tr>
			</table>

			<br> <br> <br> <select id="pid"
				onchange="gradeChange()" width="100%px">
				<option value="1" width="100%px">选项1</option>
				<option value="2" width="100%px">选项2</option>
				<option value="3" width="100%px">选项3</option>
			</select> <br> <br> <a href="#" tabindex="1">Tab 1</a> <a href="#"
				tabindex="3">Tab 3</a> <a href="#" tabindex="2">Tab 2</a> <br>
			<img src="./images/add.gif" alt="这是图片的替换文本" src="图片"> <br>
		  	<video src="./video/vid_bigbuckbunny.mp4" controls="controls"
				width="100%px">video元素</video> 

			<br> <br />
			<div class="background">
				<div class="transbox">
					<p>这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。
					</p>
				</div>
			</div>
			<br>
			<p>四个值 - border-radius: 15px 50px 30px 5px:</p>
			<p id="rcorners4"></p>

			<p>三个值 - border-radius: 15px 50px 30px:</p>
			<p id="rcorners5"></p>

			<p>两个值 - border-radius: 15px 50px:</p>
			<p id="rcorners6"></p>
			<br>
			<div class="animation"></div>
			
			<br> <br> 
			<div>
			<a href="#pagetwo" data-transition="slide">转到页面二</a>
			</div>
			<br>

		</div>
		<div data-role="footer" id="footer">
			<h1>页脚文本</h1>
		</div>
	</div>

	<div data-role="page" id="pagetwo">
		<div data-role="header">
			<h1>欢迎访问我的主页</h1>
		</div>

		<div data-role="content">
			<p>
				点击链接返回页面一。<b>注释：</b>：fade 是默认效果。
			</p>
			<a href="#pageone">返回页面一</a>
		</div>

		<div data-role="footer">
			<h1>页脚文本</h1>
		</div>
	</div>
	<br>

</body>
</html>

