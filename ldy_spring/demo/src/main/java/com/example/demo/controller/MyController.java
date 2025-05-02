package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.example.demo.DemoApplication;
import com.example.demo.dto.MemberDTO;
import com.example.demo.vo.Form;

import jakarta.servlet.http.HttpServletRequest;


@SessionAttributes("list") 
@Controller
public class MyController {

    private final DemoApplication demoApplication;

    MyController(DemoApplication demoApplication) {
        this.demoApplication = demoApplication;
    }
	
    // 요청처리 - 컨트롤러의 멤버 메소드 (예 : 3개의 요청 ---> 3개의 메소드)
	@RequestMapping("/") //localhost:8090/
	public @ResponseBody String root() {
		System.out.println("root..............");
		
		// 응답 - 페이지 지정
		return "Sptringboot start!";
	}
	
	// @ResponseBody
	// 데이터를 보낼때 반환자료형 앞에 붙이기
	
	// return 
	// 1. 페이지의 이름
	// 2. 데이터
	
	// get post 둘다 가능 @RequestMapping
	@RequestMapping("/test")
	public String test() {
		System.out.println("test..............");
		//밑에 test 페이지이름
		return "test";
		
		
	}
	
	// p1은 요청주소 test.jsp a.href = "p1" 이거임
	/*
	 * @RequestMapping("/p1") public String p1(HttpServletRequest request, Model
	 * model) {
	 * 
	 * String name = request.getParameter("name"); //request.setAttribute("name",
	 * name);
	 * 
	 * 
	 * model.addAttribute("name", name);
	 * 
	 * System.out.println("p1...................."); return "p1";
	 * 
	 * }
	 */
	
	@RequestMapping("/p1")
	public String p1(
			@RequestParam("name") String name,
			@RequestParam("age") String age,
			Model model) {
		
		// 컨트롤러가 뷰에 데이터를 전달 할 때 Model을 이용한다.
		// String z = "Jame"; int r = 3;
		// 오브젝트에 z,r이 들어갈수 있음
		// addAttiribute(변수이름, 오브젝트)
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		
		System.out.println("p1....................");
		return "p1";
		
	}
	
	
	@ModelAttribute("list")
    public List<Form> setUpList() {
        return new ArrayList<>();
    }

    @RequestMapping("/form")
    public String form(
            @RequestParam("id") String id,
            @RequestParam("pw") String pw,
            @RequestParam("name") String name,
            @RequestParam("phone") String phone,
            @ModelAttribute("list") List<Form> list,
            Model model) {

        System.out.println("form....................");

        Form formObj = new Form(id, pw, name, phone);
        list.add(formObj);

        model.addAttribute("id", id);
        model.addAttribute("pw", pw);
        model.addAttribute("name", name);
        model.addAttribute("phone", phone);
        model.addAttribute("list", list);

        return "form";
    }
    
    
    
    @PostMapping("/p1")
    public String p2(
    		// 커맨드 규칙
    		// 파라미터 이름과 멤버변수 이름이 같아야한다
    		// 커맨드 객체를 만들때에는 변수명을 클래스이름과 똑같이 만들어라
    		// 단) 첫번째 문단은 소문자로 
    		
    		
    		MemberDTO memberDTO,
    		
    		Model model
    		) {
    	System.out.println("p2................");
    	List<MemberDTO>list = new ArrayList<>();
    	list.add(memberDTO);
    	model.addAllAttributes(list);
    	System.out.println("p2....................");
    		
		return "p1";
    	
    }
    
    
    @GetMapping("/p3/{id}/{pw}")
    public String p3(
    		@PathVariable("id")String id,
    		@PathVariable("pw")String pw,
    		Model model
    		
    		) {
    	System.out.println("p3...................."+id + " "+pw);
    	
    	
		return "p1";
    	
    }
    
    
	
}
