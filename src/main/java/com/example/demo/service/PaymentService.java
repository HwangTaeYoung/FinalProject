package com.example.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.domain.ItemVO;
import com.example.demo.domain.memberVO;
import com.example.demo.mapper.PaymentMapper;

@Service("com.example.demo.service.PaymentService")
public class PaymentService {
	
	@Resource(name="com.example.demo.mapper.PaymentMapper")
	PaymentMapper mPaymentMapper;
	
	public memberVO PaymentService(String sessionId) throws Exception{

		return mPaymentMapper.PaymentDetail(sessionId);
	}
//	public memberVO PayStatusService(memberVO mmemberVO) throws Exception{
//
//		return mPaymentMapper.PayStatus(mmemberVO);
//	}
//	public List<ItemVO> PayItemService(String bmiresult) throws Exception{
//
//		return mPaymentMapper.PayItem(bmiresult);
//	}

}
