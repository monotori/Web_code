<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- jqure�� ���������� ������ ����ִ� jsp -->
<jsp:include page="../initJQ_EU.jsp"></jsp:include>			
<script type="text/javascript">
	$(document).ready(function(){							// ȭ�� ó���� ���� �ĸ� �������� ����Ǵ� function����
		$("#searchword").keyup(function(){					// searchword�� Ÿ�ǽ� ����ǵ��� �ϴ� �޼���
			var imgObj = $("#searchword")					// searchword�� �ּҰ��� imgObj�� ����
			var param = "keyword="+$("#searchword").val();	// �˻����� ����� keyword���� param�� �ۼ�
			$.ajax({
				method:"post",//���۹�� get|post
				url:"searchW_a.jsp?"+param, //dB����
			    data:param,//���� �ѱ涧 - DB�����ڵ�� 
			    success:function(result){// ����Ǿ��� �� ó���� 
			    	$("#d_word").html(result);
			    	var tds = document.getElementsByTagName("td");
					for(var i=0;i<tds.length;i++){
						tds[i].onclick = function(){
							$("#searchword").val($(this).text());
							$("#d_word").html("");
						}
					}
			    },
			    error:function(xhrObject){//XMLHttpRequest - (�񵿱�)��Ű�ü-����(�Ӽ�),�Լ�
			    	alert(xhrObject.responseText);//xhrObject.responseXML
			    }/////////////��Ű�� ����(404,500)
			    
			});// ajax end ///////////////////////////////////////
		});// searchword.keyup end ///////////////////////////////
	});// document.ready end /////////////////////////////////////
</script>
<input type="text" id="searchword" placeholder="��:ajax" onClick="javascript:$('#word').val('')"/>
<div id="d_word"></div>