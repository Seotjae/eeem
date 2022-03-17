package gudi.pro.eeem.service;


import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.MemberDAO;
import gudi.pro.eeem.dao.PointDAO;
import gudi.pro.eeem.dto.BookmarkAndMeetDTO;
import gudi.pro.eeem.dto.MemberDTO;
import gudi.pro.eeem.dto.NoticeDTO;
import gudi.pro.eeem.dto.QuestionDTO;


@Service
public class MemberService {

	@Autowired MemberDAO memDAO;
	@Autowired PointDAO ptDAO;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public HashMap<String, Object> idCheck(String mem_id) {
		int result = memDAO.idCheck(mem_id);
		logger.info("아이디 중복확인 결과 : {}",result);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result",result);
		return map;
	}

	public HashMap<String, Object> phCheck(String mem_phone) {
		int result = memDAO.phCheck(mem_phone);
		logger.info("전화번호 중복확인 결과 : {}",result);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result",result);
		return map;
	}

	public void regist(HashMap<String, String> params) {
		String mem_pw = params.get("mem_pw");
		logger.info(mem_pw);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String enc_pw = encoder.encode(mem_pw);
		params.put("mem_pw",enc_pw);
		logger.info("enc 결과 : {}",params);
		String mem_id = params.get("mem_id");
		int result = memDAO.regist(params);
		logger.info("회원가입 결과 : {}",result);
		if (result == 1) {
			logger.info("회원가입 포인트 등록 요청 : {}",mem_id);
			ptDAO.pointRegist(mem_id, 6, 0, 0); //회원가입 최초 0포인트 등록
		}
		
	}
	
	
	public String myPageUpdateForm(String mem_id) {
		
		return memDAO.myPageUpdateForm(mem_id);
	}

	public MemberDTO detail(String mem_id, String string) {
	
		return memDAO.detail(mem_id);
	}


	public ArrayList<NoticeDTO> notice_call(String mem_id) {
		
		return memDAO.notice_call(mem_id);
	}


	public void memberUpdate(HashMap<String, String> params) {
		int row = memDAO.memberUpdate(params);
		logger.info("수정 성공여부 : {}",row);
	}

	public MemberDTO loginForm(String mem_id) {
		logger.info("로그인서비스도착");
		return memDAO.loginForm(mem_id);
	}

	
	
	//문의글 페이징 리스트 요청
	public HashMap<String, Object> qnaListCall(int currPage, int pagePerCnt, String mem_id) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		//어디서 부터 보여줘야 하는가?
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);		
				
		 int totalCount = memDAO.queAllCount(mem_id); // 해당 테이블의 모든 글의 갯수
		//만들수 있는 총 페이지의 수(전체 갯수/보여줄 수)
		 int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 ArrayList<QuestionDTO> dto = new ArrayList<QuestionDTO>();
		 dto = memDAO.qnaListCall(pagePerCnt, offset,mem_id);
		 map.put("pages",range);
		 map.put("list", dto);
		 
		return map;
	}


	public String idSearch(String mem_name, String mem_phone) {
		String mem_id = memDAO.idSearch(mem_name,mem_phone);
		return mem_id;
	}

	public HashMap<String, Object> likeListCall(String mem_id) {
		ArrayList<BookmarkAndMeetDTO> dto = memDAO.likeListCall(mem_id);
		logger.info("즐겨찾기 목록 요청 서비스 도착 꺼낸 내용 : {}",dto);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", dto);
		
		return map;
	}
	










}
