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
					<div class="panel-heading">�α���</div>
					<div class="panel-body">

						<div class="input-group input-group-sm">
							<span class="input-group-addon" id="sizing-addon3">&nbsp;���̵�&nbsp;&nbsp;</span> <input
								type="text" class="form-control" placeholder="���̵� �Է��Ͻÿ�"
								aria-describedby="sizing-addon3" id="login" name="login">
						</div>
						<div class="input-group input-group-sm">	
							<span class="input-group-addon" id="sizing-addon3">��й�ȣ</span> <input
								type="password" class="form-control" placeholder="��й�ȣ�� �Է��Ͻÿ�"
								aria-describedby="sizing-addon3" id="pass" name="pass">
						</div>
						<div class="row">
							<div class="col-xs-6 col-md-4"></div>
							<div class="col-xs-6 col-md-4">
								<div class="btn-group" role="group" aria-label="...">
									<button type="button" class="btn btn-danger dropdown-toggle"
										onclick="submit()">�α���</button>
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