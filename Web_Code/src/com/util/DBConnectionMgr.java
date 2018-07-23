package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConnectionMgr {
	public static DBConnectionMgr dbMgr = null;
	public final String _DRIVER = "oracle.jdbc.driver.OracleDriver";
	public final String _URL  = "jdbc:oracle:thin:@192.168.0.17:1521:orcl11";
	public final String _USER = "scott";
	public final String _PW   = "tiger";
	Connection 			con   = null;
	PreparedStatement 	pstmt = null;
	ResultSet 			rs	  = null;
	//DB������ �ʿ��� DBConnectionMgr �ν��Ͻ� ���.
	public static DBConnectionMgr getInstance() {
		if(dbMgr==null) {
			dbMgr = new DBConnectionMgr();
		}
		return dbMgr;
	}
	public Connection getConnection() {
		try {
			Class.forName(_DRIVER);
			con = DriverManager.getConnection(_URL, _USER, _PW);
		} catch (ClassNotFoundException ce) {
			System.out.println("����̹� Ŭ������ ã�� �� �����ϴ�.");
		} catch (Exception e) {
			System.out.println("����Ŭ ������ Ŀ�ؼ� ����!!!!!!!");
		}
		return con;
	}
	//����� �ڿ� �ݳ��ϱ�
	/* �ݵ�� ������ �������� �ݳ��� ��.
	 * 1. INSERT, UPDATE, DELETE �϶�  2����
	 * 2. SELECT �϶� 3�� ��.
	 */
	public void freeConnection(Connection con, PreparedStatement pstmt) {
		try {
			if(pstmt !=null) pstmt.close();
			if(con !=null) con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void freeConnection(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs !=null) rs.close();
			if(pstmt !=null) pstmt.close();
			if(con !=null) con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
}



