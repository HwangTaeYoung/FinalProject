package com.example.demo.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.domain.memberVO;
import com.example.demo.service.PaymentService;


@Controller
public class PaymentController {
	// main
	// 서비스선언
	@Resource(name="com.example.demo.service.PaymentService")
	PaymentService mPaymentService;
		
		@RequestMapping(value="/payment")	
		public String paymentController(HttpServletRequest request, Model model)throws Exception {
			HttpSession session = request.getSession(); // 세션 선언
			String sessionId = (String) session.getAttribute("id");  //"id"를 키 값으로 사용하겠다
			
			model.addAttribute("list",mPaymentService.PaymentService(sessionId));
			
			
//			memberVO mmemberVO = mPaymentService.PaymentService(sessionId);
//			mPaymentService.PayStatusService(mmemberVO);
//			
//			String bmiresult = "";
//			int Ucm = Integer.parseInt(mmemberVO.getUcm());
//			int Ukg = Integer.parseInt(mmemberVO.getUkg());
//			double doublecm =(double)(Ucm * 0.01);
//			double bmi = Ukg / (doublecm*doublecm);
//
//			if(bmi < 18.5) {
//				bmiresult ="저체중";
//			}else if(bmi < 23) {
//				bmiresult ="표준";
//			}else if(bmi < 35) {
//				bmiresult ="비만";
//			}else {
//				bmiresult ="고도비만";
//			}
//			
//			System.out.println(bmiresult);
//
//			model.addAttribute("item",mPaymentService.PayItemService(bmiresult));
			
			
			return "/main/payment/payment";
		}
}
