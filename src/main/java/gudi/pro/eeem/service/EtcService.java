package gudi.pro.eeem.service;

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

	//2022-03-14 유현진  문의하기 글쓰기
	public String queWrite(HashMap<String, String> params) {

		int row = qstdao.queWrite(params);
		
		logger.info("입력된 건수 : {}/{}",row,params);
		String que_num = String.valueOf(params.get("que_num"));
		logger.info("받아온 키: {}",que_num);
		return que_num;
		
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

	public int bookmarkselect(int meet_num, String mem_id) {
		
		return qstdao.bookmarkselect(meet_num,mem_id);
	}

	public int bookmarkdelete(int meet_num, String mem_id) {

		return qstdao.bookmarkdelete(meet_num,mem_id);
	}
	
	public int bookmarkinsert(int meet_num, String mem_id) { //즐겨찾기 추가하기
		
		return qstdao.bookmarkinsert(meet_num,mem_id);
	}

	//2022-03-14 유현진 email 꺼내오기
	public String getEmail(String mem_id) {
		return qstdao.getEmail(mem_id);
	}


	//2022-03-14 유현진 문의 상세보기 name 꺼내오기 
	public String getName(String mem_id) {
		return qstdao.getName(mem_id);
	}

	public int likecountchk(String mem_id) {
		
		return qstdao.likecountchk(mem_id);
	}

	public HashMap<String, Object> chkTotalBmkCount(String mem_id) {
		int bmk_count = qstdao.chkTotalBmkCount(mem_id);
		logger.info("로그인한 사용자의 즐겨찾기 수 : "+bmk_count);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bmk_count",bmk_count);
		return map;
	}

	



}
