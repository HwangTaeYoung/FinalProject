package com.example.demo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.ItemVO;
import com.example.demo.domain.memberVO;

@Repository("com.example.demo.mapper.PaymentMapper")
public interface PaymentMapper {
	
	public memberVO PaymentDetail(String sessionId) throws Exception;

//	public memberVO PayStatus(memberVO mmemberVO) throws Exception;	
//	
//	public List<ItemVO> PayItem(String bmiresult) throws Exception;	


}
