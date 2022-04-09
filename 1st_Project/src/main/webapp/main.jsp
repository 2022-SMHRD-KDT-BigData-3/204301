.<%@page import="Model.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/main.css">

<title> 2431 </title>

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

	<section class="main text-center">
    <div class="main-img"></div>
    <div class="main-text">
      <h3> SMHRD Big-Data 1st-Project </h3>
      <h1> 2431 </h1>
      <p> </p>
    </div>
  </section>

  <section class="sub-menu">
    <div class = "sub-item" id = "game">
      <img src="./img/map-location.png" alt="지도아이콘">
      <div>
        <h1> GAME </h1>
        <p> 지도 라이브러리를 이용하여 518 사적지에서 게임을 할 수 있다.</p>
      </div>
      <div class = "more">
        <button> <a href="./survey.jsp">더보기</a> </button>
      </div>
    </div>

    <div class = "sub-item" id = "statistics">
      <img src="./img/presentation.png" alt="통계아이콘">
      <div>
        <h1> STATISTICS </h1>
        <p> 게임을 통해 수집한 데이터를 지도, 막대, 워드클라우드 통계로 볼 수 있다. </p>
      </div>
      <div class = "more">
        <button> <a href="./statistics.jsp">더보기</a> </button>
      </div>
    </div>

    <div class = "sub-item" id = "historic">
      <img src="./img/historic.png" alt="사적지아이콘">
      <div>
        <h1> HISTORIC </h1>
        <p> 게임에 이용된 518 사적지들을 한눈에 볼 수 있게 만들어놓았다. </p>
      </div>
      <div class = "more">
        <button> <a href="./historic.jsp">더보기</a> </button>
      </div>
    </div>
  </section>
  
</body>
</html>