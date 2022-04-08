<%@page import="Model.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/common.css">
<title>Insert title here</title>

</head>
<body>
	<% 
		userDTO info = (userDTO)session.getAttribute("info");
	%>

	<header class="header">
		<div class="inner">
			<ul class="header-menu">
				<li class="nav-item">
					<a href="./main.jsp"> HOME </a>
				</li>
				<li class="nav-item">
					<a href="./survey.jsp"> GAME </a>
				</li>
				<li class="nav-item">
					<a href="./statistics.jsp">	STATISTICS </a>
				</li>
				<li class="nav-item">
					<a href="./historic.jsp"> HISTORIC SITE </a>
				</li>
			</ul>
		</div>
	</header>

	<!-- <div class="bg-img"></div> -->
	<section class = "main">
		
	</section>
</body>
</html>