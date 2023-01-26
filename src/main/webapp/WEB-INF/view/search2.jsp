<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Library" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/library.css">
<title>検索</title>
</head>
<body>
	
	<table border="1">
		<tr>
			<th>図書名</th>
			<th>著者名</th>
			<th>出版社名</th>
		</tr>
	<%
	List<Library> list = (ArrayList<Library>)request.getAttribute("list");
		 for(Library ee : list){
	%>
		<tr>
			<td><%=ee.getName() %></td>
			<td><%=ee.getAuthor() %></td>
			<td><%=ee.getPublisher() %></td>
		</tr>
	<%
		 }
	%>
	</table>
	<a href = "RegisterFormServlet">登録画面へ</a>
	<a href="TopServlet">戻る</a>
</body>
</html>