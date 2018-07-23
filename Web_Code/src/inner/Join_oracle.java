package inner;

import java.sql.Connection;
import java.sql.DriverManager;


public class Join_oracle {
	public Connection 	 con 	= 	null;	// Connection 연결, 관련성
	final String _URL	=	"jdbc:oracle:thin:@192.168.0.221:1521:orcl11";	// 오라클 주소
	final String _USER	= 	"king";										// 오라클 아이디
	final String _PW 	=	"1111";										// 오라클 비밀번호

	void con(){

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(_URL, _USER, _PW);// 주소, 이름, 비밀번호  인스턴스와 같은 효과
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.toString());
		}	//오라클.자바API.드라이버.오라클드라이버
	
	}
			
	public Join_oracle(){
		con();
	}
}
