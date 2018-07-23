package com.ch11;

import java.util.List;

import com.vo.EmpVO;

public class EmpController {
	final static String _INS = "insert";//int가 반환값
	final static String _UPD = "update";//int가 반환값
	final static String _DEL = "delete";//int가 반환값
	final static String _SEL = "select";//ResultSet
	EmpVO pevo = new EmpVO();
	EmpDao eDao = new EmpDao();//JDBC구현클래스
	public int CUDEmp() {
		int result = 0;
		if(_INS.equals(pevo.getCommand())) {
			
		}else if(_UPD.equals(pevo.getCommand())) {
			
		}else if(_DEL.equals(pevo.getCommand())) {
			
		}
		return result;
	}
	public List<EmpVO> getEmpList(EmpVO evo){
		
		return null;
	}
	
	
}
