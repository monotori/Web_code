<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>검색어의 자동완성 기능 구현하기</title>
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
		/* 원하는 위치에  (입력한 좌표값에) 이미지 위치시키고자 할때 적용하는 방식*/
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
				method:"post",//전송방식 get|post
				url:"searchWordAction.jsp", //dB연동
			    data:param,//값을 넘길때 - DB연동코드로 
			    success:function(result){
					//alert(result);
			    	//위치잡아주기(div) - css(), attr()
			    	//div출력 - text(), html()
			    	//사용자가 입력한 값 읽어오기 val()
					$("#d_word").css("border","#FFAAAA 2px dotted");
					$("#d_word").css("left",imgObj.offset().left+"px");
					$("#d_word").css("top",imgObj.offset().top+imgObj.offset().height+"px");
					$("#d_word").html(result);//result에는 html태그
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
										$("#d_detail").css("left",$('#word').offset().left+151+"px");	//X축좌표
										$("#d_detail").css("top",$('#word').offset().top+22+"px");			//Y축좌표
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
			    error:function(xhrObject){//XMLHttpRequest - (비동기)통신객체-변수(속성),함수
			    	alert(xhrObject.responseText);//xhrObject.responseXML
			    }/////////////통신결과 에러(404,500)
						
			});///////////////end of ajax
		});///////////////////end of keyup 이벤트 핸들러
	});///////////////////////end of ready()
</script>
<h3>검색어의 자동완성 기능 구현하기</h3>
검색어 입력 : <input type="text" id="word" placeholder="예:ajax" onClick="javascript:$('#word').val('')"/>
<div id="d_word"></div>
<div id="d_detail"></div>
</body>
</html>