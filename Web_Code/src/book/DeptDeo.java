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
	         logger.info("getBookList 호출 성공");
	         sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
	         sqlSes = sqlMapper.openSession();
	         reader.close();
	         logger.info("getBookList 호출 성공1");
	         /*bookList  = sqlSes.selectList("BlogMapper.myBatisTest",pMap);
	         logger.info("조회결과"+bookList .get(0));*/
	         //resert  = sqlSes.insert("BlogMapper.deptinsert",pMap);
	         resert  = sqlSes.update("BlogMapper.deptupdate",pMap);
	         sqlSes.commit();
	         logger.info("resert :"+ resert);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
		return resert;
	}
	
}
