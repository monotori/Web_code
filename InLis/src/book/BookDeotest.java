package book;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/bmake.do")
public class BookDeotest extends HttpServlet{


	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException
			{
				String ti = req.getParameter("ti");
				String mo = req.getParameter("mo");
				System.out.println(ti + "  " + mo);
				Map<String,Object> pMap = new HashMap<String, Object>();
				pMap.put("ti", ti);
				pMap.put("mo", mo);
				BookDeo bdeo = new BookDeo();
				PrintWriter out = res.getWriter();
				if(bdeo.bookInsert(pMap)==1) {
					out.println("alert('성공하였습니다');");
				}
				res.sendRedirect("/InLis/auto/bmake.jsp");
			}
	
}
