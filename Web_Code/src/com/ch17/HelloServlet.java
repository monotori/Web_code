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
		//이것은 서버의 콘솔 즉 톰캣 콘솔에 출력되는 것이고
		logger.fatal("doGet호출 성공");
		logger.error("doGet호출 성공");
		logger.warn("doGet호출 성공");
		logger.info("doGet호출 성공");
		logger.debug("doGet호출 성공");
		System.out.println("doGet호출 성공");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		//이건 브라우저에 출력되는 것임.
		out.print("<b>나는 <font color='blue' size='20'>html</font>문서</b>");
	}
	/********************************************************************************
	 * 화면단에서 post방식으로 요청 하면 doPost메소드가 호출됨
	 * @req - 톰캣서버가 서블릿에 대한 요청이 일어나면 요청객체를 주입해줌.
	 * @res - 톰캣서버가 서블릿에 대한 요청이 일어나면 응답객체를 주입해줌.
	 * doPost는 메소드 오버라이딩한 메소드 이므로 리턴 타입을 바꿀 수 없음.
	 * doPost는 URL요청으로는 절대로 호출 할 수 없음 - 기억해요
	 * 해결방법:자바스크립트 코드에서만 호출 할 수 있음.
	 * 페이지를 이동하는 메소드와 함수 정리해 둘 것.
	 ********************************************************************************/
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		//이것은 서버의 콘솔 즉 톰캣 콘솔에 출력되는 것이고
		System.out.println("doPost호출 성공");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		//사용자가 화면에 입력한 이름을 출력해보세요
		//insert here
		String uname = HangulConversion.toKor(req.getParameter("t_id"));
		//이건 브라우저에 출력되는 것임.
		out.print("<b>나는 <font color='blue' size='20'>html</font>"+uname+"문서</b>");
		//res.sendRedirect("/dev_jsp20180417/ch17/end.jsp");
	}	
}