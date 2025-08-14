package com.java.www.dto;

import java.util.Date;

public class Member {

	
	private String id;
	private String pw;
	private String name;
	private Date date;
	
	public Member() {}  //기본생성자

	
	//전체생성자
	public Member(String id, String pw, String name,Date date) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.date = date;
	}


	//getter,setter
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}
