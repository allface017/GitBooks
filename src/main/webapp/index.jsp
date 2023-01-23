<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/4231.ico">
<title>究極図書管理システム</title>

</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
		<p style="color:red">ログイン失敗</p>
	<form action="LoginServlet" method="post">
		【IDとPWを入力してください。】<br>
		ログインID：<input type="text" name="mail" value="<%=request.getParameter("mail") %>"><br>
		PW：<input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="RegisterFormServlet">新規アカウント登録はこちら</a>
	<%
		} else {
	%>
	<form action="LoginServlet" method="post">
		【IDとPWを入力してください。】<br>
		ログインID：<input type="text" name="mail"><br>
		PW：<input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="RegisterFormServlet">新規アカウント登録はこちら</a>
	<%
		} 
	%>
	
	
</body>
</html>