package com.java.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.SQLException;

public class DbUtil {
	private String dbUrl="jdbc:mysql://10.21.238.222/result";//bit_mad  web
	private String dbUserName="root";
	private String dbPassword="123456";
	private String jdbcName="com.mysql.jdbc.Driver";
	
	private Connection con = null;
	private ResultSet rs = null;
	private PreparedStatement psmt = null;
	
	
	/**
	 * 获取数据库连接
	 * @return
	 * @throws Exception
	 */
	public Connection getCon() throws Exception{
		Class.forName(jdbcName);
		con=DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
		return con;
	}
	
	/**
	 * 关闭数据库连接
	 * @param con
	 * @throws Exception
	 */
	public void closeCon() throws Exception{
		if(rs!=null) {
			rs.close();
		}
		
		if(psmt!=null) {
			psmt.close();
		}
		if (con != null)
			con.close();
	}
	
	public ResultSet query(Connection con,String sql)throws Exception{
		ResultSet rs = null;
		psmt = con.prepareStatement(sql);
		rs=psmt.executeQuery();
		
		return rs;
	}
	
	
	
	
	public static void main(String[] args) {
		DbUtil dbUtil = new DbUtil();
		Connection con=null;
		try {
//			dbUtil.getCon();
			System.out.println("数据库连接成功");
//			dbUtil.cldbUtil.getCodbUtil.getCon();n();oseCon(con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败");
		}
	}
	
	
}
