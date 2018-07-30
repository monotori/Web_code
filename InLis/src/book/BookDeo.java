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
	
	
	public List<Map<String,Object>> getBookList(Map<String,Object> pMap) {
		List<Map<String,Object>> bookList = null;
		try {
	         Reader reader = null;
	         reader = Resources.getResourceAsReader(resource);
	         sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
	         logger.info("getBookList ȣ�� ����");
	         sqlSes = sqlMapper.openSession();
	         reader.close();
	         pMap = new HashMap<String,Object>();
	         pMap.put("empno", 7499);
	         bookList  = sqlSes.selectList("BlogMapper.myBatisTest");
	         logger.info("��ȸ���"+bookList .get(0));
	         
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
		logger.info("bookInsert ȣ�� ����");
		int result = 0;
		return result;
	}
	
	
	public List<Map<String,Object>> bookSelect(Map<String,Object> pMap) {
		logger.info("bookSelect ȣ�� ����");
		List<Map<String,Object>> result = null;
		return result;
	}
}
