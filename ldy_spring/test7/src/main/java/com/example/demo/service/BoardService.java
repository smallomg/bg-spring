package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IBoardDao;
import com.example.demo.dto.BoardDTO;

@Service
public class BoardService {

	@Autowired
	private IBoardDao boardDao;
	
	// 게시판 전체 목록 조회
	public List<BoardDTO> getlist() {
		return boardDao.getlist();
		
	}
}
