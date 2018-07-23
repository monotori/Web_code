package com.ch11;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;






public class Snippet{
	
	
	
	
	/**
	 * @Title JSONŸ���� �ּҸ� String Ÿ������ ��ȯ�ϴ� ���� 
	 * @contents 
	
	 * 	JsonŸ������ ������ �ּҸ� addr�� �ۼ��� �ҽ� URL�� �ش� �ּҰ��� �־��ְ� 
	 * 	url.openConnection();�� �ش� �ּҰ��� �����Ų�� URLConnection�� ����ݴϴ�.
	 * 	���� ���� ��Ʈ���� �Ӽ��� ������ �ֱ⿡ BufferedReader�� ���� ������ �Ͽ� �ش� ���� �����մϴ�. �̶� inputStream�� ����մϴ�.
	 * 	bufferedReader�� Ư���� ������ �ϳ��� read�ؾ� �ϱ⿡ while������ �ϳ��� ������ �ε��� �� 
	 * 	�ش簪���� String s�� ��� �����ϴ� �����Դϴ�. 
	 * 
	 *  jsp������ �ۼ��� �� �� JsonŸ���� �ּҸ� ������ �ٷ� jsp�� ����ϴ� ��쿡 ������ ���� �����߽��ϴ�.
	 *  
	 *  
	 * @method doget()
	 * @Day 2018-07-11
	 * @INPUTtype  http(Json)
	 * @OUTPUTtype String 
	 * @author 507
	 *
	 */
	
	
 	public String doGet() throws Exception {
		String addr = "http://192.168.0.36:9000/dev_html5/json/deptJSON.json";	
		BufferedReader bufferedReader = null;
		String resultSet = null;
		URL url = new URL(addr);
		URLConnection urlcon = url.openConnection();
		bufferedReader  = new BufferedReader(new InputStreamReader(urlcon.getInputStream()));
		String s = "";
		while (bufferedReader.ready()) {
			String n = bufferedReader.readLine().toString();
			if(n != null) {				
				s += n;
			}
		}
		
		return s;
		
	}
 	
 	
 	
 	
 	
 	public String toGet() throws Exception {
 		String addr = "http://api.saramin.co.kr/job-search?keywords=";
 		String key = "���α׷���";
		BufferedReader bufferedReader = null;
		String resultSet = null;
		URL url = new URL(addr+key);
		URLConnection urlcon = url.openConnection();
		bufferedReader  = new BufferedReader(new InputStreamReader(urlcon.getInputStream(),"utf-8"));
		bufferedReader.readLine();
		String s = "";
		while (bufferedReader.ready()) {
			String n = bufferedReader.readLine().toString();
			if(n != null) {				
				s += n;
			}
		}
		return s;
	}
 	

	
	private Document parseXML(InputStream stream) throws Exception {

		DocumentBuilderFactory objDocumentBuilderFactory = null;
		DocumentBuilder objDocumentBuilder = null;
		Document doc = null;

		try {

			objDocumentBuilderFactory = DocumentBuilderFactory.newInstance();

			objDocumentBuilder = objDocumentBuilderFactory.newDocumentBuilder();

			doc = objDocumentBuilder.parse(stream);

			System.out.println(doc);
		} catch (Exception ex) {
			throw ex;
		}

		return doc;
	}

	private void xmlTest() {

		try {
			String addr = "http://api.saramin.co.kr/job-search?keywords=";
	 		String key = "���α׷���";

			String url = addr+key;
            DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
            Document xml = null;
            //XML DOCUMENT ȹ��
            xml = documentBuilder.parse(url);
            //Root������Ʈ ȹ��
            Element element = xml.getDocumentElement();
            //Root������Ʈ�� �ڽ� ����� ȹ��(blog xml �±�)
            NodeList list = element.getChildNodes();
            //�ڽĳ�尡 1���̻��ϰ��
            if(list.getLength() > 0) {
                //�ݺ��� �̿�
                for(int i=0; i<list.getLength(); i++) {
                    //blog xml�±��� �ڽ��±� �ѹ� �� ȹ��
                    NodeList childlist = list.item(i).getChildNodes();
                    //���������� �ڽĳ�� 1���̻��ϰ��
                    if(childlist.getLength() > 0) {
                        for(int j=0; j<childlist.getLength(); j++) {
                            //blog xml �±׳��� �����ϴ� �±׵��� �±׸� + �±׿� ���ϴ� ���� ���
                            System.out.println("XML�±׸�:"+childlist.item(j).getNodeName()+",XML��:"+childlist.item(j).getTextContent());
                        }
                    }
                }  
            }
           
        } catch (Exception e) {
            e.printStackTrace();
        }
	}





	public static void main(String[] args) {
		Snippet sn = new Snippet();
		try {
			System.out.println(sn.toGet());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}