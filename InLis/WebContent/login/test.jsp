<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<jsp:include page="../includelist/initJQ_EU_Book.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">�̸��� �ּ�</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="�̸����� �Է��ϼ���">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">��ȣ</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="��ȣ">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">���� ���ε�</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">���⿡ ��Ϸ��� ���� ����</p>
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox"> �Է��� ����մϴ�
    </label>
  </div>
  <button type="submit" class="btn btn-default">����</button>
</form>
</body>
</html>