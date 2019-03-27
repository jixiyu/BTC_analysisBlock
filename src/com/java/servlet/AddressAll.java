package com.java.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.util.Buffer2;
import com.java.util.Buffer3;


public class AddressAll extends HttpServlet{


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		java.io.PrintWriter out = response.getWriter();
		Buffer2 buffer = new Buffer2();
		String buf;
//		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");   
//		response.setCharacterEncoding("UTF-8");	
		
		try {
			String sql="select height,sum from allsum";
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
