<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList" %>    
<%-- div�±� �ȿ� �� ���� ȭ�� �̹Ƿ� <table>�±׸� ������ ��
	 �� ȭ���� success:function(result){};
	 result������ ���� ������.
 --%>    
<%
	List<String> getWordList = new ArrayList<String>();
	String str1 = "a";
	String str2 = "ab";
	String str3 = "abc";
	String str4 = "abcd";
	String str5 = "abcde";
	getWordList.add(str1);
	getWordList.add(str2);
	getWordList.add(str3);
	getWordList.add(str4);
	getWordList.add(str5);
	request.setAttribute("getWordList", getWordList);
	RequestDispatcher view = request.getRequestDispatcher("searchW_r.jsp");
	view.forward(request,response);
%>