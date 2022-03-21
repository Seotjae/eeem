package gudi.pro.eeem.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.GradeDAO;
import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
@Service
public class GradeService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired GradeDAO grdDao;
	
	public HashMap<String, Object> GradeList(int meet_num) {
		ArrayList<ApplicantAndMeetDTO> dto = grdDao.GradeList(meet_num);
		logger.info("참여자 평가 요청 서비스 도착 꺼낸 내용 : {}",dto);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", dto);
		
		return map;
	}


	
	
}
