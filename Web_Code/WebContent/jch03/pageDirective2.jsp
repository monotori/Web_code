<%@ page language="java" contentType="text/html;charset=euc-kr"%>
<%
	session.setAttribute("mem_id", "test");
    session.setAttribute("bread", "�Һ��λ�");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ѱ�ó��</title>
</head>
<body>
�ѱ�ó��
������ īƮ�� ��� ���� ���
<%=session.getAttribute("bread").toString() %>
<%
	String myName = "����";
	request.setAttribute("myName", myName);
	//url�� �ٲ� - sendRedirect - �����ȵ�
	//include - �ȹٲ� - ����
	//response.sendRedirect("account.jsp");
	/*
	���� �и� pageDirective2.jsp�� ��û�ߴµ� ���� ȭ�鿡 ��µǴ� �� account.jsp�������� ��µ�.
	��Ĺ ������ ��û�� �����Ǵ� ������ �Ǵ��Ͽ� �̸� ������ account.jsp���� ����ϰԵ�.
	url�� �и� pageDirective2.jsp��� �Ǿ� �ִµ� �������� ȭ���� account.jspȭ���� ��µ�. 
	*/
	RequestDispatcher view = request.getRequestDispatcher("account.jsp");
	view.forward(request, response);
%>
</body>
</html>






