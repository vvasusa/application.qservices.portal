package com.pearson.dao;

import java.sql.Timestamp;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;

public class GentrateUserId {

	private static final int NUM_CHARS = 10;
	private static String chars = "abcdefghijklmonpqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	private static String R_Id = "0123456789";
	private static String Request_Id = "0123456789ABCDEF567GHIJKLMNO0123PQRSTUV489WXYZ";
	private static Random r = new Random();

	public StringBuilder getUniqueID() {
		/*
		 * char[] buf = new char[NUM_CHARS]; // for (int i = 0; i < buf.length;
		 * i++) { for (int i = 0; i <=5; i++) { buf[i] =
		 * R_Id.charAt(r.nextInt(R_Id.length())); } java.util.Date date= new
		 * java.util.Date(); Timestamp TymStamp=new Timestamp(date.getTime());
		 * System.out.println(TymStamp);
		 * 
		 * return new String(buf).toString();
		 */

		StringBuilder builder = new StringBuilder();
		char[] buf = new char[NUM_CHARS];
		for (int i = 0; i < buf.length; i++) {
			buf[i] = R_Id.charAt(r.nextInt(R_Id.length()));
		}

		builder.append(buf);
		return builder;
	}

	public String getPassword() {
		char[] buf = new char[NUM_CHARS];
		for (int i = 0; i < buf.length; i++) {
			buf[i] = chars.charAt(r.nextInt(chars.length()));
		}
		java.util.Date date = new java.util.Date();
		Timestamp TymStamp = new Timestamp(date.getTime());
		System.out.println(TymStamp);

		return new String(buf);
	}

	public String getRequestID() {
		char[] buf = new char[NUM_CHARS];
		for (int i = 0; i < buf.length; i++) {
			buf[i] = Request_Id.charAt(r.nextInt(Request_Id.length()));
		}
		java.util.Date date = new java.util.Date();
		Timestamp TymStamp = new Timestamp(date.getTime());
		System.out.println(TymStamp);

		return new String(buf);
	}

	public Timestamp dateAndTime(){
	java.util.Date date = new java.util.Date();
	Timestamp TymStamp = new Timestamp(date.getTime());
	System.out.println(TymStamp);
	return TymStamp;
}
}
