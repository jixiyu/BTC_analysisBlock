package com.java.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.java.util.Buffer3;


public class RewardPrice extends HttpServlet{


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		java.io.PrintWriter out = response.getWriter();
		Buffer3 buffer = new Buffer3();
		String buf;
//		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");   
//		response.setCharacterEncoding("UTF-8");	
		
		try {
			String sql="select day, reward*price, price from reward_price";
			buf = buffer.Buffer(sql);
			out.print(buf);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
}
