package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SurveyController {
	@RequestMapping(value = "/survey") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String SurveyController() { // 실제 사용 할 메소드 생성

		return "/main/survey/surveymain"; // 이동파일(jsp)을 사용하는 구간
	}
	@RequestMapping(value = "/surveywrite") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String SurveyWriteController() { // 실제 사용 할 메소드 생성

		return "/main/survey/surveywrite"; // 이동파일(jsp)을 사용하는 구간
	}
	//surveyallview
	@RequestMapping(value="/surveyallview")	
	public String surveyallviewController() {
		
		return "/main/survey/surveyallview";
	}	
}
