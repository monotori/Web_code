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
time.jsp -> time_jsp.java(서블릿) -> time_jsp.class(출력-html태그) - 브라우저
 -->
<%! 
	//디클러레이션 - declaration - 전역변수 선언가능, 메소드 선언
	//사용하지 않는 이유 - 인스턴스화가 불가함 - 재사용성이 떨어짐
	//메소드 선언은 POJO class
	int i;//전역변수-멤버변수-global variable
	public void methodA(){}
%>
<%
	//스크립틀릿 - 지역변수 선언, 인스턴스화 가능, 제어문사용, 자료구조...
	int i=0;//지변 -> service(){} local variable, automatic variable
	//public void methodA(){}
	out.print("스크립틀릿");
	out.print("<br>");
%>
<br>
<%= "익스프레션" %>
</body>
</html>