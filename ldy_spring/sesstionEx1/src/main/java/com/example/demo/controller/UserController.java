package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dao.IUserDao;
import com.example.demo.dto.UserDTO;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private IUserDao userDao;

	@GetMapping("/userlist")
	public String userlist(Model model) {
		List<UserDTO> list = userDao.getUserList();

		model.addAttribute("list", list);
		return "/user/userlist";

	}

	@GetMapping("/search")
	public String userSearchlist(UserDTO user, Model model) {
		List<UserDTO> searchlist = userDao.getListWithParam2(user);

		model.addAttribute("searchlist", searchlist);

		return "/user/result";
	}
	
	@GetMapping("/userForm")
	public String userForm() {
		return "/user/userForm";
	}
	

	@PostMapping("/create") 
	public String insert(@Valid UserDTO user, BindingResult result) {

		if (result.hasErrors()) {
			if (result.getFieldError("id") != null) {
				System.out.println("1 : " + result.getFieldError("id").getDefaultMessage());
			}
			if (result.getFieldError("pw") != null) {
				System.out.println("2 : " + result.getFieldError("pw").getDefaultMessage());
			}
		}

		return "/user/userForm";
	}
}
