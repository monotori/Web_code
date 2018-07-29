<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList" %>    
<%-- div태그 안에 들어갈 내용 화면 이므로 <table>태그만 가져도 됨
	 이 화면이 success:function(result){};
	 result변수에 담기는 내용임.
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