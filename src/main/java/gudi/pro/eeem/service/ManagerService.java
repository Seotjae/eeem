package gudi.pro.eeem.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.ManagerDAO;
import gudi.pro.eeem.dao.MeetDAO;
import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
import gudi.pro.eeem.dto.ManagerDTO;
import gudi.pro.eeem.dto.MeetDTO;

@Service
public class ManagerService {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired ManagerDAO managerDao;
	@Autowired MeetDAO meetDao;

	

	public HashMap<String, Object> declarationListCall(int currPage, int pagePerCnt) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);	
		
		int totalCount = managerDao.declarationAllCount();
		int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 
		 ArrayList<ManagerDTO> managerDto = new ArrayList<ManagerDTO>();
		 managerDto = managerDao.declarationListCall(pagePerCnt, offset);
		 map.put("pages",range);
		 map.put("list", managerDto);
		 
		
		return map;
	}



	public HashMap<String, Object> checkCont(int dec_type, int dec_targetNum) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		String target_cont = managerDao.checkCont(dec_type, dec_targetNum);
		logger.info("target_cont : {}",target_cont);
		
		
		map.put("target_cont", target_cont);	
		
		return map;
	}



	public void sct_regist(HashMap<String, String> params) {
		
		
		String dec_num = params.get("dec_num");
		String mem_id = params.get("mem_id");
		String sct_type = params.get("sct_type");
		String sct_content = params.get("sct_content");
		
		logger.info(dec_num+"/"+mem_id+"/"+sct_type+"/"+sct_content);
		
		managerDao.dec_update(dec_num);
		
		int result = managerDao.sct_regist(params);
		logger.info("제재 등록 결과 : {}",result);
		
		
	}



	public HashMap<String, Object> managerMeetListCall(int currPage, int pagePerCnt, int meet_state, String meet_subject) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);	
		
		int totalCount = managerDao.meetListAllCount(meet_state, meet_subject);
		int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 ArrayList<MeetDTO> meetDto = new ArrayList<MeetDTO>();
		 meetDto = managerDao.managerMeetListCall(pagePerCnt, offset, meet_state, meet_subject);
		 
		 map.put("pages",range);
		 map.put("list", meetDto);
		return map;
	}



	public HashMap<String, Object> meetAddList(int currPage, int pagePerCnt) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);
		
		int totalCount = managerDao.meetAddAllCount();
		int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 ArrayList<ApplicantAndMeetDTO> addDto = new ArrayList<ApplicantAndMeetDTO>();
		 addDto = managerDao.meetAddList(pagePerCnt, offset);
		
		 map.put("pages", range);
		 map.put("list", addDto);
		
		return map;
	}
	

}
