package inner;

import java.sql.Connection;
import java.sql.DriverManager;


public class Join_oracle {
	public Connection 	 con 	= 	null;	// Connection ����, ���ü�
	final String _URL	=	"jdbc:oracle:thin:@192.168.0.221:1521:orcl11";	// ����Ŭ �ּ�
	final String _USER	= 	"king";										// ����Ŭ ���̵�
	final String _PW 	=	"1111";										// ����Ŭ ��й�ȣ

	void con(){

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(_URL, _USER, _PW);// �ּ�, �̸�, ��й�ȣ  �ν��Ͻ��� ���� ȿ��
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.toString());
		}	//����Ŭ.�ڹ�API.����̹�.����Ŭ����̹�
	
	}
			
	public Join_oracle(){
		con();
	}
}
