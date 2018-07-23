<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>
<script type="text/javascript">
function seve_t(){
	$.ajax({
		url:"/dev_jsp20180417/newsS.do?t_id="+$('#t_id').val()+"&t_rid="+$('#t_rid').val()
		,type:"GET"
		,success:function(data){
			$('#bt_a').show();
			$('#d_margin').html("");
		}
		,error:function(){
			
		}
	})	
};
</script>
<div id = "mix">
	제목 : <input type="text" id="t_id" name="t_id"><br>
	내용 : <textarea	id="t_rid" name="t_rid"></textarea><br>
	<input type="button" value="저장" onclick="seve_t()">
	<div id = "dd"></div>
</div>
	
