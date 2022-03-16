package gudi.pro.eeem.service;


import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.MemberDAO;
import gudi.pro.eeem.dto.MemberDTO;
import gudi.pro.eeem.dto.NoticeDTO;


@Service
public class MemberService {

	@Autowired MemberDAO memDAO;
	
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
		int result = memDAO.regist(params);
		logger.info("회원가입 결과 : {}",result);
		
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









}
