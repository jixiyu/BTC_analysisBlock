package com.java.util;

import java.sql.Connection;
import java.sql.ResultSet;

//�����ݿ�ȡ�� 5��Ԫ��
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
