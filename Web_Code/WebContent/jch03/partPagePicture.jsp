<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- ������[[ import ]]�������������������������������������������������������������������������������������������������������������������������������������������������������������������� -->

   <!-- css import code -->
   <link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
   <link rel="stylesheet" type="text/css" href="../themes/icon.css">

   <!-- jQuery script import code :: $-undifined error ����!!! -->
   <script type="text/javascript" src="../js/jquery-1.12.0.js"></script>
   
   <!-- EasyUI for jQuery script import code -->
   <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>

<!-- ������[[CSS style]]������������������������������������������������������������������������������������������������������������������������������������������������������������������ -->
<style type="text/css">
   div#d_detail{
      position:absoulte;
   }
</style>

<!-- ������[[HEAD script]]������������������������������������������������������������������������������������������������������������������������������������������������������������������ -->
<script type="text/javascript">
   function startMethod(imgObj){
      //alert("startMehod ȣ�� ����");
      //$("#d_detail").text("onmouseover");
      $("#d_detail").css("left",imgObj.offset().left+400+"px");
      $("#d_detail").css("top",imgObj.offset().top+"px");
      $("#d_detail").text("onmouseover");
      
   }
   function clearMethod(imgObj){
   }
</script>
</head>
<body>
<div id="d_detail" style="position: relative;"></div>
<table border="1">
    <thead>
        <tr>
            <td width="150px">���� ��Ҵ�.</td>
            <td width="400px"><img src="../img/img1.png" id="id1" width="400px" height="300px" onmouseover="startMethod($('#id1'))" onmouseout="clearMethod()"></td>
        </tr>
        <tr>
            <td width="150px">�Ƴ��� ���� ���� �µ��� ����ϰ� �ٸ���</td>
            <td width="400px"><img src="../img/img2.png" id="id2" width="400px" height="300px" onmouseover="startMethod($('#id2'))" onmouseout="clearMethod()"></td>
        </tr>
        <tr>
            <td width="150px">"���߰ŵ��~?"     "������ŵ��~?".</td>
            <td width="400px"><img src="../img/img3.png" id="id3" width="400px" height="300px" onmouseover="startMethod($('#id3'))" onmouseout="clearMethod()"></td>
        </tr>
        <tr>
            <td width="150px">��, ��� ��ٷ���, �ܵ� �������� ����</td>
            <td width="400px"><img src="../img/img4.png" id="id4" width="400px" height="300px" onmouseover="startMethod($('#id4'))" onmouseout="clearMethod()"></td>
        </tr>
        <tr>
            <td width="150px">��ħ������� ¢�淡 "�ò���!"��� ȥ�´��� �� ������ �ųʸ��</td>
            <td width="400px"><img src="../img/img5.png" id="id5" width="400px" height="300px" onmouseover="startMethod($('#id5'))" onmouseout="clearMethod()"></td>
        </tr>
        <tr>
            <td width="150px">����ȭ ���� �Ǿ�����....</td>
            <td width="400px"><img src="../img/img6.png" id="id6"  width="400px" height="300px" onmouseover="startMethod($('#id6'))" onmouseout="clearMethod()"></td>
        </tr>
        <tr>
            <td width="150px">����� �ٲ�ô�</td>
            <td width="400px"><img src="../img/img7.png" id="id7" width="400px" height="300px" onmouseover="startMethod($('#id7'))" onmouseout="clearMethod()"></td>
        </tr>    
        <tr>
            <td width="150px">���Ϻ��� �������� �� �� ���� �Ǿ����ϴ�. �ǰ��Ͻʽÿ�</td>
            <td width="400px"><img src="../img/img8.png" id="id8" width="400px" height="300px" onmouseover="startMethod($('#id8'))" onmouseout="clearMethod()"></td>
        </tr>    
    </thead>
</table>
</body>
</html>