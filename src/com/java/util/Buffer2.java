package com.java.util;

import java.sql.Connection;
import java.sql.ResultSet;

public class Buffer2 {
	public String Buffer(String sql)throws Exception {
		DbUtil dbUtil = new DbUtil();
		VectorUtil vectorUtil = new VectorUtil();
		Connection con=null;
		ResultSet rs=null;
				
		con = dbUtil.getCon();
		rs = dbUtil.query(con, sql);
		
		String result = vectorUtil.addTwo(rs);	
		dbUtil.closeCon();
		return result;
	}
}
