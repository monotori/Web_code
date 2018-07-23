
<%@page import="com.ch11.Snippet"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	response.setContentType("text/xml");
	Snippet sn = new Snippet();
	String sout = sn.toGet();
	out.print(sout);
%>