<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CSS 및 AJAX 를 활용하여 그림위치 변경처리하기</title>

<!-- ―――[[ import ]]―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― -->

	<!-- jQuery script import code :: $-undifined error 주의!!! -->
	<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>

<!-- ―――[[CSS style]]――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― -->
<style type="text/css">
	div#d_detail{
		/* 원하는 위치에  (입력한 좌표값에) 이미지 위치시키고자 할때 적용하는 방식*/
		position:absolute;
	}
</style>

<!-- ―――[[HEAD script]]――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― -->
<script type="text/javascript">
	function startMethod(imgObj,picture){//@param imgObj:웹화면의 대상 위치정보를 얻어오기 위한 파라미터  
		//alert("startMehod 호출 성공");
		//$("#d_detail").text("onmouseover");
		//alert("imgObj:"+imgObj.attr("id"));//마우스 오버된  id의 값을 읽어오는 코드
		/* 띄워쓰기금지.서버가 자료를 못읽음 */
		var param = "picture="+picture;
		$.ajax({
			 method:"POST"
			,url:"partPageDetail.jsp"
			,data:param
			,success:function(result){
					$("#d_detail").css("border","#FFAAAA 5px dotted");
					$("#d_detail").css("left",imgObj.offset().left+155+"px");	//X축좌표
					$("#d_detail").css("top",imgObj.offset().top+"px");			//Y축좌표
					$("#d_detail").html(result);
			}
			,error:function(xhrObject){
				alert(xhrObject.responseText);
			}
		});
	}
	function clearMethod(imgObj){
		//alert("clearMehod 호출 성공");
		//$("#d_detail").text("지워짐");
		$("#d_detail").text("지워짐");
	}
</script>

</head>
<!--
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
-->
<body>
<!-- ―――[[BODY content]]――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― -->
<div id="d_detail"> 상세화면 </div>
	<table border="1" bordercolor="orange" width="550px">
		<tr>
			<td align="center" colspan="2" width="550px">
				<font size="10" color="AA00FF"><b>카다로그</b></font></td>
		</tr>
		<tr height = "160px">
			<td width="400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				라이프트랜드2018:아주 멋진 가짜</td>
			<td id="p1" width="150px" align="center">
				<img src="../img/picture1_classyFake.jpg" width="100px" height="150px"
					 onmouseover="startMethod($('#p1'),'../img/picture1_classyFake.jpg')"
					 onmouseout="clearMethod()"></td>
		</tr>
		<tr height = "160px">
			<td width="400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				순서도 작성 기법</td>
			<td id="p2" width="150px" align="center">
				<img src="../img/picture2_programLogic.jpg" width="100px" height="150px"
					 onmouseover="startMethod($('#p2'),'../img/picture2_programLogic.jpg')"
					 onmouseout="clearMethod()"></td>
		</tr>
		<tr height = "160px">
			<td width="400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				완벽한 공부법</td>
			<td id="p3" width="150px" align="center">
				<img src="../img/picture3_completeStudy.jpg" width="100px" height="150px"
					 onmouseover="startMethod($('#p3'),'../img/picture3_completeStudy.jpg')"
					 onmouseout="clearMethod()"></td>
		</tr>
		<tr height = "160px">
			<td width="400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				스눕(snoop)</td>
			<td id="p4" width="150px" align="center">
				<img src="../img/picture4_snoop.jpg" width="100px" height="150px"
					 onmouseover="startMethod($('#p4'),'../img/picture4_snoop.jpg')"
					 onmouseout="clearMethod()"></td>
		</tr>
	</table>
</body>
</html>