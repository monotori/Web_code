package dev_jsp20180417;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class H2servlet extends HttpServlet {

		public void doget(HttpServletRequest req, HttpServletResponse res) throws Exception { 
			System.out.println("doget호출 성공");

		}
}
