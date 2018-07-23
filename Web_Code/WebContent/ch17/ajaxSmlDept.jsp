<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	$.ajax({
		method:"get",
		url:"xmlDept.jsp",
		dataType:"xml",
		success:function(data){
			alert(data);
			$(data).find('deptList').each(function(){  // xml 문서 item 기준으로 분리후 반복
		       	alert($(this).find("deptno").text()+$(this).find("dname").text()+$(this).find("loc").text());
		    });
		}
	})
	
	$.ajax({
		method:"get",
		url:"../xml/xmlDept.jsp",
		dataType:"xml",
		success:function(data){
			alert(data);
			$(data).find('job').each(function(){  // xml 문서 item 기준으로 분리후 반복
		       	alert("ip"+$(this).find("id").text()+"주소"+
		       	$(this).find("url").text()+"조횟수"+
		       	$(this).find("active").text());
		    });
		}
	})
</script>
</body>
</html>