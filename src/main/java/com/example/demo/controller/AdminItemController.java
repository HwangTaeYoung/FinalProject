package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminItemController {
	// itemonline 온라인이용권관리
	@RequestMapping(value="/adminitemonline")	
	public String adminitemonlineController() {
		
		return "/admin/item/itemonline";
	}
	// itemoffline 오프라인이용권관리
	@RequestMapping(value="/adminitemoffline")	
	public String adminitemofflineController() {
		
		return "/admin/item/itemoffline";
	}
	// itemofflinement 온라인신청관리
	@RequestMapping(value="/adminitemofflinement")	
	public String adminitemofflinementController() {
		
		return "/admin/item/itemonlinement";
	}
	// itemonlinement 오프라인신청관리
	@RequestMapping(value="/adminitemonlinement")	
	public String adminitemonlinementController() {
		
		return "/admin/item/itemofflinement";
	}
	// itemonlinewrite 온라인이용권 글쓰기
	@RequestMapping(value="/adminitemonlinewrite")	
	public String adminitemonlinewriteController() {
		
		return "/admin/item/itemonlinewrite";
	}
	// itemofflinewrite 오프라인이용권 글쓰기
	@RequestMapping(value="/adminitemofflinewrite")	
	public String adminiitemofflinewriteController() {
		
		return "/admin/item/itemofflinewrite";
	}
}
