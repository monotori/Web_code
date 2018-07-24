<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%@include file="aaa.jsp"%>
</head>
<body>
<script type="text/javascript">
	$.ajax({
		method:"get"
	   ,url:"./dept.xml"
	   ,success:function(result){
		   //alert(result);
			$(result).find('deptList').each(function(){
				//alert("11");
				var $entry = $(this);
				alert( $entry.find('deptno').text()
				 +", "+$entry.find('dname').text()
				 +", "+$entry.find('loc').text()
				);
			});	
	   }
	   ,error:function(xhrObject){
		   alert(xhrObject.responseText);
	   }
	});
</script>
</body>
</html>