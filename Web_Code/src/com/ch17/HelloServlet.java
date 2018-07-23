package com.ch17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.log4j.Logger;

import com.util.HangulConversion;

@WebServlet(urlPatterns = "/hello.dk")

public class HelloServlet extends HttpServlet {
	Logger logger = Logger.getLogger(HelloServlet.class);

	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		//�̰��� ������ �ܼ� �� ��Ĺ �ֿܼ� ��µǴ� ���̰�
		logger.fatal("doGetȣ�� ����");
		logger.error("doGetȣ�� ����");
		logger.warn("doGetȣ�� ����");
		logger.info("doGetȣ�� ����");
		logger.debug("doGetȣ�� ����");
		System.out.println("doGetȣ�� ����");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		//�̰� �������� ��µǴ� ����.
		out.print("<b>���� <font color='blue' size='20'>html</font>����</b>");
	}
	/********************************************************************************
	 * ȭ��ܿ��� post������� ��û �ϸ� doPost�޼ҵ尡 ȣ���
	 * @req - ��Ĺ������ ������ ���� ��û�� �Ͼ�� ��û��ü�� ��������.
	 * @res - ��Ĺ������ ������ ���� ��û�� �Ͼ�� ���䰴ü�� ��������.
	 * doPost�� �޼ҵ� �������̵��� �޼ҵ� �̹Ƿ� ���� Ÿ���� �ٲ� �� ����.
	 * doPost�� URL��û���δ� ����� ȣ�� �� �� ���� - ����ؿ�
	 * �ذ���:�ڹٽ�ũ��Ʈ �ڵ忡���� ȣ�� �� �� ����.
	 * �������� �̵��ϴ� �޼ҵ�� �Լ� ������ �� ��.
	 ********************************************************************************/
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		//�̰��� ������ �ܼ� �� ��Ĺ �ֿܼ� ��µǴ� ���̰�
		System.out.println("doPostȣ�� ����");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		//����ڰ� ȭ�鿡 �Է��� �̸��� ����غ�����
		//insert here
		String uname = HangulConversion.toKor(req.getParameter("t_id"));
		//�̰� �������� ��µǴ� ����.
		out.print("<b>���� <font color='blue' size='20'>html</font>"+uname+"����</b>");
		//res.sendRedirect("/dev_jsp20180417/ch17/end.jsp");
	}	
}