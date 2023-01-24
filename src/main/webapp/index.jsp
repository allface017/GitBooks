<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/4231.ico">
<style>
body {
  background-color: gray;
}

form {
  width: 400px;
  padding: 40px 10px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background-color: #000;
  text-align: center;
}

form h1,form p {
  color: white;
  font-weight: 500;
}

form p {
  font-size: 15px;
}
from a{
  font-size: 40px;
}
form input[type = "text"],form input[type = "password"] {
  border: 0;
  background: none;
  display: block;
  margin: 20px auto;
  border: 2px solid #ff69b4;
  padding: 15px 10px;
  width: 200px;
  outline: none;
  border-radius: 24px;
  transition: 0.25s;
  text-align: center;
}

form input[type = "text"]:focus,form input[type = "password"]:focus {
  width: 280px;
  background-color: white;
}

form input[type = "submit"]{
  border: 0;
  background: none;
  display: block;
  margin: 20px auto;
  border: 2px solid #f0f8ff;
  padding: 15px 10px;
  width: 200px;
  outline: none;
  color: white;
  border-radius: 25px;
  transition: 0.25s;
  text-align: center;
  cursor: pointer;
}

form input[type = "submit"]:hover {
  background-color: #ff69b4;
  border: 2px solid #ff69b4;
}

</style>
<title>究極図書管理システム</title>

</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
	<form action="LoginServlet" method="post">
		<p style="color:red">ログイン失敗</p>
		<p>【IDとPWを入力してください。】<p><br>
		<p>ログインID：<p><input type="text" name="mail" value="<%=request.getParameter("mail") %>"><br>
		<p>PW：<p><input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	<a href="RegisterFormServlet">新規アカウント登録はこちら</a>
	</form>
	<%
		} else {
	%>
	<form action="LoginServlet" method="post">
		<p>【IDとPWを入力してください。】<p><br>
		<p>ログインID：<p><input type="text" name="mail"><br>
		<p>PW：<p><input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	<a href="RegisterFormServlet">新規アカウント登録はこちら</a>
	</form>
	<%
		} 
	%>
	
	
</body>
</html>