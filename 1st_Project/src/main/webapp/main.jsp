<%@page import="Model.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		height : 100%;
		width : 100%;
   		background-image: url("./img/bg-masthead.jpg");
   		background-repeat: no -repaet;
   		background-size : cover;
   		}
	#btn{
		width: 100px;
		height: 40px;
		position: absolute;
		bottom: 50%;
		left: 50%;
		margin-bottom:30px;
		berder:0px;
		background-coler: #E4EBF5;
		border-radius:10px;
		box-shadow:.8rem .5rem 1.4rem #BEC5D0, -.3rem -.4rem .8rem #FBFBFB;
		color: #333333;
		font-size: 1.em;
		font-weight: bord;
		aniamtion-name : keybtn-language;
		animation-duration: .2s;
	}
	#btn:active {
		box-shadow: inset -.3rem -.1rem 1.4rem #FBFBFB, inset .3rem .4rem .8rem #BEC5D0;
		cursor: pointer;
		}
</style>
<link rel="stylesheet" href="css/common.css"/>
</head>
<body>
	<% 
		userDTO info = (userDTO)session.getAttribute("info");
	%>

	<div id = "wrapper">
		<button id="btn" type = "button" onClick="location.href='survey.jsp'"> 게임시작 </button>		
			
	</div>

</body>
</html>