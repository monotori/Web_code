<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map, java.util.ArrayList" %>    
<%@ page import="java.util.HashMap" %>
<%@ page trimDirectiveWhitespaces="true" %>     
<%
	response.setContentType("text/xml");
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
	StringBuilder sb = new StringBuilder();
	//sb.append("<?xml version=""\1.0""\ encoding=""\euc-kr""\?>");
	sb.append("<deptLists>");
	for(int i=0;i<deptList.size();i++){
		if(i==deptList.size()) break;
		Map<String, Object> reMap = (Map<String, Object>)deptList.get(i);
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
	out.print(sb.toString());
%>





