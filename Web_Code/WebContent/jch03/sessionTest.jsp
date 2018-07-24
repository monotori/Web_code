
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
	request.setAttribute("bread", "크림빵");
	//response.sendRedirect("account.jsp");
	RequestDispatcher view = request.getRequestDispatcher("account.jsp");
	view.forward(request,response);
%>
</head>
<body>
</body>
</html>