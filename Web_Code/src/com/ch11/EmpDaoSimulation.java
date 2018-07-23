package com.ch11;

import java.util.List;
import java.util.Map;

import com.vo.EmpVO;

public class EmpDaoSimulation {

	public static void main(String[] args) {
		EmpDao eDao = new EmpDao();
		//List<EmpVO> empList = eDao.getEmpList(null);
		//select count(*) from emp
		//System.out.println(empList.size());
		int result = 0;
		//result = eDao.empDelete(9955);
		BoardDao bDao = new BoardDao();
		List<Map<String,Object>> boardList = bDao.getBoardList(null);
		result = boardList.size();
		//System.out.println(result);
		System.out.println(boardList);
	}

}
