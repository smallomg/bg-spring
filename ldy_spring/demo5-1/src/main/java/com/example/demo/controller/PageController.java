package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping("/p1")
    public String p1() {
        return "p1";  // views/p1.jsp
    }

    @GetMapping("/p2")
    public String p2() {
        return "p2";  // views/p2.jsp
    }
}
