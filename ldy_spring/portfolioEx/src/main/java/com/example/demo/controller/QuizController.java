package com.example.demo.controller;

import com.example.demo.dao.IQuiz_UserDao;
import com.example.demo.dto.QuizDTO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class QuizController {
	
	@Autowired
	private IQuiz_UserDao qu_Dao;

	@GetMapping("/quiz/form") // ← 입력용 페이지
	public String quizForm(Model model) {
	    model.addAttribute("quiz", new QuizDTO());
	    return "quiz_form";
	}

    @PostMapping("/submit")
    public String submitQuiz(@ModelAttribute QuizDTO quiz, Model model) {
        int score = 0;


        model.addAttribute("score", score);
        model.addAttribute("answers", quiz);
        return "result";
    }
    
    @GetMapping("/quiz")
    public String quiz(Model model) {
    	List <QuizDTO>list = qu_Dao.getquizList();
    	
    	model.addAttribute("list", list);
    	
    	
    	return "quiz";
    }
}
