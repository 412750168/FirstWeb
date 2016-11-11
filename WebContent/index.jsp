<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/test.js">
	
</script>
<title>Insert title here</title>
</head>

<body>
	This is only to test!!!你好啊！！！！
	<br>

	<img alt="Image" src="./images/flower.jpg">
	<img alt="Image" src="./images/code.gif">
	<br>
	<br>
	<%
		//驱动程序名 
		String driverName = "com.mysql.jdbc.Driver";
		//数据库用户名 
		String userName = "root";
		//密码 
		String userPasswd = "love565218";
		//数据库名 
		String dbName = "test";
		//表名 
		String tableName = "User";
		//联结字符串 
		String url = "jdbc:mysql://localhost:3307/" + dbName + "?user=" + userName + "&password=" + userPasswd;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection connection = DriverManager.getConnection(url);
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM " + tableName;
		ResultSet rs = statement.executeQuery(sql);
		//获得数据结果集合 
		ResultSetMetaData rmeta = rs.getMetaData();
		//确定数据集的列数，亦字段数 
		int numColumns = rmeta.getColumnCount();
		// 输出每一个数据值 
		out.print("id");
		out.print("|");
		out.print("num");
		out.print("<br>");
		while (rs.next()) {
			out.print(rs.getString(2) + " ");
			out.print("|");
			out.print(rs.getString(3));
			out.print("<br>");
		}
		out.print("<br>");
		out.print("数据库操作成功，恭喜你!!!<br>");
		
		out.print("session::"+session.toString());
		rs.close();
		statement.close();
		connection.close();
		
	%>

	<form action="HiberateServlet" method="post">
		<input type="submit" value="提交">
	</form>

	<form action="login.action" method="post">
		<input type="text" name="username" size="10"> <input
			type="password" name="password" size="10"> <input
			type="submit" value="提交">
	</form>

	<br>
	<br> ---------------------->
	<form>
		<input type="button" style='font-size: 40px' value="Start"
			onclick="start()"> <input type="button"
			style='font-size: 40px' value="Stop" onclick="stop();">
	</form>
	<br>&nbsp;&nbsp;&nbsp;&nbsp;
	<font color="blue" style='font-size: 150px' id="num"></font>
	<br>
	<br>

	<c:out value="this jstl 测试！！"></c:out>

	<br>
	<br> ------------------->
	<form action="UpfileServlet" enctype="multipart/form-data"
		method="post">

		SelectImage: <input type="file" name="myfile" /><br> 
		<input type="file" name="myfile2" /><br> 
		<input type="file" name="myfile3" /><br> 
		<input
			type="submit" value="upload" />
	</form>

</body>
</html>