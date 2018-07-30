package book;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/blist.do")
public class BoolList extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException
			{
			res.setContentType("text/html; charset=EUC-KR");
			PrintWriter out = res.getWriter();
			Map<String,Object> pMap = new HashMap<String,Object>();
			pMap.put("key",req.getParameter("keyword"));
			System.out.println(req.getParameter("keyword"));
			BookDeo BD = new BookDeo();
			List<Map<String, Object>> getWordList = BD.getBookList(pMap);
			req.setAttribute("getWordList", getWordList);
			System.out.println(getWordList.toString());
			RequestDispatcher view = req.getRequestDispatcher("/auto/searchWordResult.jsp");
			view.forward(req,res);
			}
}
