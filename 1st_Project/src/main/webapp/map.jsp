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
    #mapid { width:100%; height:100%; }
  </style>

</head>
<body>
	<% 
		ArrayList<placeDTO> placeinfo = (ArrayList<placeDTO>)session.getAttribute("placeinfo");
	%>
	
<div id="mapid"></div>

<script type="text/javascript">

    var lat = 35.1595454;
    var lng = 126.8526012;
    var zoom = 14;
    var map = L.map('mapid', {
        center: [lat, lng],
        zoom: zoom,
        minZoom:12,
        maxZoom:16
    });
    
    L.tileLayer('http://xdworld.vworld.kr:8080/2d/Base/201710/{z}/{x}/{y}.png').addTo(map);
    
    /* L.tileLayer('http://{s}.tile.stamen.com/toner/{z}/{x}/{y}.png',{
    	attribution:'<a href="http://content.stamen.com/dotspotting_toner_cartography_available_for_download">Stamen Toner</a>,<a href = "http://www.openstreetmap.org/">OpenStreetMap</a>,<a href = "http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>'
    }).addTo(map); */
    
    var marker = L.marker([35.144647, 126.914644]).addTo(map);
    marker.on('mouseover',onOver);
    marker.on('click',onClick);
    
    function onOver(e){
    	marker
    	.bindPopup("<h1>구 광주적십자병원</h1><p>이 병원은 5·18민주화운동 당시에는 광주적십자병원으로, 부상당한 시민과 시민군을 헌신적으로 치료하고 돌본 곳이다.</p> <img src='./518images/구 적십자병원.jpg'/>")
    	.openPopup();
    }
    
    function onClick(e){
    	console.log("클릭");
    	location.href = './survey.jsp';
    }
    
    /* var imageUrl = './images/img14.jpg',
    	imageBounds =[[35.144719, 126.914881],[35.148919, 126.919881]];
    
    L.imageOverlay(imageUrl, imageBounds).addTo(map); */
    
<<<<<<< HEAD
    var markers = <%=(ArrayList<placeDTO>)session.getAttribute("placeinfo") %>;
    
    console.log(markers);
    /*for(var i = 0; i < placeinfo.size(); i++){
    	markers[i] = L.marker([placeinfo.get(i).getLatitude(), placeinfo.get(i).getLongitude())]).addTo(map);
    	markers[i].bindPopup(placeinfo.get(i).getPlaceid).openPopup();
    } */
    
    var marker2 = L.marker([35.144719, 126.914881]).addTo(map);
    marker2.bindPopup("test2").openPopup();
    
=======
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
   
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-3/2431.git
    var marker3 = L.marker([35.176149, 126.905916]).addTo(map);
    marker3.bindPopup("test3").openPopup();
    
    map.touchZoom.disable();
    map.doubleClickZoom.disable();
    //map.scrollWheelZoom.disable();
    map.boxZoom.disable();
    map.keyboard.disable();
    //map.removeControl(map.zoomControl);
  </script>
</body>
</html>