package com.ch11;

import java.util.List;

import com.vo.EmpVO;

public class EmpController {
	final static String _INS = "insert";//int�� ��ȯ��
	final static String _UPD = "update";//int�� ��ȯ��
	final static String _DEL = "delete";//int�� ��ȯ��
	final static String _SEL = "select";//ResultSet
	EmpVO pevo = new EmpVO();
	EmpDao eDao = new EmpDao();//JDBC����Ŭ����
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
