<%@page import="Model.cityDTO"%>
<%@page import="Model.reviewDTO"%>
<%@page import="Model.statisticsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="Model.statisticsDAO"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="shortcut icon" type="image/x-icon" href="docs/images/favicon.ico" />
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin=""/>
<link rel="stylesheet" href="./css/common.css">

<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>

<style>
.info { 
	padding: 6px 8px; 
	font: 14px/16px Arial, Helvetica, sans-serif; 
	background: white; 
	background: rgba(255,255,255,0.8); 
	box-shadow: 0 0 15px rgba(0,0,0,0.2);
	border-radius: 5px; 
} 
.info h4 { 
	margin: 0 0 5px; 
	color: #777; 
}
.legend { 
	text-align: left; 
	line-height: 18px; 
	color: #555; 
} 
.legend i { 
	width: 18px; 
	height: 18px; 
	float: left; 
	margin-right: 8px; 
	opacity: 0.7; 
}
table {
	display: none;
} 

.map-section {
	width:30%;
	height: 80%;
	float: left;
}
#map {  
	height: 800px;
	width: 100%;
}

.bar-section {
	width: 60%;
	height: 40%;
	float: right;
	background: red;
}
#columnchart_material{
	width: 100%;
	height: 300px;
}

#prevletter {
	width: 30%;
	height: 400px;
	float: right;
}
#nextletter {
	width: 30%;
	height: 400px;
	float: right;
}

</style>

</head>
<body>
<%
	statisticsDAO dao = new statisticsDAO();

	ArrayList<statisticsDTO> age_cnt = new ArrayList<statisticsDTO>();
	ArrayList<reviewDTO> review_cnt = new ArrayList<reviewDTO>();
	ArrayList<cityDTO> city_cnt = new ArrayList<cityDTO>();
	
	age_cnt = dao.statistics();
	review_cnt = dao.review();
	city_cnt = dao.city();
	
	//System.out.println(age_cnt);
	//System.out.println(review_cnt);
	//System.out.println(city_cnt);
	/*
	for (int i=0 ; i<age_cnt.size(); i++){
		if(age_cnt.get(i).getAge().equals("10대")){	
			System.out.println(age_cnt.get(i).getCnt());
		}else if(age_cnt.get(i).getAge().equals("20대")){
			System.out.println(age_cnt.get(i).getCnt());
		}else if(age_cnt.get(i).getAge().equals("30대")){
			System.out.println(age_cnt.get(i).getCnt());
		}else if(age_cnt.get(i).getAge().equals("40대")){
			System.out.println(age_cnt.get(i).getCnt());
		}else if(age_cnt.get(i).getAge().equals("50대")){
			System.out.println(age_cnt.get(i).getCnt());
		}else if(age_cnt.get(i).getAge().equals("60대이상")){
			System.out.println(age_cnt.get(i).getCnt());
		}	
	}
	for(int i= 0; i<review_cnt.size(); i++){
		if(review_cnt.get(i).getReview().equals("매우 도움이 됐다.")){
			System.out.println(review_cnt.get(i).getCnt());	
		}else if(review_cnt.get(i).getReview().equals("어느정도 도움이 됐다.")){
			System.out.println(review_cnt.get(i).getCnt());	
		}else if(review_cnt.get(i).getReview().equals("보통이다.")){
			System.out.println(review_cnt.get(i).getCnt());	
		}else if(review_cnt.get(i).getReview().equals("별로 도움이 안됐다.")){
			System.out.println(review_cnt.get(i).getCnt());	
		}else if(review_cnt.get(i).getReview().equals("전혀 도움이 안됐다.")){
			System.out.println(review_cnt.get(i).getCnt());	
		}
	}*/
	
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
	
	<table class = "city_cnt">
		<thead>
			<tr>
				<th> 지역 </th>
				<th> 이용자수 </th>
			</tr>
		</thead>
		<tbody id = "tbody">
		<% for(int i = 0; i < city_cnt.size(); i++){ %>
		
			<tr>
				<td> <%= city_cnt.get(i).getCity() %> </td>
				<td> <%= city_cnt.get(i).getCnt() %> </td>
			</tr>
		
		<% } %>
		</tbody>
	</table>
	<section class = "map-section">
		<div id='map'></div>
	</section>
	
	<section class = "bar-section">
		<div id="columnchart_material"></div>
	</section>
	
	<div class="word-section">
		<div id="prevletter"></div>
		<div id="nextletter"></div>
	</div>
	
<script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
<script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript" src ="./js/mapStatistic.js"></script>
<script type="text/javascript" src="./js/barStatistic.js"></script>

<script type="text/javascript"> 

anychart.onDocumentReady(function (){
	var prevdata = [ { "x": "IT",
		"value": 59,
		category: "Sino-Tibetan" },
		{ "x": "Python",
		"value": 28,
		category: "Indo-European" },
		{ "x": "소프트웨어",
		"value": 100,
		category: "Indo-European" },
		{ "x": "JAVA",
		"value": 52,
		category: "Indo-European" },
		{ "x": "C++",
		"value": 42,
		category: "Afro-Asiatic" },
		{ "x": "HTML",
		"value": 62,
		category: "Afro-Asiatic" } ];
	var prevchart = anychart.tagCloud(prevdata);
	prevchart.angles([0]);
	prevchart.container("prevletter");
	// chart.getCredits().setEnabled(false);
	prevchart.draw(); }); 
</script>

<script type="text/javascript"> 

anychart.onDocumentReady(function (){
	var nextdata = [ { "x": "IT",
		"value": 59,
		category: "Sino-Tibetan" },
		{ "x": "Python",
		"value": 28,
		category: "Indo-European" },
		{ "x": "소프트웨어",
		"value": 100,
		category: "Indo-European" },
		{ "x": "JAVA",
		"value": 52,
		category: "Indo-European" },
		{ "x": "C++",
		"value": 42,
		category: "Afro-Asiatic" },
		{ "x": "HTML",
		"value": 62,
		category: "Afro-Asiatic" } ];
	var nextchart = anychart.tagCloud(nextdata);
	nextchart.angles([0]);
	nextchart.container("nextletter");
	// chart.getCredits().setEnabled(false);
	nextchart.draw(); }); 
</script>

</body>
</html>