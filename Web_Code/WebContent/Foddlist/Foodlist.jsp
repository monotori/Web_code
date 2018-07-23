<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.ch17.*" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.gson.Gson" %>
<%
	FoodDao Fd = new FoodDao();
	List<FoodStoreVO> deptList = Fd.JsonList();
	Gson gs = new Gson();
	String jsonDept = gs.toJson(deptList);
	out.print(jsonDept);
%>