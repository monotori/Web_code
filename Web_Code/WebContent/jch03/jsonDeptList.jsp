<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map, java.util.ArrayList" %>    
<%@ page import="java.util.HashMap" %>
<%@ page import="com.google.gson.Gson" %>    
<%@ page trimDirectiveWhitespaces="true" %>  
<%--이 주석처리는 안보임. --%>
<%
	List<Map<String,Object>> deptList = new ArrayList<Map<String,Object>>();
    Map<String,Object> rMap = new HashMap<String,Object>();
    rMap.put("deptno",10);
    rMap.put("dname","영업");
    rMap.put("loc","서울");
    deptList.add(rMap);
    rMap = new HashMap<String,Object>();
    rMap.put("deptno",20);
    rMap.put("dname","총무");
    rMap.put("loc","인천");
    deptList.add(rMap);
    rMap = new HashMap<String,Object>();
    rMap.put("deptno",30);
    rMap.put("dname","인사");
    rMap.put("loc","서울");
    deptList.add(rMap);
    Gson g = new Gson();
    String sdept = g.toJson(deptList);
    out.print(sdept);
%>