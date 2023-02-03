package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.domain.BoardVO;
import com.example.demo.domain.ItemVO;
import com.example.demo.domain.SurveyVO;
import com.example.demo.domain.memberVO;
import com.example.demo.mapper.UserMapper;

@Service("com.example.demo.service.UserService")
public class UserService {

	@Resource(name="com.example.demo.mapper.UserMapper")
	UserMapper mUserMapper;

	public String memberJoinService(memberVO mmemberVO) throws Exception{

		return mUserMapper.memberJoin(mmemberVO);
	}
	public int uidChkService(String uid) throws Exception{

		return mUserMapper.uidChk(uid);
	}
	public int uphoneChkService(String uphone) throws Exception{

		return mUserMapper.uphoneChk(uphone);
	}
	public int uemailChkService(String uemail) throws Exception{

		return mUserMapper.uemailChk(uemail);
	}
	public int uloginChkService(String uid, String upwd) throws Exception{

		return mUserMapper.uloginChk(uid,upwd);
	}
	public memberVO mypageViewService(String sessionId) throws Exception{

		return mUserMapper.umypageView(sessionId);
	}
	public memberVO mypageService(memberVO mmemberVO) throws Exception{

		return mUserMapper.umypage(mmemberVO);
	}
	public memberVO memberUpdateService(int uno) throws Exception{

		return mUserMapper.memberUpdate(uno);
	}
	public List<ItemVO> mypageListService(String bmiresult) throws Exception{
		
		return mUserMapper.mypageList(bmiresult);
	}
	
}
