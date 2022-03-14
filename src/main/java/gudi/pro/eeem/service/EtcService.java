package gudi.pro.eeem.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.EtcDAO;
import gudi.pro.eeem.dto.EtcDTO;


@Service
public class EtcService {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired EtcDAO qstdao;

	
	//2022-03-10 문의하기 글쓰기
	public ArrayList<EtcDTO> list() {
		
		logger.info("DB에 임시 list 요청");
		
		return qstdao.list();
	}

	public void write(HashMap<String, String> params) {
		
		int row = qstdao.write(params); 
		logger.info("입력된 건수 : {}",row);
		
	}

	
	public EtcDTO detail(String que_num, String string) {
		  
		  return qstdao.detail(que_num); }

	public int bookmarkinsert(int meet_num, String mem_id) {
		
		return qstdao.bookmarkinsert(meet_num,mem_id);
	}

		
	
	
	
	/*
		 * public EtcDTO detail(String que_num, String mem_email, String string) {
		 * 
		 * return qstdao.detail(que_num, mem_email); }
		 */

	
	





}
