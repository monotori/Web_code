package book;



import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.*;
import org.apache.log4j.Logger;

public class DeptDeo {
	
	Logger logger = Logger.getLogger("BookDeo.class");
	String resource = "book/MapperConfig.xml";
	SqlSessionFactory 	sqlMapper 	= null;
	SqlSession			sqlSes 		= null;
	int resert;
	
	public int getBookList(Map<String,Object> pMap) {
		List<Map<String,Object>> bookList = null;
		try {
	         Reader reader = null;
	         reader = Resources.getResourceAsReader(resource);
	         logger.info("getBookList ȣ�� ����");
	         sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
	         sqlSes = sqlMapper.openSession();
	         reader.close();
	         logger.info("getBookList ȣ�� ����1");
	         /*bookList  = sqlSes.selectList("BlogMapper.myBatisTest",pMap);
	         logger.info("��ȸ���"+bookList .get(0));*/
	         //resert  = sqlSes.insert("BlogMapper.deptinsert",pMap);
	         resert  = sqlSes.update("BlogMapper.deptupdate",pMap);
	         sqlSes.commit();
	         logger.info("resert :"+ resert);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
		return resert;
	}
	
	public int getDeptInsert(Map<String,Object> pMap) {
		List<Map<String,Object>> bookList = null;
		try {
			Reader reader = null;
			reader = Resources.getResourceAsReader(resource);
			logger.info("getBookList ȣ�� ����");
			sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
			sqlSes = sqlMapper.openSession();
			reader.close();
			logger.info("getBookList ȣ�� ����1");
			/*bookList  = sqlSes.selectList("BlogMapper.myBatisTest",pMap);
	         logger.info("��ȸ���"+bookList .get(0));*/
			//resert  = sqlSes.insert("BlogMapper.deptinsert",pMap);
			resert  = sqlSes.update("BlogMapper.deptinsert",pMap);
			sqlSes.commit();
			logger.info("resert :"+ resert);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resert;
	}
	
	public int getDeptUpdate(Map<String,Object> pMap) {
		List<Map<String,Object>> bookList = null;
		try {
			Reader reader = null;
			reader = Resources.getResourceAsReader(resource);
			logger.info("getBookList ȣ�� ����");
			sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
			sqlSes = sqlMapper.openSession();
			reader.close();
			logger.info("getBookList ȣ�� ����1");
			/*bookList  = sqlSes.selectList("BlogMapper.myBatisTest",pMap);
	         logger.info("��ȸ���"+bookList .get(0));*/
			//resert  = sqlSes.insert("BlogMapper.deptinsert",pMap);
			resert  = sqlSes.update("BlogMapper.deptupdate",pMap);
			sqlSes.commit();
			logger.info("resert :"+ resert);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resert;
	}
	
	public String getProcedure(Map<String,Object> pMap) {
		List<Map<String,Object>> bookList = null;
		String msg ="";
		try {
			Reader reader = null;
			reader = Resources.getResourceAsReader(resource);
			logger.info("Procedure ȣ�� ����");
			sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
			sqlSes = sqlMapper.openSession();
			reader.close();
			logger.info("Procedure ȣ�� ����1");
			sqlSes.selectOne("BlogMapper.proc_emp_sal_update",pMap);
			msg = pMap.toString();
			logger.info("resert :"+ pMap.get("msg"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	public int getDeptdelete(List<String> pMap) {
		List<String> bookList = null;
		try {
	         Reader reader = null;
	         reader = Resources.getResourceAsReader(resource);
	         logger.info("getDeptdelete ȣ�� ����");
	         sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
	         sqlSes = sqlMapper.openSession();
	         reader.close();
	         logger.info("getDeptdelete ȣ�� ����1");
	         /*bookList  = sqlSes.selectList("BlogMapper.myBatisTest",pMap);
	         logger.info("��ȸ���"+bookList .get(0));*/
	         //resert  = sqlSes.insert("BlogMapper.deptinsert",pMap);
	         resert  = sqlSes.update("BlogMapper.insertAuthor",pMap);
	         sqlSes.commit();
	         logger.info("resert :"+ resert);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
		return resert;
	}
}
