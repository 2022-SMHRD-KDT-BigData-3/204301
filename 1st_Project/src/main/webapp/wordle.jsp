<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	input{
		width:50px;
		height:50px;
		font-size:40px;
		text-align:center;
	}
</style>
<body>
	<input class="input"maxlength='1'>
	<input class="input"maxlength='1'>
	<input class="input"maxlength='1'>
	<input class="input"maxlength='1'>
	<input class="input"maxlength='1'>
	<input class="input"maxlength='1'>
	<button>제출</button>
	
	<script>
		var ans = '민주화운동원';
		document.querySelector('button').addEventListener('click',
		function(){
			var input = document.querySelectorAll('.input');
			for(let i = 0; i <6; i++){
				if(input[i].value == ans[i]){
					input[i].style.background='green';
				}else if(ans.includes(input[i].value)){
					input[i].style.background = 'yellow';
				}else{
					input[i].style.background = 'lightgrey';
				}
				
				input[i].classList.remove('input');
			}
			
			
			var template = '<div><input class="input"maxlength="1"><input class="input"maxlength="1"><input class="input"maxlength="1"><input class="input"maxlength="1"><input class="input"maxlength="1"><input class="input"maxlength="1"></div>';
			
			document.querySelector('body').insertAdjacentHTML('beforeend',template);
		})
	</script>
	
</body>
</html>