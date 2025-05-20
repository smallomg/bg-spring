package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user")
public class UserController {
	

	// 로그인 페이지 입력 폼 
	@GetMapping("/signin")
	public String signin() {
		return "/user/signin";
	}

	// 로그인 연결 처리
	@PostMapping("/login")
	public String login() {
		
		return "";
	}
}
