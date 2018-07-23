<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>
<script type="text/javascript">
	function open_food(){
		$('#d_food').html("");
		$.ajax({
			type: "POST"
			,url:"./Foodlist.jsp"
			,dataType:"json"
			,success:function(data){
				$.each(data,function(index,item){
					alert(item.fS_BAD)
					$('#d_food').html(
					$('#d_food').html()
					+"FS_CODE			 :"+item["FS_CODE"]+"<br>"
					+"FS_NAME            :"+item["FS_NAME"]+"<br>"
					+"FS_CLOSETIME		 :"+item["FS_CLOSETIME"]+"<br>"
					+"FS_JUSO            :"+item["FS_JUSO"]+"<br>"
					+"FS_LATITUDE        :"+item["FS_LATITUDE"]+"<br>"
					+"FS_LONGITUDE       :"+item["FS_LONGITUDE"]+"<br>"
					+"FS_OPENTIME        :"+item["FS_OPENTIME"]+"<br>"
					+"FS_PICTURE         :"+item["FS_PICTURE"]+"<br>"
					+"FS_SIZE            :"+item["FS_SIZE"]+"<br>"
					+"FS_GOOD			 :"+item["FS_GOOD"]+"<br>"
					+"FS_BAD			 :"+item["FS_BAD"]+"<br>"
					+"<br></div>");
					
				})
			}
			,error:function(){
				
			}
		})	
	};
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<input id="bt_a" type="button" value="³ª¿Í¶ó" onclick="open_food()">
<div id="d_food"></div>
</body>
</html>