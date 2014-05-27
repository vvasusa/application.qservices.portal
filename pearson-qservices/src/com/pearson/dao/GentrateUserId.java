package com.pearson.dao;

import java.sql.Timestamp;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;

public class GentrateUserId {

	
	
	private static final int NUM_CHARS = 10;
	//private static String chars = "abcdefghijklmonpqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	private static String chars = "0123456789";
	private static Random r = new Random();
	
	
	
	public String getUniqueID() {
		char[] buf = new char[NUM_CHARS];
		for (int i = 0; i < buf.length; i++) {
			buf[i] = chars.charAt(r.nextInt(chars.length()));
		}
		java.util.Date date= new java.util.Date();
		Timestamp TymStamp=new Timestamp(date.getTime());
		 System.out.println(TymStamp);

		return new String(buf);
}
}
