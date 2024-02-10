package com.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/web")
public class MyController {
	
	public MyController() {
		System.out.println("run ... run");
	}
	@GetMapping("/")
	public String showIndex () {
		System.out.println("index run...");
		return "index";
	}
	

}
