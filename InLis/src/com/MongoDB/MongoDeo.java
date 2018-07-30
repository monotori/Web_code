package com.MongoDB;
import com.mongodb.*;

import java.net.UnknownHostException;


public class MongoDeo {
	String mongo_id = "wadis";
	String mongo_ps = "qwer1234";

        public static BasicDBObject[] createSeedData(){
     
            BasicDBObject seventies = new BasicDBObject();
            seventies.put("decade", "1970s");
            seventies.put("artist", "Debby Boone");
            seventies.put("song", "You Light Up My Life");
            seventies.put("weeksAtOne", 10);
     
            BasicDBObject eighties = new BasicDBObject();
            eighties.put("decade", "1980s");
            eighties.put("artist", "Olivia Newton-John");
            eighties.put("song", "Physical");
            eighties.put("weeksAtOne", 10);
     
            BasicDBObject nineties = new BasicDBObject();
            nineties.put("decade", "1990s");
            nineties.put("artist", "Mariah Carey");
            nineties.put("song", "One Sweet Day");
            nineties.put("weeksAtOne", 16);
     
            final BasicDBObject[] seedData = {seventies, eighties, nineties};
     
            return seedData;
        }
     

     
            // Create seed data
     
     
        	public void insert() throws UnknownHostException {
        		final BasicDBObject[] seedData = createSeedData();
        		String monogoUrl = "mongodb://"+mongo_id+":"+mongo_ps+"@ds020208.mlab.com:20208/morain";
        		MongoClientURI url = new MongoClientURI(monogoUrl);
        		MongoClient client = new MongoClient(url);
                DB db = client.getDB(url.getDatabase());
                // Extra helper code
                //seedData�� document
     
            /*
             * First we'll add a few songs. Nothing is required to create the
             * songs collection; it is created automatically when we insert.
             */
            //getCollection - �ڵ����� �÷����� ������ش�.
            DBCollection songs = db.getCollection("songs");
     
            // Note that the insert method can take either an array or a document.
            //collection�� document�� ����
            songs.insert(seedData);
     
            /*
             * Then we need to give Boyz II Men credit for their contribution to
             * the hit "One Sweet Day".
             */
            //The $set operator replaces the value of a field with the specified value.
            BasicDBObject updateQuery = new BasicDBObject("song", "One Sweet Day");
            //$set ���۷����ʹ� artist�� �ٲٱ� ���� ���
            //artist�� "Mariah Carey ft. Boyz II Men"�� �ٲٰڴٴ� ��
            songs.update(updateQuery, new BasicDBObject("$set", new BasicDBObject("artist", "Mariah Carey ft. Boyz II Men")));
     
            /*
             * Finally we run a query which returns all the hits that spent 10 
             * or more weeks at number 1.
             */
            //gte�� greater than or equal �� �ǹ�. ũ�ų� ����. >=
            BasicDBObject findQuery = new BasicDBObject("weeksAtOne", new BasicDBObject("$gte",10));
            //1�� ��������, -1�� �������� decade �ʵ带 ������������ ������
            BasicDBObject orderBy = new BasicDBObject("decade", 1);
     
            DBCursor docs = songs.find(findQuery).sort(orderBy);
     
            while(docs.hasNext()){
                DBObject doc = docs.next();
                System.out.println(
                        "In the " + doc.get("decade") + ", " + doc.get("song") + 
                        " by " + doc.get("artist") + " topped the charts for " + 
                        doc.get("weeksAtOne") + " straight weeks."
                        );
            }
     
            // Since this is an example, we'll clean up after ourselves.
     
            songs.drop();
     
            // Only close the connection when your app is terminating
     
            client.close();
        }
	
}
        	
