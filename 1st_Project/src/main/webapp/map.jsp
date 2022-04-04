<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<div id="mapid"></div>

<script type="text/javascript">
    var lat = 35.1595454;
    var lng = 126.8526012;
    var zoom = 14;
    var map = L.map('mapid', {
        center: [lat, lng],
        zoom: zoom,
        minZoom:13,
        maxZoom:17
    });
    
    L.tileLayer('http://xdworld.vworld.kr:8080/2d/Base/201710/{z}/{x}/{y}.png').addTo(map);
    
    /* L.tileLayer('http://{s}.tile.stamen.com/toner/{z}/{x}/{y}.png',{
    	attribution:'<a href="http://content.stamen.com/dotspotting_toner_cartography_available_for_download">Stamen Toner</a>,<a href = "http://www.openstreetmap.org/">OpenStreetMap</a>,<a href = "http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>'
    }).addTo(map); */
    
    var marker = L.marker([35.148215, 126.919829]).addTo(map);
    marker.on('mouseover',onOver);
    marker.on('click',onClick);
    
    function onOver(e){
    	marker.bindPopup("Hello world! I am a popup.").openPopup();
    }
    
    function onClick(e){
    	console.log("클릭");
    	location.href = './survey.jsp';
    }
    
    /* var imageUrl = './images/img14.jpg',
    	imageBounds =[[35.144719, 126.914881],[35.148919, 126.919881]];
    
    L.imageOverlay(imageUrl, imageBounds).addTo(map); */
    
    map.touchZoom.disable();
    map.doubleClickZoom.disable();
    //map.scrollWheelZoom.disable();
    map.boxZoom.disable();
    map.keyboard.disable();
    //map.removeControl(map.zoomControl);
  </script>
</body>
</html>