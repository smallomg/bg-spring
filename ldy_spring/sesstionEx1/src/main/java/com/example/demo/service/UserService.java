package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IUserDao;
import com.example.demo.dto.UserDTO;

import jakarta.servlet.http.Cookie;

@Service
public class UserService {

	@Autowired
	private IUserDao userDao;

	public UserDTO loginCheck(String id, String pw) {
		return userDao.login(id, pw);
	}

	// ✅ 쿠키에서 ID를 꺼냈을 때 사용자 정보 조회
	public UserDTO findById(String id) {
		return userDao.findById(id);
	}
}
