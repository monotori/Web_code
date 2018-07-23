<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>

<script type="text/javascript">

	function open_url(){
		$.ajax({
			url:"http://localhost:9000/dev_jsp20180417/ch17/newsajax.jsp"
			,type:"GET"
			,success:function(data){
				$('#d_margin').html(data);
				$('#bt_a').hide();
			}
			,error:function(){
				
			}
		})	
	};
	function open_newsj(){
		$('#d_newsj').html("");
		$.ajax({
			url:"../json/newsJSON.json"
			,dataType:"json"
			,success:function(data){
				$.each(data,function(index,item){
					$('#d_newsj').html($('#d_newsj').html()+"<div> 제목 :"+item["Title"]+"<br> 내용:"+item["list"]+"<br>");
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

<iframe src="https://news.naver.com/main/read.nhn?oid=028&sid1=102&aid=0002417942&mid=shm&mode=LSD&nh=20180718145912" width=1280 height=600 frameborder=0>
어디로나오니
</iframe><br>
<input id="bt_a" type="button" value="댓글 쓰기" onclick="open_url()"><input type="button" value="댓글 보기" onclick="open_newsj()"><br>
<div id="d_margin"></div>
<div id="d_newsj"></div>
</body>
</html>