<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map, java.util.ArrayList" %>    
<%@ page import="java.util.HashMap" %>
<%@ page import="com.google.gson.Gson" %>    
<%@ page trimDirectiveWhitespaces="true" %>  
<%--�� �ּ�ó���� �Ⱥ���. --%>
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
    Gson g = new Gson();
    String sdept = g.toJson(deptList);
    out.print(sdept);
%>