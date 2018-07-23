package com.ch11;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.util.DBConnectionMgr;
import com.vo.DeptVO;
import com.vo.EmpVO;
//DAO(Data Access Object):DB������ �����ϴ� Ŭ������ ������.
//����? ���뼺�� ���̱� ���� Ŭ���� ������
//������ �������̿��� ���谡 �ְ� �� ���迡 ���������� ���� ���·� Ŭ���� ���踦 �ؾ�
//���� �ִ� ���� ���׿��� �޼ҵ带 ������ �� ����.
//--> ���յ��� ���� �ڵ带 �����ϴ� ���� �߿���.
//--> ���յ��� ���ƾ� �����׽�Ʈ�� �����ϰ� �����׽�Ʈ�� ������.
//--> ������Ʈ �������
//�м� ���� -> ����(�ڵ�) -> �׽�Ʈ -> �ý��� ���� -> ��
public class EmpDao {
	//�����
	//��ü���� -> DI(dependency injection)
	DBConnectionMgr 	dbMgr = DBConnectionMgr.getInstance();
	Connection 			con   = null;
	PreparedStatement 	pstmt = null;
	ResultSet			rs	  = null;
	//�Է�ó��
	
	//����ó��
	
	//����ó��
	public int empDelete(int empno) {
		int result = 0;//���� ó�� ���θ� ���� ����
		StringBuilder sql = new StringBuilder();//StringBuffer
		sql.append("DELETE FROM emp WHERE empno=?");
		try {
			con = dbMgr.getConnection();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, empno);//ù��° ?�ڸ��� �����ȣ �����ϱ�
			result = pstmt.executeUpdate();
			if(result == 1) {
				System.out.println("���� ����");
			}
		} catch (SQLException se) {
			System.out.println("[[query]]"+sql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbMgr.freeConnection(con, pstmt);
		}
		return result;
	}
	//��ȸó�� - �޼ҵ� ���� - getEmpList(?):?
	public List<EmpVO> getEmpList(EmpVO pevo){
		List<EmpVO> empList = new ArrayList<EmpVO>();
		StringBuilder sql = new StringBuilder();//StringBuffer
		sql.append("SELECT empno, ename, job, mgr  ");
	    sql.append("     , TO_CHAR(hiredate,'YYYY-MM-DD') hiredate,sal,comm,deptno");
	    sql.append("  FROM emp                     ");
		//DB������ ����Ŭ ������ �����ϴ� ���̹Ƿ� ����ó�� �ʼ���.
		try {
			//�ڹٿ��� �����ϴ� �������̽��� �� �޼ҵ� ȣ���� ���� ��ü���ԵǴ� ��쵵 ����.
			con = dbMgr.getConnection();
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			//Ŀ���� �� �տ� �ִ�
			//System.out.println(rs.isFirst());
			//Ŀ���� �� �ڿ� �ִ�.
			//System.out.println(rs.isLast());
			EmpVO evo = null;
			while(rs.next()) {
			//while(rs.previous()) {	
		    //while(rs.absolute(4)) {
				evo = new EmpVO();
				evo.setEmpno(rs.getInt("empno"));
				evo.setEname(rs.getString("ename"));
				evo.setJob(rs.getString("job"));
				evo.setMgr(rs.getInt("mgr"));
				evo.setHiredate(rs.getString("hiredate"));
				evo.setSal(rs.getDouble("sal"));
				evo.setComm(rs.getDouble("comm"));
				evo.setDeptno(rs.getInt("deptno"));
				empList.add(evo);
			}
		} catch (SQLException se) {
			System.out.println("[[query]]"+sql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return empList;
	}
	//�μ����� ��ȸó�� - �޼ҵ� ���� - getDeptList(?):?
	public List<DeptVO> getDeptList(DeptVO pevo){
		List<DeptVO> deptList = new ArrayList<DeptVO>();
		StringBuilder sql = new StringBuilder();//StringBuffer
		sql.append("SELECT deptno, dname, loc");
	    sql.append("  FROM dept              ");
		//DB������ ����Ŭ ������ �����ϴ� ���̹Ƿ� ����ó�� �ʼ���.
		try {
			//�ڹٿ��� �����ϴ� �������̽��� �� �޼ҵ� ȣ���� ���� ��ü���ԵǴ� ��쵵 ����.
			con = dbMgr.getConnection();
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			DeptVO dvo = null;
			while(rs.next()) {
				dvo = new DeptVO();
				dvo.setDeptno(rs.getInt("deptno"));
				dvo.setDname(rs.getString("dname"));
				dvo.setLoc(rs.getString("loc"));
				deptList.add(dvo);
			}
		} catch (SQLException se) {
			System.out.println("[[query]]"+sql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deptList;
	}	
}





