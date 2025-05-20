package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.dto.BoardDTO;
import com.example.demo.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardservice;

	@GetMapping("/")
	public String root() {
		return "index";
	}

	@GetMapping("/list")
	public String list(Model model) {
		List<BoardDTO> list = boardservice.getlist();

		model.addAttribute("list", list);

		return "list";
	}

}
