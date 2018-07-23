package com.ch11;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.util.DBConnectionMgr;

public class BoardDao {
	//선언부
	//객체주입 -> DI(dependency injection)
	DBConnectionMgr 	dbMgr = DBConnectionMgr.getInstance();
	Connection 			con   = null;
	PreparedStatement 	pstmt = null;
	ResultSet			rs	  = null;
	//조회처리 - 메소드 선언 - getEmpList(?):?
	public List<Map<String,Object>> getBoardList(Map<String,Object> pMap){
		List<Map<String,Object>> boardList = new ArrayList<Map<String,Object>>();
		StringBuilder sql = new StringBuilder();//StringBuffer
		sql.append("SELECT b_no, b_title, b_content, b_writer");
	    sql.append("     , b_date, b_hit");
	    sql.append("  FROM jdbc_board");
		//DB연동은 오라클 서버에 접속하는 것이므로 예외처리 필수임.
		try {
			//자바에서 제공하는 인터페이스들 중 메소드 호출을 통해 객체주입되는 경우도 많음.
			con = dbMgr.getConnection();
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			Map<String,Object> rMap = null;
			while(rs.next()) {
				rMap = new HashMap<String,Object>();
				rMap.put("B_NO",rs.getInt("b_no"));
				rMap.put("B_WRITER",rs.getString("b_writer"));
				rMap.put("B_TITLE",rs.getString("b_title"));
				rMap.put("B_CONTENT",rs.getString("b_content"));
				rMap.put("B_DATE",rs.getString("b_date"));
				rMap.put("B_HIT",rs.getInt("b_hit"));
				boardList.add(rMap);
			}
		} catch (SQLException se) {
			System.out.println("[[query]]"+sql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardList;
	}
}
