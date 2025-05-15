package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.dto.AdminDTO;
import com.example.demo.dto.MovieDTO;
import com.example.demo.dto.NoticeDTO;

@Mapper
public interface IAdminDao {
	
	// 관리자 로그인 처리
	AdminDTO login(@Param("id") String id,@Param("pw") String pw);
	
	// 영화 등록 처리
	int moviesinsert(MovieDTO movie);
	
	// 공지사항 목록 조회
	List<NoticeDTO> noticeList();
	
	// 공지사랑 등록 처리
	int insertNotice(NoticeDTO notice);
}

