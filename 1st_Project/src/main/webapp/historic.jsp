<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.ArrayList" %>
<%@ page import="Model.placeDTO"%>
<%@ page import="Model.placeDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS -->
<link rel="stylesheet" href="./css/historic.css">
<style>
@font-face{
	font-family: 'LeeSeoyun';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/LeeSeoyun.woff') format('woff');
	font-weight: normal;
	font-style: normal;
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

.list_wrap .item p {
  font-size: 13px;
  letter-spacing: -1px;
  font-family: 'LeeSeoyun';
}
</style>	
</head>
<body>

<% 
	placeDAO dao = new placeDAO();
	ArrayList<placeDTO> placeinfo = dao.placeinfo();
%>

	<header class = "header">
	    <div class="inner">
	      <ul class="header-menu">
	        <li class="nav-item"> 
	          <a href="./main.jsp"> HOME </a>
	        </li>
	        <li class="nav-item">
	          <a href="./survey.jsp"> GAME </a>
	        </li>
	        <li class="nav-item">
	          <a href="./statistics.jsp"> STATISTICS </a>
	        </li>
	        <li class="nav-item">
	          <a href="./historic.jsp"> HISTORIC SITE </a>
	        </li>
	      </ul>
    	</div>
  </header>

  <main class="main">
    <div class="list_wrap"> <!-- slider -->
      <input type="radio" name="slide-radios" class = "slide-radio" checked id = "slide-radio1">
      <input type="radio" name="slide-radios" class = "slide-radio" id = "slide-radio2">
      <input type="radio" name="slide-radios" class = "slide-radio" id = "slide-radio3">
      <input type="radio" name="slide-radios" class = "slide-radio" id = "slide-radio4">
      <input type="radio" name="slide-radios" class = "slide-radio" id = "slide-radio5">
      <input type="radio" name="slide-radios" class = "slide-radio" id = "slide-radio6">

	  <% for(int j = 0; j < 6; j++) { %>
		  <ul class = "slide" id = <%= "slide"+(j+1) %>>
		  <% 
		  	int num = (j*6)+6;
		  	if(j == 5){
		  		num = 32;
		  	}
		  %>
		  	<% for(int i = (j*6); i < num; i++) { %>
		  		<li class = <%= "item item" + (13+i) %>>
		  			<div class="image" style = <%="background-image:url(" + placeinfo.get(i).getPath() +");" %> > 사진 </div>
		  			<div class="cont">
		  				<Strong> <%= placeinfo.get(i).getPlaceid() %></Strong>
		  				<p> <%= placeinfo.get(i).getExplanation() %> </p>
		  			</div>
		  		</li>
		   <% } %>
		   </ul>
	  	<% } %>
      <div class="bullets">
        <label for="slide-radio1">&nbsp;</label>
        <label for="slide-radio2">&nbsp;</label>
        <label for="slide-radio3">&nbsp;</label>
        <label for="slide-radio4">&nbsp;</label>
        <label for="slide-radio5">&nbsp;</label>
        <label for="slide-radio6">&nbsp;</label>
      </div>

    </div>
  </main>
</body>

</html>