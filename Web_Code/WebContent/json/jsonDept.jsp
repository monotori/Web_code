<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true" %>	<!-- json�����̳� xml�������� �������� -->
<%
	List<Map<String,Object>> deptList = new ArrayList<Map<String,Object>>();
	Map<String,Object> rMap = new HashMap<String,Object>();
	rMap.put("deptno",10);
	rMap.put("dname","����");
	rMap.put("loc","����");
	deptList.add(rMap);
	rMap = new HashMap<String,Object>();
	rMap.put("deptno",20);
	rMap.put("dname","�ѹ�");
	rMap.put("loc","��õ");
	deptList.add(rMap);
	rMap = new HashMap<String,Object>();
	rMap.put("deptno",30);
	rMap.put("dname","�λ�");
	rMap.put("loc","����");
	deptList.add(rMap);
	Gson j = new Gson();
	String ou = j.toJson(deptList);
	out.print(ou);
	
%>