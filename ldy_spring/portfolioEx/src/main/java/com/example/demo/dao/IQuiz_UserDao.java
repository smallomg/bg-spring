package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.QuizDTO;

@Mapper
public interface IQuiz_UserDao {

	List<QuizDTO> getquizList();
}
