package mybatisSample;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisDeo {
	String resource = "mybatisSample/MybatisSet.xml";
	SqlSessionFactory 	sqlMapper 	= null;
	SqlSession			sqlSes 		= null;
	
	public List<Map<String,Object>> Mybatistest(Map<String,Object> pMap) {
		List<Map<String,Object>> bookList = null;
		try {
	         Reader reader = null;
	         reader = Resources.getResourceAsReader(resource);
	         sqlMapper =  new SqlSessionFactoryBuilder().build(reader);
	         sqlSes = sqlMapper.openSession();
	         reader.close();
	         pMap = new HashMap<String,Object>();
	         pMap.put("empno", 7499);
	         bookList  = sqlSes.selectList("BlogMapper.myBatisTest",pMap);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
		return bookList;
	}
	
}
