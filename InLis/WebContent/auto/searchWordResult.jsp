<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList" %>   
<%
	List<String> getWordList = 
	(List<String>)request.getAttribute("getWordList");
%>    
<table id="t1" width="150px" border="0">
<%
	for(int i=0;i<getWordList.size();i++){
		String word =  getWordList.get(i);
%>
	<tr>
	<td id="p<%=i%>" title="<%=i%>"><%=word %></td></tr>
<%
	}
%>
</table>