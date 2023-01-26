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
<title>削除画面</title>
</head>
<body>

<table border="1">

		<tr>
			<th><p>図書名</p></th>
			<th><p>著者名</p></th>
			<th><p>出版社名</p></th>
			
		</tr>
	<%
	List<Library> list = (ArrayList<Library>)request.getAttribute("list");
		for(Library s : list) {
	%>
		<tr>
			<td><p><%=s.getName() %></p></td>
			<td><p><%=s.getAuthor() %></p></td>
			<td><p><%=s.getPublisher() %></p></td>
		</tr>
	<%} %>
	</table>
	<h1>削除する図書名を入力してください</h1>
	<form action="DeleteBookServlet" method="post">
		名前：<input type="text" name="name"><br>
		<input type="submit" value="削除">
	</form>
		<a href="TopServlet">戻る</a>
</body>
</html>