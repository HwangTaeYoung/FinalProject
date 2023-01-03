package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	// boardlist
	@RequestMapping(value="/boardlist")	
	public String boardlistController() {
		
		return "/main/board/boardlist";
	}
	// boardwrite
	@RequestMapping(value="/boardwrite")	
	public String boardwriteController() {
		
		return "/main/board/boardwrite";
	}
	// boardview
	@RequestMapping(value="/boardview")	
	public String boardviewController() {
		
		return "/main/board/boardview";
	}
}
