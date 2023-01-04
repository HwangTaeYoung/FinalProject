package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	// boardlist 1:1문의
	@RequestMapping(value="/boardlist")	
	public String boardlistController() {
		
		return "/main/board/boardlist";
	}
	// boardnotice 공지사항
	@RequestMapping(value="/boardnotice")	
	public String boardnoticeController() {
		
		return "/main/board/boardnotice";
	}
	// boardpartner 헬싱파트너 신청
	@RequestMapping(value="/boardpartner")	
	public String Controller() {
		
		return "/main/board/boardpartner";
	}
	// boardwrite 1:1문의 글쓰기
	@RequestMapping(value="/boardwrite")	
	public String boardwriteController() {
		
		return "/main/board/boardwrite";
	}
	// boardview 1:1 문의 상세보기
	@RequestMapping(value="/boardview")	
	public String boardviewController() {
		
		return "/main/board/boardview";
	}
	// boardqna Q&A
	@RequestMapping(value="/boardqna")	
	public String boardqnaController() {
		
		return "/main/board/boardqna";
	}
}
