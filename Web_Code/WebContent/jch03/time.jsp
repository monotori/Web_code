<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 
E:\dev_kosmo201804\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\dev_jsp20180417\org\apache\jsp\ch02
time.jsp -> time_jsp.java(����) -> time_jsp.class(���-html�±�) - ������
 -->
<%! 
	//��Ŭ�����̼� - declaration - �������� ���𰡴�, �޼ҵ� ����
	//������� �ʴ� ���� - �ν��Ͻ�ȭ�� �Ұ��� - ���뼺�� ������
	//�޼ҵ� ������ POJO class
	int i;//��������-�������-global variable
	public void methodA(){}
%>
<%
	//��ũ��Ʋ�� - �������� ����, �ν��Ͻ�ȭ ����, ������, �ڷᱸ��...
	int i=0;//���� -> service(){} local variable, automatic variable
	//public void methodA(){}
	out.print("��ũ��Ʋ��");
	out.print("<br>");
%>
<br>
<%= "�ͽ�������" %>
</body>
</html>