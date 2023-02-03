package com.example.demo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.ItemVO;
import com.example.demo.domain.SurveyVO;
import com.example.demo.domain.memberVO;

@Repository("com.example.demo.mapper.SurveyMapper")
public interface SurveyMapper {

	public String surveyInsert(SurveyVO msurveyVO) throws Exception;

	public memberVO uresultViewOne(String sessionId) throws Exception;	

	public int surveyResult(String sessionId) throws Exception;	 

	public SurveyVO surveySession(int sessionuno) throws Exception;	
	
	//헬싱 다이어트
	public List<ItemVO> surveyHeathlist() throws Exception;
	
	//헬싱 근력강화
	public List<ItemVO> surveyMusclelist() throws Exception;
	
	//헬싱 근력강화
	public List<ItemVO> surveyBodytypelist() throws Exception;
}
