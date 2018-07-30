<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<jsp:include page="../includelist/initJQ_EU_Book.jsp"></jsp:include>
<form action="/InLis/bmake.do">
<div class="panel panel-default">
  <div class="panel-heading">책 추가하기</div>
  <div class="panel-body">
    <body>
	<div class="input-group input-group-sm">
		<span class="input-group-addon" id="sizing-addon3">#</span> <input
			type="text" class="form-control" placeholder="제목"
			aria-describedby="sizing-addon3" id ="ti" name = "ti">
	</div>
	<div class="input-group input-group-sm">
		<span class="input-group-addon" id="sizing-addon3">#</span> <input
			type="text" class="form-control" placeholder="내용"
			aria-describedby="sizing-addon3" id ="mo" name = "mo">
	</div>
	<div class="btn-group" role="group" aria-label="...">
		<button type="button" class="btn btn-danger dropdown-toggle" onclick="submit()">만들기</button>
	</div>
</form>
</body>
  </div>
</div>

</html>