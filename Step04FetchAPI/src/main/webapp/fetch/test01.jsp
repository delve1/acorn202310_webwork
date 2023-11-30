<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fetch/test01.jsp</title>
</head>
<body>
	<h1>fetch 함수 테스트</h1>
	<button id="myBtn">눌러보셈</button>
	<a href="${pageContext.request.contextPath}/index.jsp">링크</a>
	<script>
	
		document.querySelector("#myBtn").addEventListener("click", ()=>{
			//페이지 전환 없이 /index.jsp 페이지에 요청하기 
			fetch("${pageContext.request.contextPath}/index.jsp")
			.then(res=>{
				/*
					서버(jsp or servlet) 에서 응답한 문자열이 json 형식이면
					return res.json();
				
					그 이외의 형식이면 html, xml, plain text 등등
					return res.text(); 
				*/
				return res.text();
			})
			.then(data=>{
				/*
					위의 then() 함수에서 res.json() 를 리턴하면 data 는 응답된 json 문자열을
					JSON.parse() 과정을 이미 거친  object 나 array 이다.
					
					위의 then() 함수에서 res.text() 를 리턴하면 data 는 서버가 응답한 문자열(string) 이다.
				*/
				console.log(data);
			});
			
			console.log("fetch() 함수를 실행 했습니다!");
			
		});
	</script>
</body>
</html>











