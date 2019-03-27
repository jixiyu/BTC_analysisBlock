package com.java.dao;

import java.sql.Connection;
import java.sql.ResultSet;

import com.java.util.DbUtil;
import com.java.util.VectorUtil;

public class BlockAddTxo {
	public String buf()throws Exception {
		DbUtil dbUtil = new DbUtil();
		VectorUtil vectorUtil = new VectorUtil();
		Connection con=null;
		ResultSet rs=null;
		
		String sql = "select height,addnum,txonum from addtxo";
		con = dbUtil.getCon();
		rs = dbUtil.query(con, sql);
		
		String result = vectorUtil.addThree(rs);	
		dbUtil.closeCon();
		return result;
	}
}
