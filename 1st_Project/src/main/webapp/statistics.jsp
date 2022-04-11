<%@page import="Model.cityDTO"%>
<%@page import="Model.reviewDTO"%>
<%@page import="Model.letterDTO"%>
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

.city_cnt { display: none; }
.age_cnt { display: none; }
.prev_cnt { display: none; }
.next_cnt { display: none; }

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
}
#columnchart_material{
	width: 100%;
	height: 300px;
}

#prevletter {
	width: 30%;
	height: 400px;
	float: left;
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
	ArrayList<letterDTO> prevletters = new ArrayList<letterDTO>();
	ArrayList<letterDTO> nextletters = new ArrayList<letterDTO>();
	
	age_cnt = dao.statistics();
	review_cnt = dao.review();
	city_cnt = dao.city();
	prevletters = dao.prevletter();
	System.out.println(prevletters.size());
	nextletters = dao.nextletter();
	System.out.println(nextletters.size());
	
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
		<tbody id = "city_tbody">
		<% for(int i = 0; i < city_cnt.size(); i++){ %>
			<tr>
				<td> <%= city_cnt.get(i).getCity() %> </td>
				<td> <%= city_cnt.get(i).getCnt() %> </td>
			</tr>
		<% } %>
		</tbody>
	</table>
	
	<table class = "age_cnt">
		<thead>
			<tr>
				<th> 나이대 </th>
				<th> 이용자수 </th>
			</tr>
		</thead>
		<tbody id = "age_tbody">
		<% for(int i = 0; i < age_cnt.size(); i++){ %>
		
			<tr>
				<td> <%= age_cnt.get(i).getAge() %> </td>
				<td> <%= age_cnt.get(i).getCnt() %> </td>
			</tr>
		
		<% } %>
		</tbody>
	</table>
	
	<table class = "prev_cnt">
		<thead>
			<tr>
				<th> 단어 </th>
				<th> 갯수 </th>
			</tr>
		</thead>
		<tbody id = "prev_tbody">
		<% for(int i = 0; i < prevletters.size(); i++){ %>
		
			<tr>
				<td> <%= prevletters.get(i).getLetter() %> </td>
				<td> <%= prevletters.get(i).getCnt() %> </td>
			</tr>
		
		<% } %>
		</tbody>
	</table>
	
	<table class = "next_cnt">
		<thead>
			<tr>
				<th> 단어 </th>
				<th> 갯수 </th>
			</tr>
		</thead>
		<tbody id = "next_tbody">
		<% for(int i = 0; i < nextletters.size(); i++){ %>
		
			<tr>
				<td> <%= nextletters.get(i).getLetter() %> </td>
				<td> <%= nextletters.get(i).getCnt() %> </td>
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
var prev_cnt = document.getElementById("prev_tbody").getElementsByTagName("tr");
console.log("prev : " + prev_cnt.length);

/* 
var data = "[";

for(int i = 0; prev_cnt.length; i++){
	data += "{ 'x' : " + prev_cnt[i].getElementsByTagName("td")[0].firstChild.data + ", 'value': " + prev_cnt[i].getElementsByTagName("td")[1].firstChild.data + ", category: 'Sino-Tibetan' }";
	
	if(i < (prev_cnt.length-1)) {
		data += ",";
	} else if (i == (prev_cnt.length - 1)){
		data += "];"
	}
}
console.log(data);
 */
 
anychart.onDocumentReady(function (){
	//var prevdata = data;
	var prevdata = [ 
		{ "x": "민주화운동", "value": 20, category: "Sino-Tibetan" },
		{ "x": "광주", "value": 22, category: "Indo-European" },			
		{ "x": "전두환", "value": 5, category: "Indo-European" },	
		{ "x": "민주주의", "value": 3,	category: "Indo-European" },
		{ "x": "시민", "value": 2, category: "Afro-Asiatic" },
		{ "x": "시위", "value": 1, category: "Afro-Asiatic" },
		{ "x": "518", "value": 1, category: "Afro-Asiatic" },
		{ "x": "26년", "value": 1, category: "Afro-Asiatic" },
		{ "x": "계엄군", "value": 1, category: "Afro-Asiatic" },
		{ "x": "민주화", "value": 1, category: "Afro-Asiatic" },
		{ "x": "택시운전사", "value": 3, category: "Afro-Asiatic" }];
	
	var prevchart = anychart.tagCloud(prevdata);
	prevchart.angles([0]);
	prevchart.container("prevletter");
	// chart.getCredits().setEnabled(false);
	prevchart.draw(); }); 
</script>

<script type="text/javascript"> 

anychart.onDocumentReady(function (){
	var nextdata = [ 
		{ "x": "시민", "value": 21, category: "Sino-Tibetan" },
		{ "x": "희생", "value": 13, category: "Indo-European" },			
		{ "x": "학생", "value": 8, category: "Indo-European" },	
		{ "x": "민주화", "value": 5,	category: "Indo-European" },
		{ "x": "전남대학교", "value": 4, category: "Afro-Asiatic" },
		{ "x": "택시", "value": 3, category: "Afro-Asiatic" },
		{ "x": "자유", "value": 2, category: "Afro-Asiatic" },
		{ "x": "시민군", "value": 1, category: "Afro-Asiatic" },
		{ "x": "금남로", "value": 1, category: "Afro-Asiatic" },
		{ "x": "광주", "value": 1, category: "Afro-Asiatic" },
		{ "x": "민주주의", "value": 1, category: "Afro-Asiatic" } ];
	
	var nextchart = anychart.tagCloud(nextdata);
	nextchart.angles([0]);
	nextchart.container("nextletter");
	// chart.getCredits().setEnabled(false);
	nextchart.draw(); }); 
</script>

</body>
</html>