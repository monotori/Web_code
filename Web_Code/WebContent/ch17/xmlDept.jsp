<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true" %>	<!-- json�����̳� xml�������� �������� -->
<%
   //����Ÿ�� ����   
   response.setContentType("text/xml");
   
   //�ڷᱸ�� �����ϱ�
   List<Map<String,Object>> deptList = new ArrayList<Map<String,Object>>();
      //row-1st
   Map<String,Object> rMap   = new HashMap<String,Object>();
   rMap.put("deptno",10);
   rMap.put("dname","����");
   rMap.put("loc","����");
   deptList.add(rMap);
      //row-2nd
   rMap = new HashMap<String,Object>();
   rMap.put("deptno",20);
   rMap.put("dname","�ѹ�");
   rMap.put("loc","��õ");
   deptList.add(rMap);
      //row-3rd
   rMap = new HashMap<String,Object>();
   rMap.put("deptno",30);
   rMap.put("dname","�λ�");
   rMap.put("loc","����");
   deptList.add(rMap);
   
   //xml tree ���� �����
   StringBuilder sb = new StringBuilder();
   sb.append("<deptLists>");
   for(int i=0;i<deptList.size();i++){//�����ο� �ٽ� �̱�
      if(i==deptList.size())break;
      Map<String,Object> reMap = (Map<String,Object>)deptList.get(i);
      sb.append("<deptList>");
      sb.append("<deptno>");
      sb.append(reMap.get("deptno"));
      sb.append("</deptno>");
      sb.append("<dname>");
      sb.append(reMap.get("dname"));
      sb.append("</dname>");
      sb.append("<loc>");
      sb.append(reMap.get("loc"));
      sb.append("</loc>");
      sb.append("</deptList>");
   }
   sb.append("</deptLists>");
   
   //��������...���....
   out.print(sb.toString());
%>