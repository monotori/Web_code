<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>get ������� ��û�ϱ�</title>
<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>
<script type="text/javascript">
	function getSend(){
		$("#f_get").attr("method","get");
		$("#f_get").attr("action","servletȣ��");
		$("#f_get").submit();
	}

</script>
</head>
<body>
	<form id="f_get">
	<input type="text" id="t_id" name="t_id">
	<input type="button" value="����" onclick="getSend()">
	</form>

</body>
</html>