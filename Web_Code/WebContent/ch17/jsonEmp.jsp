<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/demo/demo.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<table class="easyui-datagrid" style="width:400px;height:250px"
        data-options="url:'../json/jsonDept.jsp',fitColumns:true,singleSelect:true">
    <thead>
        <tr>
            <th data-options="field:'deptno',width:100">deptno</th>
            <th data-options="field:'dname',width:100">Name</th>
            <th data-options="field:'loc',width:100,align:'right'">Price</th>
        </tr>
    </thead>
</table>
</body>
</html>