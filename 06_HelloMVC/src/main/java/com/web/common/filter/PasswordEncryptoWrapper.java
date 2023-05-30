package com.web.common.filter;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class PasswordEncryptoWrapper extends HttpServletRequestWrapper{

	public PasswordEncryptoWrapper(HttpServletRequest  request) {
		super(request);
	}
	
	@Override
	public String getParameter(String key) {
		String oriVal=super.getParameter(key);
	
		if(key.equals("password")) {
			//암호화처리로직 작성
			System.out.println("원본: "+super.getParameter(key));
			String encryptData=getSHA512(super.getParameter(key));
			System.out.println("암호화: " + encryptData);
			return encryptData;
		}
		return oriVal;
	}

	
	private String getSHA512(String oriVal) {
		//단방향 암호회 처리하기
	MessageDigest md=null;	
	try {
		
		md=MessageDigest.getInstance("SHA-512");
		
		
	}catch(NoSuchAlgorithmException e) {
		e.printStackTrace();
	}
	
	byte[] oriValByte=oriVal.getBytes();
	md.update(oriValByte);
	byte[] encryptData=md.digest();
	String encyriptStrData=Base64.getEncoder().encodeToString(encryptData);
	return encyriptStrData;
	}
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
