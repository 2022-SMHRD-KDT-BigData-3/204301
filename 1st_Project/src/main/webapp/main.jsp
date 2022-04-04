<%@page import="Model.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/common.css"/>
</head>
<body>
	<% 
		userDTO info = (userDTO)session.getAttribute("info");
	%>
	
	<div id = "wrapper">
		<button type = "button" onClick="location.href='survey.jsp'"> 게임시작 </button>		
			
	</div>
		
</body>
</html>