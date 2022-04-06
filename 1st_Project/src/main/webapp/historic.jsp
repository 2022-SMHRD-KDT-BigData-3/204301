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
	          <a href="./main.html"> HOME </a>
	        </li>
	        <li class="nav-item">
	          <a href="./survey.html"> GAME </a>
	        </li>
	        <li class="nav-item">
	          <a href="./statistics.html"> STATISTICS </a>
	        </li>
	        <li class="nav-item">
	          <a href="./historic.html"> HISTORIC SITE </a>
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

      <ul class = "slide" id = "slide1">
        <li class = "item item1">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 구 광주적십자병원 </Strong>
            <p> 이 병원은 5·18민주화운동 당시에는 광주적십자병원으로, 부상당한 시민과 시민군을 헌신적으로 치료하고 돌본 곳이다. </p>
          </div>
        </li>
        <li class = "item item2">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item3">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item4">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item5">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item6">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
      </ul>

      <ul class = "slide" id = "slide2">
        <li class = "item item7">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item8">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item9">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item10">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item11">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
        <li class = "item item12">
          <div class="image"> 사진 </div>
          <div class="cont">
            <Strong> 사적지 이름 </Strong>
            <p> 사적지 설명 </p>
          </div>
        </li>
      </ul>
	
	  <ul class = "slide" id = "slide3">
	  	<% for(int i = 0; i < 6; i++){ %>
	  		<% System.out.println(placeinfo.get(i).getPath()); %>
	  		<li class = <%= "item item" + (13+i) %>>
	  			<div class="image" style = <%="background-image:url(" + placeinfo.get(i).getPath() +");" %> > 사진 </div>
	  			<div class="cont">
	  				<Strong> <%= placeinfo.get(i).getPlaceid() %></Strong>
	  				<p> <%= placeinfo.get(i).getExplanation() %> </p>
	  			</div>
	  		</li>
	  	<% } %>
	  </ul>
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