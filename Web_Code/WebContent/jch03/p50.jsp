<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>HTML문서의 제목</title>
</head>
<body>
<%
	//jsp역할
	//1)화면을 제공(html5) 2)결과처리에 대한 페이지 3)json포맷으로 결과를 내보낼때
    //4)xml포맷으로 결과를 내보낼때(miplatform, trusform, naxacro...)
	String bookTitle = "JSP2.3 웹프로그래밍";
%>
<%=bookTitle %>
</body>
</html>