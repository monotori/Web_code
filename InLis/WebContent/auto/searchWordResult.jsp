<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList" %>   
<%
	List<Map<String, Object>> getWordList = 
	(List<Map<String, Object>>)request.getAttribute("getWordList");
	Map<String,Object> detailMap
	= new HashMap<String,Object>();
%>    
<table id="t1" width="150px" border="0">
<%
	for(int i=0;i<getWordList.size();i++){
		if(i == 5){
			break;
		}
		String word = (String)getWordList.get(i).get("BOOKNM");
		java.math.BigDecimal tempValue = (java.math.BigDecimal)getWordList.get(i).get("BOOKNO");
		int id = Integer.valueOf(tempValue.toString());
		String img = "img/img"+id+".png";
		detailMap.put(img,((String)getWordList.get(i).get("BOOKTS")));
		
%>
	<tr>
	<td id="p<%=id%>" title="<%=id%>"><%=word %></td></tr>
<%
	}
	session.setAttribute("BOOKTS",detailMap);
%>
</table>