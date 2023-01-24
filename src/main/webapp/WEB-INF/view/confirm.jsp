<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/FromConfirm.css">
<title>確認画面</title>
</head>
<body>
	<p>下記の内容で登録します。よろしいですか？</p>
	<%
	Account account18 = (Account)session.getAttribute("input_data");
	%>
	<p>名前：<%=account18.getName() %></p><br>
	<p>メール：<%=account18.getMail() %></p><br>
	<p>パスワード：********</p><br>
	<a href="RegisterExecuteServlet">OK</a><br>
	<a href="RegisterFormServlet">戻る</a>
</body>
</html>