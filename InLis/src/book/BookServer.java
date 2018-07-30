package book;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class BookServer {
	Logger logger = Logger.getLogger("BookServer.class");
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		String command = req.getParameter("command");
		BookDeo bookDeo = new BookDeo();
		if("select".equals(command)) {
			logger.info("bookselect 호출 성공");
			List<Map<String,Object>> bookList = null;
			bookList=bookDeo.bookSelect(null);
		}else if("insert".equals(command)) {
			logger.info("bookinsert 호출 성공");
			int result = 0;
			result = bookDeo.bookInsert(null);
		}else if("update".equals(command)) {
			logger.info("bookUpdate 호출 성공");
			int result = 0;
			result = bookDeo.bookUpdate(null);
		}else if("delete".equals(command)) {
			logger.info("bookdelete 호출 성공");
			int result = 0;
			result = bookDeo.bookDelete(null);
		}
	}
}
