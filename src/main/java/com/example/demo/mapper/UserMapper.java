package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.BoardVO;
import com.example.demo.domain.ItemVO;
import com.example.demo.domain.SurveyVO;
import com.example.demo.domain.memberVO;

@Repository("com.example.demo.mapper.UserMapper")
public interface UserMapper {

	public String memberJoin(memberVO mmemberVO) throws Exception;
	
	public int uidChk(String uid) throws Exception;	 // uidChk 반환형 (String uid)전달형

	public int uphoneChk(String uphone) throws Exception;

	public int uemailChk(String uemail) throws Exception;	

	public int uloginChk(String uid, String upwd) throws Exception;	

	public memberVO umypageView(String sessionId) throws Exception;	

	public memberVO umypage(memberVO mmemberVO) throws Exception;
	
	public memberVO memberUpdate(int uno) throws Exception;

	public List<ItemVO> mypageList(String bmiresult) throws Exception;
}
