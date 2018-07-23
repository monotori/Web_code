package com.ch17;


import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.Buffer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.omg.Messaging.SYNC_WITH_TRANSPORT;

import com.google.gson.JsonObject;


@WebServlet(urlPatterns = "/newsS.do")

public class newsS extends HttpServlet {
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{

		
		
		//이것은 서버의 콘솔 즉 톰캣 콘솔에 출력되는 것이고
		System.out.println("doGet호출 성공");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		String as = req.getParameter("t_rid");
		String bs = req.getParameter("t_id");
		
		FileReader reader = new FileReader("E:\\dev_cosmo20180720\\dev_jsp20180417\\WebContent\\json\\newsJSON.json");
		BufferedReader br = new BufferedReader(reader);
		String i = null;
		StringBuilder sb = new StringBuilder();
		while((i=br.readLine())!=null) {
			i = i.replace("[", "");
			i = i.replace("]", "");
			sb.append(i);
		}
		//이건 브라우저에 출력되는 것임.
		JSONObject obj = new JSONObject();
		obj.put("Title", as);
		obj.put("list", bs);
		sb.append(","+obj.toJSONString());
		try {
	 
			FileWriter file = new FileWriter("E:\\dev_cosmo20180720\\dev_jsp20180417\\WebContent\\json\\newsJSON.json",false);
			file.write("["+sb.toString()+"]");
			file.flush();
			file.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}