
<%@page import="book.DeptDeo"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="../includelist/initJQ_EU_H.jsp"></jsp:include>
<jsp:useBean id="bookDao" scope="request" class="book.BookDeo" />
<jsp:useBean id="DeptDao" scope="request" class="book.DeptDeo" />
<%
	Map<String,Object> pMap = new HashMap<String,Object>();
	pMap.put("deptno",58);
	pMap.put("dname","개발3팀");
	pMap.put("loc","포항");
	DeptDeo dd = new DeptDeo();
	int result = 0;
	result = dd.getBookList(pMap);
	out.print(result);
	
	


/* 	List<Map<String,Object>> list= (List<Map<String,Object>>) DeptDao.getBookList(null);
	Gson g = new Gson();
	String str = g.toJson(list);
	out.print(str);
	if(list!=null){
	      for(int i=0;i<list.size();i++){
	         out.print(list.get(i).get("DEPTNO"));
	         out.print(list.get(i).get("DNAME"));
	         out.print(list.get(i).get("LOC"));
	         out.print("<br>");
	         }
	      }
	      else{
	         out.print("조회 결과가 없습니다.");
	   } */
%>