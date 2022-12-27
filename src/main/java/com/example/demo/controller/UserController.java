package com.example.demo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.UserService;

@Controller
public class UserController {
	// 서비스선언
	@Resource(name="com.example.demo.service.UserService")
	UserService muserService;
	
	@RequestMapping(value = "/login") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String LoginController() { // 실제 사용 할 메소드 생성

		return "/main/user/login"; // 이동파일(jsp)을 사용하는 구간
	}
	@RequestMapping(value = "/loginfind") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String LoginfindController() { // 실제 사용 할 메소드 생성

		return "/main/user/loginfind"; // 이동파일(jsp)을 사용하는 구간
	}	
	@RequestMapping(value = "/pwdfind") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String PwdfindController() { // 실제 사용 할 메소드 생성

		return "/main/user/pwdfind"; // 이동파일(jsp)을 사용하는 구간
	}		
}
