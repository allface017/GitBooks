<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
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
  font-size: 10px;
}

form input[type = "text"],form input[type = "password"],form input[type = "email"]{
  border: 0;
  background: none;
  display: block;
  margin: 10px auto;
  border: 2px solid #ff69b4;
  padding: 15px 10px;
  width: 200px;
  outline: none;
  border-radius: 24px;
  transition: 0.25s;
  text-align: center;
}

form input[type = "text"]:focus,form input[type = "password"]:focus,form input[type = "email"]:focus {
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
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
			String errorCode = request.getParameter("error");
			if(errorCode != null && errorCode.equals("1")){
		Account ac = (Account)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<form action="RegisterConfirmServlet" method="post">
		<h1>新規会員登録</h1>
			<p>メール：</p><input type="email" name="email" value="<%=ac.getMail()%>"><br>
			<p>パスワード：</p><input type="password" name="pw"><br>
			<p>名前：</p><input type="text" name="name" value="<%=ac.getName()%>"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<form action="RegisterConfirmServlet" method="post">
	<h1>新規会員登録</h1>
		<p>メール：</p><input type="email" name="email"><br>
		<p>パスワード：</p><input type="password" name="pw"><br>
		<p>名前：</p><input type="text" name="name"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>