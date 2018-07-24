<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>사원관리시스템</title>
	<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../themes/icon.css?1">
	<link rel="stylesheet" type="text/css" href="../demo/demo.css">
	<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>
	<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
</head>
<body>
	<table id="dg_dept" class="easyui-datagrid"  style="width:400px;height:250px"
        data-options="url:'jsonDeptList.jsp',fitColumns:true,singleSelect:true">
    <thead>
        <tr>
            <th data-options="field:'deptno',width:100">부서번호</th>
            <th data-options="field:'dname',width:100">부서명</th>
            <th data-options="field:'loc',width:100">지역</th>
        </tr>
    </thead>	
	</table>	
</body>
</html>











