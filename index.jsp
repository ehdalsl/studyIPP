<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%!
String str1 = "김동민";
String str2 = "안녕하세요..!!";
%>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav>
	<ul>
		<li><a href="input.jsp">명함입력</a></li>
		<li><a href="search.jsp">명함검색</a></li>
		<li><a href="index.jsp">홈으로</a></li>
		
	</ul>
</nav>


<h2>처음 만들어보는 <%= str1 %></h2>
   <p>
      <%
      out.println(str2 + str1 + "입니다. 열공합시다^^*");
      %>
   </p>
</body>
</html>