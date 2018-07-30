package com.MongoDB;

import java.net.UnknownHostException;

public class Mongo_index {

	public static void main(String[] args) {
		MongoDeo MD = new MongoDeo();
		try {
			MD.insert();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
