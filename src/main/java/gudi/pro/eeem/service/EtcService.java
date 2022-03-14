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


	//2022-03-14 유현진 문의하기 리스트(임시)
	public ArrayList<EtcDTO> queList() {
		logger.info("문의 list 요청");
		return  qstdao.queList();
	}


	//2022-03-14 유현진  문의하기 글쓰기
	public void queWrite(HashMap<String, String> params) {

		int row = qstdao.queWrite(params);
		logger.info("입력된 건수 : {}",row);
		logger.info("여기까지는 잘 옵니까? ");
		
	}
	
	
	//2022-03-14 유현진 문의하기 상세보기
	public EtcDTO queDetail(String que_num, String string) {
		
		return qstdao.queDetail(que_num);
	}


	//2022-03-14 유현진 문의하기 상세보기 - 삭제
	public void delete(String que_num) {
		
		int success = qstdao.delete(que_num);
		logger.info("삭제 완료 여부 :" + success);
	}








}
