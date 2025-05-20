package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.BoardDTO;

@Mapper
public interface IBoardDao {
	
	// 게시판 전체 목록 조회
	List<BoardDTO> getlist();
}
