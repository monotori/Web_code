package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.BookDeo;

@WebServlet(urlPatterns = "/bmake.do")

public class Loginok extends HttpServlet{


	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException
			{
				String login = req.getParameter("login");
				String pass = req.getParameter("pass");
				System.out.println(login + "  " + pass);
				Map<String,Object> pMap = new HashMap<String, Object>();
				pMap.put("login", login);
				pMap.put("pass", pass);
				BookDeo bdeo = new BookDeo();
				PrintWriter out = res.getWriter();
				if(bdeo.bookInsert(pMap)==1) {
					out.println("alert('성공하였습니다');");
				}
				res.sendRedirect("/InLis/auto/bmake.jsp");
			}
	
}

