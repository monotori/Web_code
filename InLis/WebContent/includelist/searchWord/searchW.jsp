<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- jqure와 이지유아이 정보가 들어있는 jsp -->
<jsp:include page="../initJQ_EU.jsp"></jsp:include>			
<script type="text/javascript">
	$(document).ready(function(){							// 화면 처리가 끝난 후를 기준으로 실행되는 function생성
		$("#searchword").keyup(function(){					// searchword에 타건시 실행되도록 하는 메서드
			var imgObj = $("#searchword")					// searchword의 주소값을 imgObj에 저장
			var param = "keyword="+$("#searchword").val();	// 검색으로 사용할 keyword값을 param에 작성
			$.ajax({
				method:"post",//전송방식 get|post
				url:"searchW_a.jsp?"+param, //dB연동
			    data:param,//값을 넘길때 - DB연동코드로 
			    success:function(result){// 연결되었을 때 처리문 
			    	$("#d_word").html(result);
			    	var tds = document.getElementsByTagName("td");
					for(var i=0;i<tds.length;i++){
						tds[i].onclick = function(){
							$("#searchword").val($(this).text());
							$("#d_word").html("");
						}
					}
			    },
			    error:function(xhrObject){//XMLHttpRequest - (비동기)통신객체-변수(속성),함수
			    	alert(xhrObject.responseText);//xhrObject.responseXML
			    }/////////////통신결과 에러(404,500)
			    
			});// ajax end ///////////////////////////////////////
		});// searchword.keyup end ///////////////////////////////
	});// document.ready end /////////////////////////////////////
</script>
<input type="text" id="searchword" placeholder="예:ajax" onClick="javascript:$('#word').val('')"/>
<div id="d_word"></div>