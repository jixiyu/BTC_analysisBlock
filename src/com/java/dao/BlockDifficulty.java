package com.java.dao;

import java.sql.Connection;
import java.sql.ResultSet;

import com.java.util.DbUtil;
import com.java.util.VectorUtil;

public class BlockDifficulty {
	public String buf()throws Exception {
		DbUtil dbUtil = new DbUtil();
		VectorUtil vectorUtil = new VectorUtil();
		Connection con=null;
		ResultSet rs=null;
		
		String sql = "select height,difficulty from block order by height";
		con = dbUtil.getCon();
		rs = dbUtil.query(con, sql);
		
		String result = vectorUtil.addTwo(rs);	
		dbUtil.closeCon();
		return result;
	}
}
