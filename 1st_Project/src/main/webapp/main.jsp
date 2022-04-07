<%@page import="Model.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
  margin: 0;
  padding: 0;
}

.bg-img{
  background-image: url("./img/bgimg3.png");
  height: 900px;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}

body {
  color: #333;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.4;
  font-family: 'Nanum Gothic', sans-serif;
  overflow: hidden;
}

/* COMMON */
.inner {
  width: 1100px;
  margin: 0 auto;
  position: relative;
}

a{
  text-decoration: none;
  color: #fff;
  font-weight: 700;
}

.inner li:hover {
  transition: .5s;
  transform: translateY(-10px);
  cursor: pointer;
}

/* HEADER */
header {
  background-color: #000;
  border-bottom: 1px solid #c8c8c8;
  /* position: relative; */
  width: 100%;
  top: 0;
  z-index: 9;
}

header > .inner { 
  height: 80px;
}

header > .inner .logo {
	background-image: url("./img/logo.png");
    border: 0;
    display: inline-block;
    font-size: 0.8em;
    line-height: inherit;
    padding: 0 1.5em;
}

header .header-menu {
  bottom: 0;
  right: 0;
  z-index: 1;
  text-align: center;
}

header .header-menu .nav-item{
  padding-top: 30px;
  margin-right: 50px;
  display: inline-block;
}
</style>

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

	<div class="bg-img"></div>
</body>
</html>