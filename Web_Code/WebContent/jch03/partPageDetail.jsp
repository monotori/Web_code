<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map, java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	//var param = "pcture="+picture;
	String imgName = request.getParameter("picture");
	String picDetail = null;	
	
	List<Map<String,Object>> picList
		= new ArrayList<Map<String,Object>>();
	Map<String,Object> detailMap
		= new HashMap<String,Object>();
		
	detailMap.put("img/img1.png","���� ��Ҵ�.");
	detailMap.put("img/img2.png","�Ƴ��� ���� ���� �µ��� ����ϰ� �ٸ���");
	detailMap.put("img/img3.png","\"���߰ŵ��~?\"     \"������ŵ��~?\".");
	detailMap.put("img/img4.png","��, ��� ��ٷ���, �ܵ� �������� ����");
	detailMap.put("img/img5.png","��ħ������� ¢�淡 \"�ò���!\"��� ȥ�´��� �� ������ �ųʸ��");
	picList.add(detailMap);
	//Iterator<Map<String,Object>> it = picList.iterator();
	Object keys[] = picList.get(0).keySet().toArray();
	for(int i=0;i<keys.length;i++){
		String val = (String)keys[i];
		if(val.equals(imgName)){
			picDetail = (String)picList.get(0).get(imgName);
			break;
		}
	}
	//out.print("picDetail"+picDetail);
%>
<table width="350px" height="300px" border="1" borderColor="red">
	<tr>
		<td colspan="2" width="300px" height="240px" align="center">
			<img src="../../<%=imgName%>" width="300px" height="450px"></td>
	</tr>
	<tr>
		<td width="300px" height="60px"><%=picDetail%></td>
		<td align="center" height="70px" height="60px">
			<input type="button" value="�ݱ�" onClick="clearMethod()"></td>
	</tr>
</table>