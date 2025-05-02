package com.example.demo.vo;

import lombok.Data;

@Data

public class Form {
	
	String id;
	String pw;
	String name;
	String phone;
	
	public Form(String id, String pw, String name, String phone) {
		this.id=id;
		this.pw=pw;
		this.name=name;
		this.phone=phone;
	}
}
