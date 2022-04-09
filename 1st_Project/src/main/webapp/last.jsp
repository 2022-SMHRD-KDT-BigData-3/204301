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
    background-color: beige;
}
form{
      /* Just to center the form on the page */
  margin: 0 auto;
  margin-top: 10%;
  width: 500px;

  /* To see the limits of the form */
  padding: 1em;
  border: 1px solid #CCC;
  border-radius: 1em;
  z-index: 10;
}
div{
    margin: 20px;
    padding: 10px;
    background-color: white;
    text-align: center;
    border-top-right-radius: 5%;
    border-top-left-radius: 5%;
    border-bottom-right-radius: 5%;
    border-bottom-left-radius: 5%;
}
﻿select {
     width:300px;
     padding:5px;
     border:1px solid #999;
     font-family:'Nanumgothic';
     background:url('https://i.ibb.co/98Vbb8L/gnb-bg.gif') no-repeat 95% 50%;
     border-radius:3px;
     -webkit-appearance: none;
     -moz-appearance: none;
     appearance : none;
}
select::-ms-expand {
   display: none;
}
form{
	text-align: center;
}
</style>
</head>
<body>
	<form>
		<div> 수고하셨습니다 멘트적는곳</div>
		<div>
			<details>
				<summary>개발팀</summary>
				스마트 인재 개발원 2431
			</details>
		</div>
		<a href="./main.jsp" type="button">처음으로</a>
		<form action="../main.jsp">
		<input name="url" type="submit" value="나가기">
	</form>
		<input name="x" type="submit" value="오답노트">
  	</form>
		   
  
</body>
</html>