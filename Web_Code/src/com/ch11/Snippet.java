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
	 * @Title JSON타입의 주소를 String 타입으로 변환하는 구문 
	 * @contents 
	
	 * 	Json타입으로 들어오는 주소를 addr에 작성을 할시 URL에 해당 주소값을 넣어주고 
	 * 	url.openConnection();로 해당 주소값을 실행시킨뒤 URLConnection에 담아줍니다.
	 * 	위의 값은 스트림의 속성을 가지고 있기에 BufferedReader를 따로 생성을 하여 해당 값을 저장합니다. 이때 inputStream을 사용합니다.
	 * 	bufferedReader의 특성상 라인을 하나씩 read해야 하기에 while문으로 하나씩 파일을 로드한 후 
	 * 	해당값들을 String s에 담아 리턴하는 구문입니다. 
	 * 
	 *  jsp파일을 작성할 때 에 Json타입의 주소를 가지고 바로 jsp에 사용하는 경우에 문제가 생겨 생성했습니다.
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
 		String key = "프로그래머";
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
	 		String key = "프로그래머";

			String url = addr+key;
            DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
            Document xml = null;
            //XML DOCUMENT 획득
            xml = documentBuilder.parse(url);
            //Root엘리먼트 획득
            Element element = xml.getDocumentElement();
            //Root엘리먼트의 자식 노드목록 획득(blog xml 태그)
            NodeList list = element.getChildNodes();
            //자식노드가 1개이상일경우
            if(list.getLength() > 0) {
                //반복문 이용
                for(int i=0; i<list.getLength(); i++) {
                    //blog xml태그의 자식태그 한번 더 획득
                    NodeList childlist = list.item(i).getChildNodes();
                    //마찬가지로 자식노드 1개이상일경우
                    if(childlist.getLength() > 0) {
                        for(int j=0; j<childlist.getLength(); j++) {
                            //blog xml 태그내에 존재하는 태그들의 태그명 + 태그에 속하는 내용 출력
                            System.out.println("XML태그명:"+childlist.item(j).getNodeName()+",XML값:"+childlist.item(j).getTextContent());
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