package com.java.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

//import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

public class VectorUtil {
	Vector<String> x = new Vector<String>();
	Vector<String> y = new Vector<String>();
	Vector<String> z = new Vector<String>();
	
	//������Buffer5 ����
	Vector<String> a = new Vector<String>();
	Vector<String> b = new Vector<String>();
	
	
	public String addTwo(ResultSet rs) {
		try {
			while(rs.next()) {				
				x.add(rs.getString(1));
				y.add(rs.getString(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		StringBuffer buf = new StringBuffer();
		for(int i = 0; i< x.size();i++) {
			String xseries = (String)x.get(i);
			String yseries = (String)y.get(i);
			buf.append(xseries+"\n"+yseries+"\n");
		}
		return buf.toString();
	}
	
	public String addThree(ResultSet rs) {
		try {
			while(rs.next()) {				
				x.add(rs.getString(1));
				y.add(rs.getString(2));
				z.add(rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		StringBuffer buf = new StringBuffer();
		for(int i = 0; i< x.size();i++) {
			String xseries = (String)x.get(i);
			String yseries = (String)y.get(i);
			String zseries = (String)z.get(i);
			buf.append(xseries+"\n"+yseries+"\n"+zseries+"\n");
		}
		return buf.toString();
	}
	
	public String addFive(ResultSet rs) {
		try {
			while(rs.next()) {				
				x.add(rs.getString(1));
				y.add(rs.getString(2));
				z.add(rs.getString(3));
				a.add(rs.getString(4));
				b.add(rs.getString(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		StringBuffer buf = new StringBuffer();
		for(int i = 0; i< x.size();i++) {
			String xseries = (String)x.get(i);
			String yseries = (String)y.get(i);
			String zseries = (String)z.get(i);
			String aseries = (String)a.get(i);
			String bseries = (String)b.get(i);
			
			buf.append(xseries+"\n"+yseries+"\n"+zseries+"\n"+aseries+"\n"+bseries+"\n");
		}
		return buf.toString();
	}
	
	
}
