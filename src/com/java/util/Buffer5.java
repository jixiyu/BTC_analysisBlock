package com.java.util;

import java.sql.Connection;
import java.sql.ResultSet;

//从数据库取出 5列元素
public class Buffer5 {
	public String Buffer(String sql)throws Exception {
		DbUtil dbUtil = new DbUtil();
		VectorUtil vectorUtil = new VectorUtil();
		Connection con=null;
		ResultSet rs=null;
				
		con = dbUtil.getCon();
		rs = dbUtil.query(con, sql);
		
		String result = vectorUtil.addFive(rs);	
		dbUtil.closeCon();
		return result;
	}
}
