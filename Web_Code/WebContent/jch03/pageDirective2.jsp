<%@ page language="java" contentType="text/html;charset=euc-kr"%>
<%
	session.setAttribute("mem_id", "test");
    session.setAttribute("bread", "소보로빵");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>한글처리</title>
</head>
<body>
한글처리
영식이 카트에 담긴 물건 목록
<%=session.getAttribute("bread").toString() %>
<%
	String myName = "박의";
	request.setAttribute("myName", myName);
	//url이 바뀜 - sendRedirect - 유지안됨
	//include - 안바뀜 - 유지
	//response.sendRedirect("account.jsp");
	/*
	나는 분명 pageDirective2.jsp를 요청했는데 실제 화면에 출력되는 건 account.jsp페이지가 출력됨.
	톰캣 서버가 요청이 유지되는 것으로 판단하여 이름 정보를 account.jsp에서 출력하게됨.
	url은 분명 pageDirective2.jsp라고 되어 있는데 보여지는 화면은 account.jsp화면이 출력됨. 
	*/
	RequestDispatcher view = request.getRequestDispatcher("account.jsp");
	view.forward(request, response);
%>
</body>
</html>






