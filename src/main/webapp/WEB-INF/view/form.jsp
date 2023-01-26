<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/Form.css">

<title>新規登録</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
			String errorCode = request.getParameter("error");
			if(errorCode != null && errorCode.equals("1")){
		Account ac = (Account)session.getAttribute("input_data");
	%>
		<form action="RegisterConfirmServlet" method="post">
		<p style="color:red">登録に失敗しました。</p>
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