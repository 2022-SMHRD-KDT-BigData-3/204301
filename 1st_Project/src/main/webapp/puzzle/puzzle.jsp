<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="puzzle.js"></script>
</head>
<body>
	<div class="puzzle-container">
        <div>
            퍼즐게임
        </div>
        <label for="puzzle-input">
            이미지 선택
            <input onchange="updateImageDisplay()" name="puzzle-input" id="puzzle-input" type="file" accept="image/*">
        </label>
        <div class="preview">
            <p>선택한 이미지로 퍼즐을 만듭니다.</p>
   
        <table id="puzzle-board">

        </table>
        <div id="puzzle-box">

        </div>
    </div>
</body>
</html>

<style>
input {
  opacity: 0;
}

table {
  border: 1px solid black;
  border-spacing: 0;
  box-sizing: border-box;
}

td {
  border: 1px solid black;
  padding:0px !important;
  box-sizing: border-box;
  border-spacing: unset;
  border-collapse: collapse;
}

td img {
  display: block;
}

img:hover {
  box-sizing:border-box;
  outline: solid 2px red;
}

</style>