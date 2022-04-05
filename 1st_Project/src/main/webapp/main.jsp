<%@page import="Model.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/main.css"/>
</head>
<body>
	<% 
		userDTO info = (userDTO)session.getAttribute("info");
	%>
	
	<div id = "wrapper">
		<div class="lb-text">
            <p class = "text"> 게임 이름 </p>
            <p class = "text"> 게임 설명 </p>
            <p class = "text"> 2431 </p>
        </div>
        <button type = "button" class = "btn" onClick="location.href='survey.jsp'"> 게임시작 </button>	

        <img src="./imgs/img3.jpg" alt="" id="bg_img">			
	</div>
		
</body>
</html>