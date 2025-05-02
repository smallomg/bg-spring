package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/")
	public String root() {
		System.out.println("root...............");
		
		return "index";
	}
	
	@GetMapping("/list")
	public String list() {
		System.out.println("list..............");
		
		return "list";
	}
}
