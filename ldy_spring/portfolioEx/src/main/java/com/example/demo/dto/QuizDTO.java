package com.example.demo.dto;

import lombok.Data;

@Data
public class QuizDTO {

	private int quiz_id;
	private String question_text;
	private String answer;
	private int score;
	private String grade;
}
