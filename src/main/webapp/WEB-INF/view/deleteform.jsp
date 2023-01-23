<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Library" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>削除画面</title>
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
		for(Library s : list) {
	%>
		<tr>
			<td><%=s.getName() %></td>
			<td><%=s.getAuthor() %></td>
			<td><%=s.getPublisher() %></td>
		</tr>
	<%} %>
	</table>
	<h1>削除するnameを入力してください</h1>
	<form action="DeleteBookServlet" method="post">
		名前：<input type="text" name="name"><br>
		<input type="submit" value="削除">
	</form>
</body>
</html>