<!--  1. Directive tag (지시자) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>첫 번째 JSP</title>
</head>
<body>
<%-- 2. Comment tag (JSP주석) --%>
<%-- 3. Declaration tag (선언부) --%>
<%! private static final String DEFAULT_NAME = "Guest"; %>
<%-- 4. 스크립틀릿 tag --%>
<%	
	//자바 코드를 그대로 작성
	String name = request.getParameter("name");
	if(name==null) name = DEFAULT_NAME;
	//out.println("<h1>Hello, "+name+"</h1>"); 말고 대신
%>
<%-- 5. Expression tag (표현식) 간단하지만 위와 똑같이 나옴 --%>
<h1>Hello, <%=name%></h1>
</body>
</html>