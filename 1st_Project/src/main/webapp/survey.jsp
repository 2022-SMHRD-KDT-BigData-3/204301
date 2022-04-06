<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
    background-color: beige;
}
form{
      /* Just to center the form on the page */
  margin: 0 auto;
  margin-top: 10%;
  width: 500px;

  /* To see the limits of the form */
  padding: 1em;
  border: 1px solid #CCC;
  border-radius: 1em;
  z-index: 10;
}
div{
    margin: 20px;
    padding: 10px;
    background-color: white;
    text-align: center;
    border-top-right-radius: 5%;
    border-top-left-radius: 5%;
    border-bottom-right-radius: 5%;
    border-bottom-left-radius: 5%;
}
﻿select {
     width:300px;
     padding:5px;
     border:1px solid #999;
     font-family:'Nanumgothic';
     background:url('https://i.ibb.co/98Vbb8L/gnb-bg.gif') no-repeat 95% 50%;
     border-radius:3px;
     -webkit-appearance: none;
     -moz-appearance: none;
     appearance : none;
}
select::-ms-expand {
   display: none;
}
</style>
</head>
<body>
    
    <form action = "SurveyCon" method = "post"> 
	    <div> 
	      <h1> 사전조사 </h1>
	    </div>
	    <div>
	      <h4> 나이 </h4>
	      <select name = "age">
	        <option value="10대">10대</option>
	              <option value="20대">20대</option>
	              <option value="30대">30대</option>
	              <option value="40대">40대</option>
	              <option value="50대">50대</option>
	              <option value="60대이상">60대이상</option>
	      </select> 
	    </div>
    	<div>
      	<h4> 지역 </h4>
        <select name = "city">
            <option value="서울특별시">서울특별시</option>
            <option value="광주광역시">광주광역시</option>
            <option value="인천광역시">인천광역시</option>
            <option value="부산광역시">부산광역시</option>
            <option value="대전광역시">대전광역시</option>
            <option value="울산광역시">울산광역시</option>
            <option value="대구광역시">대구광역시</option>
            <option value="경기도">경기도</option>
            <option value="충청북도">충청북도</option>
            <option value="충청남도">충청남도</option>
            <option value="전라북도">전라북도</option>
            <option value="전라남도">전라남도</option>
            <option value="경상북도">경상북도</option>
            <option value="경상남도">경상남도</option>
            <option value="강원도">강원도</option>
           <option value="제주도">제주도</option>
        </select>
        </div>
	    <div class="letter">
	        <h4> 5.18하면 떠오르는 단어 혹은 문장 </h4>
	     <input type="text" name="prevletter" id="" placeholder="5.18하면 떠오르는 단어 혹은 문장"> 
	    </div>
        <div class="submit">
        	<input type="submit" value="제출">
        </div>
  	</form>
  
</body>
</html>