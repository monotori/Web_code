package com.ch17;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import inner.Join_oracle;


public class FoodDao {
	private Join_oracle cn = new Join_oracle();
	private	Statement stmt = null;
	private	ResultSet   rs = null;
	private	String sql = null;
	private int up = 0;
	FoodStoreVO FsVO;
	List<FoodStoreVO> list = new ArrayList<FoodStoreVO>();
	
	public List<FoodStoreVO> JsonList() {		
		try {
			stmt = cn.con.createStatement();
			sql = "select fS_BAD,fS_CLOSETIME,fS_CODE,fS_GOOD,fS_JUSO,fS_LATITUDE,fS_LONGITUDE,fS_NAME,fS_OPENTIME,fS_PICTURE,fS_SIZE from FOOD_STORE";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				FsVO = new FoodStoreVO();
				FsVO.setFS_CLOSETIME(	rs.getString("fS_CLOSETIME"));
				FsVO.setFS_JUSO(		rs.getString("fS_JUSO"));
				FsVO.setFS_LATITUDE(	rs.getString("fS_LATITUDE"));
				FsVO.setFS_LONGITUDE(	rs.getString("fS_LONGITUDE"));
				FsVO.setFS_NAME(		rs.getString("fS_NAME"));
				FsVO.setFS_OPENTIME(	rs.getString("fS_OPENTIME"));
				FsVO.setFS_PICTURE(		rs.getString("fS_PICTURE"));
				FsVO.setFS_SIZE(		rs.getString("fS_SIZE"));
				FsVO.setFS_BAD(			rs.getInt("fS_BAD"));
				FsVO.setFS_CODE(		rs.getInt("fS_CODE"));
				FsVO.setFS_GOOD(		rs.getInt("fS_GOOD"));
				list.add(FsVO);
			}                                
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static void main(String[] args) {
		FoodDao fd = new FoodDao();
		System.out.println("여긴왔냐?");
		fd.JsonList();
	}
}
