package com.example.demo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.ItemService;

@Controller
public class ItemController {
	// 서비스선언
	@Resource(name="com.example.demo.service.ItemService")
	ItemService mitemService;
	// itemonline
	@RequestMapping(value="/itemonline")	
	public String itemonlineController() {
		
		return "/main/item/itemonline";
	}
	// itemoffline
	@RequestMapping(value="/itemoffline")	
	public String itemofflineController() {
		
		return "/main/item/itemoffline";
	}
	// itemonlineview
	@RequestMapping(value="/itemonlineview")	
	public String itemonlineviewController() {
		
		return "/main/item/itemonlineview";
	}
	// itemofflineview
	@RequestMapping(value="/itemofflineview")	
	public String itemofflineviewController() {
		
		return "/main/item/itemofflineview";
	}
}
