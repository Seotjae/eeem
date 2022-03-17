package gudi.pro.eeem.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.GradeDAO;
import gudi.pro.eeem.dao.MeetDAO;
import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
@Service
public class GradeService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired GradeDAO grdDao;
	
	public HashMap<String, Object> GradeList(int currPage, int pagePerCnt, String mem_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		//어디서 부터 보여줘야 하는가?
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);		
				
		 int totalCount = grdDao.grdAllCount(mem_id); // 해당 테이블의 모든 글의 갯수
		//만들수 있는 총 페이지의 수(전체 갯수/보여줄 수)
		 int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 ArrayList<ApplicantAndMeetDTO> dto = new ArrayList<ApplicantAndMeetDTO>();
		 dto = grdDao.GradeList(pagePerCnt, offset,mem_id);
		 map.put("pages",range);
		 map.put("list", dto);
		 
		return map;
	}

}
