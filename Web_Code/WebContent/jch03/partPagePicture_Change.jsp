<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CSS �� AJAX �� Ȱ���Ͽ� �׸���ġ ����ó���ϱ�</title>

<!-- ������[[ import ]]�������������������������������������������������������������������������������������������������������������������������������������������������������������������� -->

	<!-- jQuery script import code :: $-undifined error ����!!! -->
	<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>

<!-- ������[[CSS style]]������������������������������������������������������������������������������������������������������������������������������������������������������������������ -->
<style type="text/css">
	div#d_detail{
		/* ���ϴ� ��ġ��  (�Է��� ��ǥ����) �̹��� ��ġ��Ű���� �Ҷ� �����ϴ� ���*/
		position:absolute;
	}
</style>

<!-- ������[[HEAD script]]������������������������������������������������������������������������������������������������������������������������������������������������������������������ -->
<script type="text/javascript">
	function startMethod(imgObj,picture){//@param imgObj:��ȭ���� ��� ��ġ������ ������ ���� �Ķ����  
		//alert("startMehod ȣ�� ����");
		//$("#d_detail").text("onmouseover");
		//alert("imgObj:"+imgObj.attr("id"));//���콺 ������  id�� ���� �о���� �ڵ�
		/* ����������.������ �ڷḦ ������ */
		var param = "picture="+picture;
		$.ajax({
			 method:"POST"
			,url:"partPageDetail.jsp"
			,data:param
			,success:function(result){
					$("#d_detail").css("border","#FFAAAA 5px dotted");
					$("#d_detail").css("left",imgObj.offset().left+155+"px");	//X����ǥ
					$("#d_detail").css("top",imgObj.offset().top+"px");			//Y����ǥ
					$("#d_detail").html(result);
			}
			,error:function(xhrObject){
				alert(xhrObject.responseText);
			}
		});
	}
	function clearMethod(imgObj){
		//alert("clearMehod ȣ�� ����");
		//$("#d_detail").text("������");
		$("#d_detail").text("������");
	}
</script>

</head>
<!--
��������������������������������������������������������������������������������������������������������������
-->
<body>
<!-- ������[[BODY content]]������������������������������������������������������������������������������������������������������������������������������������������������������������������ -->
<div id="d_detail"> ��ȭ�� </div>
	<table border="1" bordercolor="orange" width="550px">
		<tr>
			<td align="center" colspan="2" width="550px">
				<font size="10" color="AA00FF"><b>ī�ٷα�</b></font></td>
		</tr>
		<tr height = "160px">
			<td width="400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				������Ʈ����2018:���� ���� ��¥</td>
			<td id="p1" width="150px" align="center">
				<img src="../img/picture1_classyFake.jpg" width="100px" height="150px"
					 onmouseover="startMethod($('#p1'),'../img/picture1_classyFake.jpg')"
					 onmouseout="clearMethod()"></td>
		</tr>
		<tr height = "160px">
			<td width="400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				������ �ۼ� ���</td>
			<td id="p2" width="150px" align="center">
				<img src="../img/picture2_programLogic.jpg" width="100px" height="150px"
					 onmouseover="startMethod($('#p2'),'../img/picture2_programLogic.jpg')"
					 onmouseout="clearMethod()"></td>
		</tr>
		<tr height = "160px">
			<td width="400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				�Ϻ��� ���ι�</td>
			<td id="p3" width="150px" align="center">
				<img src="../img/picture3_completeStudy.jpg" width="100px" height="150px"
					 onmouseover="startMethod($('#p3'),'../img/picture3_completeStudy.jpg')"
					 onmouseout="clearMethod()"></td>
		</tr>
		<tr height = "160px">
			<td width="400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				����(snoop)</td>
			<td id="p4" width="150px" align="center">
				<img src="../img/picture4_snoop.jpg" width="100px" height="150px"
					 onmouseover="startMethod($('#p4'),'../img/picture4_snoop.jpg')"
					 onmouseout="clearMethod()"></td>
		</tr>
	</table>
</body>
</html>