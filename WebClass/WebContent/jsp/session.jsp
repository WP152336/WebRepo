<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Integer cnt = (Integer)session.getAttribute("cnt"); //cnt 값 가져오기 & Integer로 타입캐스팅
	if(cnt==null){
		out.println("최초호출"); //값이 없기 때문에 최초엔 null이 나옴 
		cnt=0;
	}
	
	session.setAttribute("cnt", ++cnt); //1이라는 값 들어감
	
%>
<h1>cnt : <%=cnt %></h1>
<br>
<%=request.getHeader("Cookie") %>
</body>
</html>