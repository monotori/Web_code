<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�˻����� �ڵ��ϼ� ��� �����ϱ�</title>
<style type="text/css">
	div#d_word{
		position:absolute;
	}
	.listIn{
		background:#CCFFFF;
	}
	.listOut{
		background:#FFFFFF;
	}
	div#d_detail{
		/* ���ϴ� ��ġ��  (�Է��� ��ǥ����) �̹��� ��ġ��Ű���� �Ҷ� �����ϴ� ���*/
		position:absolute;
	}
</style>

<script type="text/javascript" src="../../js/jquery-1.12.0.js"></script>
<script type="text/javascript">
	function clearMethod(){
		$("#d_word").css("backgroundColor","#FFFFFF");
		$("#d_word").css("border","none");
		$("#d_word").html("");			
	}	
</script>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function (){
		$("#word").keyup(function(){
			var imgObj = $("#word")
			var param = "keyword="+$("#word").val();
			$.ajax({
				method:"post",//���۹�� get|post
				url:"searchWordAction.jsp", //dB����
			    data:param,//���� �ѱ涧 - DB�����ڵ�� 
			    success:function(result){
					//alert(result);
			    	//��ġ����ֱ�(div) - css(), attr()
			    	//div��� - text(), html()
			    	//����ڰ� �Է��� �� �о���� val()
					$("#d_word").css("border","#FFAAAA 2px dotted");
					$("#d_word").css("left",imgObj.offset().left+"px");
					$("#d_word").css("top",imgObj.offset().top+imgObj.offset().height+"px");
					$("#d_word").html(result);//result���� html�±�
			    	var tds = document.getElementsByTagName("td");
					for(var i=0;i<tds.length;i++){
						tds[i].onmouseover = function(){
							this.className = "listIn";
							var s = this.title;
							s++;
							$.ajax({
								 method:"POST"
								,url:"../../jch03/partPageDetail.jsp?picture=img/img"+s+".png"
								,data:param
								,success:function(result){
										$("#d_detail").css("left",$('#word').offset().left+151+"px");	//X����ǥ
										$("#d_detail").css("top",$('#word').offset().top+22+"px");			//Y����ǥ
										$("#d_detail").html(result);
								}
								,error:function(xhrObject){
									alert(xhrObject.responseText);
								}
							});
						};
						tds[i].onmouseout = function(){this.className = "listOut";};
						tds[i].onclick = function(){
							$("#word").val($(this).text());
							$("#d_detail").text("");
							clearMethod();
						}
					}
			    	//alert(tds.length);
			    },
			    error:function(xhrObject){//XMLHttpRequest - (�񵿱�)��Ű�ü-����(�Ӽ�),�Լ�
			    	alert(xhrObject.responseText);//xhrObject.responseXML
			    }/////////////��Ű�� ����(404,500)
						
			});///////////////end of ajax
		});///////////////////end of keyup �̺�Ʈ �ڵ鷯
	});///////////////////////end of ready()
</script>
<h3>�˻����� �ڵ��ϼ� ��� �����ϱ�</h3>
�˻��� �Է� : <input type="text" id="word" placeholder="��:ajax" onClick="javascript:$('#word').val('')"/>
<div id="d_word"></div>
<div id="d_detail"></div>
</body>
</html>