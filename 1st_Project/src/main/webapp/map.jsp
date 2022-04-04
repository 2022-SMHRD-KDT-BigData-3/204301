<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import="Model.placeDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
<title>Insert title here</title>
 <style type="text/css">
    html,body { width:100%; height:100%; margin:0; padding:0; }
    #mapid { width:100%; height:100%; z-index: 5;}
    table{ display: none;}
    #close{
    		width: 80px;
            text-align:center;
    		background-color: white;
    		text-decoration-line : none;
            border: 4px solid black;
            border-radius: 10px;
            position: fixed;
            right: 100px;
            bottom: 100px;
            z-index: 100;
            color:black;
        }
  </style>

</head>
<body>
	<% 
		ArrayList<placeDTO> placeinfo = (ArrayList<placeDTO>)session.getAttribute("placeinfo");
	%>

	<table>
		<tr>
			<th> 사적지ID </th>
			<th> 퀴즈ID </th>
			<th> 사적지 설명 </th>
			<th> 위도 </th>
			<th> 경도 </th>
			<th> 사진경로 </th>
		</tr>
		<tbody id = "table_body">
		<% for (int i = 0; i < placeinfo.size(); i++) { %>
			<tr>
				<td><%=placeinfo.get(i).getPlaceid()%></td>
				<td><%=placeinfo.get(i).getQuiz()%></td>
				<td><%=placeinfo.get(i).getExplanation()%></td>
				<td><%=placeinfo.get(i).getLatitude()%></td>
				<td><%=placeinfo.get(i).getLongitude()%></td>
				<td><%=placeinfo.get(i).getPath()%></td>
			</tr>
		<% } %>
		</tbody>
	</table>
	
	<div id="mapid"></div>

<script type="text/javascript">
	var lat = 35.1595454;
	var lng = 126.8526012;
	var zoom = 14;
	var map = L.map('mapid', {
		center : [ lat, lng ],
		zoom : zoom,
		minZoom : 12,
		maxZoom : 16
	});

	L.tileLayer('http://xdworld.vworld.kr:8080/2d/Base/201710/{z}/{x}/{y}.png')
			.addTo(map);

	/* L.tileLayer('http://{s}.tile.stamen.com/toner/{z}/{x}/{y}.png',{
		attribution:'<a href="http://content.stamen.com/dotspotting_toner_cartography_available_for_download">Stamen Toner</a>,<a href = "http://www.openstreetmap.org/">OpenStreetMap</a>,<a href = "http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>'
	}).addTo(map); */

	/*
	var marker = L.marker([ 35.144647, 126.914644 ]).addTo(map);
	marker.on('mouseover', onOver);
	marker.on('click', onClick);*/
	/*
	function onOver(e) {
		marker
				.bindPopup(
						"<h1>구 광주적십자병원</h1><p>이 병원은 5·18민주화운동 당시에는 광주적십자병원으로, 부상당한 시민과 시민군을 헌신적으로 치료하고 돌본 곳이다.</p> <img src='./518images/구 적십자병원.jpg'/>")
				.openPopup();
	}*/
	
	function onOver(placeid, explanation, path) {
		marker
				.bindPopup(
						"<h1>" + placeid + "</h1><p>" + explanation +"</p> <img src='"+ path +"''/>")
				.openPopup();
	}
	
	function onClick(e) {
		console.log("클릭");
		location.href = '';
	}

	/* var imageUrl = './images/img14.jpg',
		imageBounds =[[35.144719, 126.914881],[35.148919, 126.919881]];
	
	L.imageOverlay(imageUrl, imageBounds).addTo(map); */
    
	var rows = document.getElementById("table_body").getElementsByTagName("tr");
    console.log(rows.length);	// tbody tr 개수 = 32
	
    var markers= [];
    
    // tr만큼 루프돌면서 컬럼값 접근
    for( var r=0; r<rows.length; r++ ){
      var cells = rows[r].getElementsByTagName("td");

      var cell_1 = cells[0].firstChild.data;		// 사적지ID
      var cell_2 = cells[1].firstChild.data;		// 퀴즈ID
      var cell_3 = cells[2].firstChild.data;		// 사적지설명
      var cell_4 = cells[3].firstChild.data;		// 위도
      var cell_5 = cells[4].firstChild.data;		// 경도
      var cell_6 = cells[5].firstChild.data;		// 사진 경로
      
      var marker = L.marker([ cell_4, cell_5 ]).addTo(map);
	  marker.on('mouseover', onOver(cell_1, cell_3, cell_6));
	  //marker.on('click', onClick);
    }

    /* var marker2 = L.marker([35.144719, 126.914881]).addTo(map);
    marker2.on('mouseover',onOver2);
    marker2.on('click',onClick2);
    function onOver2(e){
    	marker2
    	.bindPopup("<h1>test2</h1>")
    	.openPopup();
    }
    function onClick2(e){
    	console.log("클릭");
    	location.href = './survey.jsp';
    }  */

    /*var marker3 = L.marker([35.176149, 126.905916]).addTo(map);
    marker3.bindPopup("test3").openPopup();*/
    
    
    
    map.touchZoom.disable();
    map.doubleClickZoom.disable();
    //map.scrollWheelZoom.disable();
    map.boxZoom.disable();
    map.keyboard.disable();
    //map.removeControl(map.zoomControl);
  </script>
  <a href="" id="close"> 게임 종료 </a>
</body>
</html>