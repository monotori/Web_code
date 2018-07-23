package ajax.google;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.vo.FSMenuVO;
import com.vo.FoodStoreVO;

import inner.Join_oracle;



@WebServlet(urlPatterns = "/foodJSON.do")


public class FoodDao extends HttpServlet{
	
	private Join_oracle cn = new Join_oracle();
	PreparedStatement 	pstmt 	= null;
	ResultSet 			rs 		= null;
	public List<FSMenuVO> getFoodInfoList(FSMenuVO fsMenuVO)
	{
		List<FSMenuVO> foodInfoList = new ArrayList<FSMenuVO>();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT                                                       ");
	    sql.append("      fstore.fs_name, fstore.fs_latitude, fstore.fs_longitude");
	    sql.append("     ,fstore.fs_size, fstore.fs_opentime, fstore.fs_closetime");
	    sql.append("     ,fstore.fs_picture, fstore.fs_juso                      ");
	    sql.append("     ,fmenu.fsm_name,fmenu.fsm_price                         ");
	    sql.append(" FROM fs_menu fmenu, food_store fstore                       ");
	    sql.append("WHERE fmenu.fsm_code = fstore.fsm_code                         ");
	    
	    try {
			pstmt = cn.con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			//문제제기- 위 select문은 조인이 걸린 상태이다 제네릭 타입을 어떤 것으로 선택해야 할까?
			FSMenuVO menuVO = null;
			FoodStoreVO storeVO = null;
			while(rs.next()) {
				menuVO = new FSMenuVO();
				storeVO = new FoodStoreVO();
				storeVO.setFs_name(rs.getString("fs_name"));
				storeVO.setFs_latitude(rs.getString("fs_latitude"));
				storeVO.setFs_longitude(rs.getString("fs_longitude"));
				storeVO.setFs_size(rs.getString("fs_size"));
				storeVO.setFs_size(rs.getString("fs_opentime"));
				storeVO.setFs_size(rs.getString("fs_closetime"));
				storeVO.setFs_size(rs.getString("fs_picture"));
				storeVO.setFs_size(rs.getString("fs_juso"));
				menuVO.setFoodStoreVO(storeVO);
				menuVO.setFsm_name(rs.getString("fsm_name"));
				menuVO.setFsm_price(rs.getString("fsm_price"));
				foodInfoList.add(menuVO);
			}
			System.out.println(foodInfoList.toString());
	    } catch (SQLException se) {
	    	
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return foodInfoList;
	}
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		FoodDao bo = new FoodDao();
		List<FSMenuVO> deptList = bo.getFoodInfoList(null);
		Gson gs = new Gson();
		String jsonDept = gs.toJson(deptList);
		//이것은 서버의 콘솔 즉 톰캣 콘솔에 출력되는 것이고
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		//사용자가 화면에 입력한 이름을 출력해보세요
		//insert here
		//이건 브라우저에 출력되는 것임.
		out.print(jsonDept);
		//res.sendRedirect("/dev_jsp20180417/ch17/end.jsp");
	}
}
