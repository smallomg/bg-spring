package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.UserDTO;

@RestController
@RequestMapping("/api")
public class MyRestController {

	@GetMapping("/")
	public String root() {

		return "API test....";
	}

	@GetMapping("/user/{idx}")
	public UserDTO user(@PathVariable("idx") int idx) {
		List<UserDTO> list = new ArrayList<>();
		UserDTO user = new UserDTO();
		user.setId("aa");
		user.setName("bb");
		UserDTO user2 = new UserDTO();
		user2.setId("cc");
		user2.setName("d");
		UserDTO user3 = new UserDTO();
		user3.setId("ee");
		user3.setName("ff");

		list.add(user);
		list.add(user2);
		list.add(user3);

		return list.get(idx);
	}

	@GetMapping("/user1")
	public UserDTO user1(@RequestParam("name") String name, @RequestParam("id") String id) {
		UserDTO user = new UserDTO();
		user.setId(id);
		user.setName(name);

		return user;
	}

	@PostMapping("/user2")
	public String user2(@RequestBody UserDTO user) {

		if (user != null) {
			return "등록됨";
		} else {
			return "등록안됨";
		}

	}
	
	@PostMapping("/user3")
	public String user3(@RequestParam("id")String id,@RequestParam("name")String name) {
		UserDTO user = new UserDTO();
		user.setId(id);
		user.setName(name);
		
		if (user != null) {
			return "등록됨";
		} else {
			return "등록안됨";
		}

	}

}
