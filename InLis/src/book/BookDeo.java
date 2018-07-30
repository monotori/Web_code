package book;



import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.*;
import org.apache.log4j.Logger;

public class BookDeo {
	
	Logger logger = Logger.getLogger("BookDeo.class");
	String resource = "book/MapperConfig.xml";
	SqlSessionFactory 	sqlMapper 	= null;
	SqlSession			sqlSes 		= null;
	int resert = 0;
	
	public List<Map<String,Object>> getBookList(Map<String,Object> pMap) {
		List<Map<String,Object>> bookList = null;
		try {
	         Reader reader = null;
	         reader = Resources.getResourceAsReader(resource);
	         sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
	         logger.info("getBookList ȣ�� ����");
	         sqlSes = sqlMapper.openSession();
	         reader.close();
	         bookList  = sqlSes.selectList("BlogMapper.booklist",pMap);	       
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
		return bookList;
	}
	
	public int bookUpdate(Map<String,Object> pMap) {
		logger.info("bookUpdate ȣ�� ����");
		int result = 0;
		return result;
	}
	
	
	public int bookDelete(Map<String,Object> pMap) {
		logger.info("bookDelete ȣ�� ����");
		int result = 0;
		return result;
	}
	
	
	public int bookInsert(Map<String,Object> pMap) {
		List<Map<String,Object>> bookList = null;
		try {
			Reader reader = null;
			reader = Resources.getResourceAsReader(resource);
			logger.info("getBookList ȣ�� ����");
			sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
			sqlSes = sqlMapper.openSession();
			reader.close();
			logger.info("getBookList ȣ�� ����1");
			resert  = sqlSes.update("BlogMapper.bookinsert",pMap);
			sqlSes.commit();
			logger.info("resert :"+ resert);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resert;
	}
	
	
	public List<Map<String,Object>> bookSelect(Map<String,Object> pMap) {
		logger.info("bookSelect ȣ�� ����");
		List<Map<String,Object>> result = null;
		return result;
	}
}
