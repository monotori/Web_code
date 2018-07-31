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
	<body>
		<div class="row">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">로그인</div>
					<div class="panel-body">

						<div class="input-group input-group-sm">
							<span class="input-group-addon" id="sizing-addon3">&nbsp;아이디&nbsp;&nbsp;</span> <input
								type="text" class="form-control" placeholder="아이디를 입력하시오"
								aria-describedby="sizing-addon3" id="login" name="login">
						</div>
						<div class="input-group input-group-sm">	
							<span class="input-group-addon" id="sizing-addon3">비밀번호</span> <input
								type="password" class="form-control" placeholder="비밀번호를 입력하시오"
								aria-describedby="sizing-addon3" id="pass" name="pass">
						</div>
						<div class="row">
							<div class="col-xs-6 col-md-4"></div>
							<div class="col-xs-6 col-md-4">
								<div class="btn-group" role="group" aria-label="...">
									<button type="button" class="btn btn-danger dropdown-toggle"
										onclick="submit()">로그인</button>
								</div>
							</div>
							<div class="col-xs-6 col-md-4"></div>
						</div>
					</div>
					<div class="col-xs-6 col-md-4"></div>
				</div>
			</div>
		</div>
</form>
</body>
</html>