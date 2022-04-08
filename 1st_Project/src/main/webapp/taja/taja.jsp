<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="tajacss.css">

</head>
<body>


	<div class="card">
		<h1 class="entry-title">타자게임 설명을 적을 것!</h1>
	</div>
	<div id="contents">

		<div id="info">
			<div id="score"></div>
			<div id="life"></div>
		</div>
		<div id="tajaContents"></div>
		<div id="inputContents">
			<div id="inputText">
				<input type="text" id="tajaText" />
			</div>
			<div id="inputBtn">
				<button id="tajaBtn">시작하기</button>
			</div>
		</div>
	</div>
	<form action="../exitServiceCon">
    <input name="url" type="submit" value="나가기">
	</form>
	<script src="tajajsjs.js"></script>
</body>
</html>