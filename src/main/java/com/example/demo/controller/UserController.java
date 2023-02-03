package com.example.demo.controller;

import java.util.Collection;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.controller.SurveyController.bmiStatus;
import com.example.demo.domain.SurveyVO;
import com.example.demo.domain.memberVO;
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
	@RequestMapping(value = "/memberjoin") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String MemberController() { // 실제 사용 할 메소드 생성

		return "/main/user/memberjoin"; // 이동파일(jsp)을 사용하는 구간
	}
	@RequestMapping(value = "/memberjoininsert") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String MemberController(HttpServletRequest request) throws Exception { // 실제 사용 할 메소드 생성
	
		System.out.println(request.getParameter("uid"));
		memberVO mmemberVO = new memberVO(); // mmemberVO라는 가상의 공간을 만듬
		
		String uemail1 = request.getParameter("uemail1");
		String uemail2 = request.getParameter("uemail2");
		String uemail = uemail1 + "@" + uemail2;
		
//		System.out.println(uemail); // uemail 테스트
		
		String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		String dd = request.getParameter("dd");
		
		String ubirth = yy + "-" + mm + "-" + dd;
		
					
		mmemberVO.setUid(request.getParameter("uid")); // 가상의 공간내 세팅된 칼럼명에 request.getParameter 를 통해 input name값을 넣음
		mmemberVO.setUpwd(request.getParameter("upwd"));
		mmemberVO.setUname(request.getParameter("uname"));
		mmemberVO.setUphone(request.getParameter("uphone"));
		mmemberVO.setUemail(uemail);
		mmemberVO.setUbirth(ubirth);
		mmemberVO.setUgender(request.getParameter("ugender"));
		mmemberVO.setUcm(request.getParameter("ucm"));
		mmemberVO.setUkg(request.getParameter("ukg"));
		mmemberVO.setUzipcode(request.getParameter("uzipcode"));
		mmemberVO.setUaddr1(request.getParameter("uaddr1"));
		mmemberVO.setUaddr2(request.getParameter("uaddr2"));
		mmemberVO.setUgrade("user");
		
		muserService.memberJoinService(mmemberVO);
	
		return "redirect:/"; //페이지 이동
	}
	@ResponseBody
	@RequestMapping(value = "/uidChk") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public int uidChkController(HttpServletRequest request)throws Exception{ // 실제 사용 할 메소드 생성
		
		int uid = muserService.uidChkService(request.getParameter("uid")); //int uid는 반환시 사용함.
				
//		String uidChk = "";
//		
//		if(uid==1) {
//			uidChk="있음";
//		}else {
//			uidChk="없음";
//		}
		return uid; // 이동파일(jsp)을 사용하는 구간
	}
	@ResponseBody	
	@RequestMapping(value = "/uphoneChk") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public int uphoneChkController(HttpServletRequest request)throws Exception { // 실제 사용 할 메소드 생성
		
		int uphone = muserService.uphoneChkService(request.getParameter("uphone"));
		
		return uphone; // 이동파일(jsp)을 사용하는 구간
	}
	@ResponseBody	
	@RequestMapping(value = "/emailChk") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public int uemailChkController(HttpServletRequest request)throws Exception { // 실제 사용 할 메소드 생성
		
		int uemail = muserService.uemailChkService(request.getParameter("uemail"));

		return uemail; // 이동파일(jsp)을 사용하는 구간
	}
	
	@RequestMapping(value="/loginChk") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String LoginChkController(HttpServletRequest request, HttpServletResponse response)throws Exception { // 실제 사용 할 메소드 생성
		String uid = request.getParameter("uid");
		String upwd = request.getParameter("upwd");
		
		int loginChk = muserService.uloginChkService(uid,upwd);
		
		if(loginChk == 0) {
			request.setAttribute("msg", "아이디/비밀번호를 확인해주세요");
			request.setAttribute("loginChk", loginChk);
			request.setAttribute("url", "/login");
		}else {
			HttpSession session = request.getSession(); //세션 선언
			session.setAttribute("id", uid);
			request.setAttribute("msg", "환영합니다!");
			request.setAttribute("loginChk", loginChk);
			request.setAttribute("url", "/");
		}
//		Cookie userIdCookie = new Cookie("id", uid); //쿠키 선언(세션<->쿠키)
//		userIdCookie.setMaxAge(60*60*24*30);
//		response.addCookie(userIdCookie);
		
		return "/main/user/login";
	}
	@RequestMapping(value = "/logout") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String LogoutController(HttpServletRequest request) { // 실제 사용 할 메소드 생성
		HttpSession session = request.getSession(); //세션 선언
		session.invalidate();		
		
	return "redirect:/"; 
	}
	//라커룸(마이페이지)
	@RequestMapping(value = "/mypage") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String MypageMainController(HttpServletRequest request, Model model)throws Exception{ // 실제 사용 할 메소드 생성
		HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");  //"id"를 키 값으로 사용하겠다
		model.addAttribute("member", muserService.mypageViewService(sessionId));
		
		
		//마이페이지 헬싱+
		memberVO mmemberVO = muserService.mypageViewService(sessionId);
		muserService.mypageService(mmemberVO);
		
		String bmiresult = "";
		int Ucm = Integer.parseInt(mmemberVO.getUcm());
		int Ukg = Integer.parseInt(mmemberVO.getUkg());
		double doublecm =(double)(Ucm * 0.01);
		double bmi = Ukg / (doublecm*doublecm);

//		System.out.println(bmi);
		model.addAttribute("bmi", bmi);

		if(bmi < 18.5) {
			bmiresult ="저체중";
		}else if(bmi < 23) {
			bmiresult ="표준";
		}else if(bmi < 35) {
			bmiresult ="비만";
		}else {
			bmiresult ="고도비만";
		}
		
		bmiStatus bmistatus = new bmiStatus();
		HashMap<String, String> bmiSet = bmistatus.status(bmiresult); //서비스와 같은 개념(서비스에 메소드를 보냄),값을 다시 받음
		model.addAttribute("bmiSet",bmiSet);


		//마이페이지 추천아이템
//		System.out.println(bmiresult);
		
		model.addAttribute("list",muserService.mypageListService(bmiresult));
		
		
		return "/main/user/mypage";
	}
	//HashMap<String, String> bmiSet = bmistatus.status(bmiresult); 와 public HashMap<String, String> status(String bmiResult) 동일함.
	public class bmiStatus{		//method를 줌
		public HashMap<String, String> status(String bmiResult){ //status 라는 pulic을 줌(서비스에서 보낸것을 받음)
			HashMap<String, String> hashmap = new HashMap<>();
			if(bmiResult.equals("저체중")) {
				hashmap.put("bmiResult", bmiResult); //hashmap에 put(넣음)
				hashmap.put("health", "걸을때 문제가 없다면 계단오르기,<br>걷기 등을 통해 꾸준히 몸을 움직여야하고,<br>체력이 어느정도 뒷받침되면 철봉 매달리기 같은 근육이 늘어나는 상황을 버티는 운동을 꾸준히 해야해요!");
				hashmap.put("food", "<아침><br>팥밥,호박잎된장찌개,우엉소고기조림,김구이,배추김치,삶은계란1개,요구르트1병<br><점심><br>고구마밥,대구매운탕,닭날개조림,도토리묵채소무침,배추김치,삶은계란1개,요구르트1병<br><저녁><br>잡곡밥,실파계란국,돈육완자전,오징어채소볶음,깍두기,바나나1개,우유100m1팩");
			}else if(bmiResult.equals("표준")){
				hashmap.put("bmiResult", bmiResult);
				hashmap.put("health", "시간적 여유가 있다면 하루 두번씩(오전,오후) 운동하는것을 추천드려요!<br>스쿼트15회-3set,<br>런지15회-3set,<br>윗몸일으키기15회-3set,<br>팔굽혀펴기15회-3set ");
				hashmap.put("food", "<아침><br>닭가슴살1팩,구운아몬드10알<br><점심><br>일반식(기름에 튀긴 음식,면,국물,인스턴트는 되도록 피한다)<br><저녁><br>닭가슴살1팩,구운아몬드10알,방울토마토200g");
			}else if(bmiResult.equals("비만")){
				hashmap.put("bmiResult", bmiResult);
				hashmap.put("health", "운동하러 나가기 귀찮으신가요?<br>실내에서도 할 수 있는 운동을 소개해드릴게요!<br>스쿼트10회-3set,<br>플랭크30초-3set,<br>팔굽혀펴기10회-3set,<br>런지10회-3set,<br>브릿지15회-3set");
				hashmap.put("food", "<아침><br>삶은계란3개,발사믹식초채소샐러드<br><점심><br>닭가슴살200g,올리브유버섯구이<br><저녁><br>소고기안심or돼지고기앞다리살200g 및 쌈채소");
			}else {
				hashmap.put("bmiResult", bmiResult);
				hashmap.put("health", "건강한 몸 만들기 도전!<br>크런치20회-5set,<br>레그레이즈20회-5set,<br>바이시클크런치20회-5set,<br>사이드잭나이프30회-3set,<br>걷기40분");
				hashmap.put("food", "<아침><br>삶은계란1개,사과 반개,두유1개<br><점심><br>잡곡밥,방울토마토샐러드<br><저녁><br>소고기 및 쌈채소");
			}
			return hashmap;	//return에 hashmap을 사용하려면 반드시 public hashmap을 사용해야 함.
		}
	}
	//마이페이지 회원정보 수정
	@RequestMapping(value = "/memberupdate/{uno}") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String memberjoinUpdateController(@PathVariable int uno, Model model)throws Exception{ // 실제 사용 할 메소드 생성
		
//		System.out.println(uno);
		model.addAttribute("list",muserService.memberUpdateService(uno));

		return "/main/user/memberupdate"; // 이동파일(jsp)을 사용하는 구간
	}
}
