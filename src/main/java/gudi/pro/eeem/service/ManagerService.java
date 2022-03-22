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
import gudi.pro.eeem.dto.ManagerSanctionsDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MemberDTO;
import gudi.pro.eeem.dto.MemberListDTO;
import gudi.pro.eeem.dto.QuestionDTO;

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



	public HashMap<String, Object> meetAddList(int currPage, int pagePerCnt, int ad_state) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);
		map.put("ad_meetstate", ad_state);
		int totalCount = managerDao.meetAddAllCount(map);
		int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 ArrayList<ApplicantAndMeetDTO> addDto = new ArrayList<ApplicantAndMeetDTO>();
		 addDto = managerDao.meetAddList(pagePerCnt, offset, ad_state);
		
		 map.put("pages", range);
		 map.put("list", addDto);
		
		return map;
	}

	
	
	public HashMap<String, Object> SanctionsListCall(int currPage, int pagePerCnt) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);	
		
		int totalCount = managerDao.SanctionsAllCount();
		int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 
		 ArrayList<ManagerSanctionsDTO> managerDto = new ArrayList<ManagerSanctionsDTO>();
		 managerDto = managerDao.SanctionsListCall(pagePerCnt, offset);
		 map.put("pages",range);
		 map.put("list", managerDto);
		 
		
		return map;
	}




	



	public HashMap<String, Object> QnAList(int currPage, int pagePerCnt) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);	
		

		int totalCount = managerDao.QnAListAllCount();

		int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 

		 ArrayList<QuestionDTO> questionDto = new ArrayList<QuestionDTO>();
		 questionDto = managerDao.QnAListCall(pagePerCnt, offset);
		 
		 map.put("pages",range);
		 map.put("list", questionDto);

		return map;
	}




	public HashMap<String, Object> checkCont2(int dec_type, int dec_targetNum) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		//대상종류dec_type -> 0:모임 1:문의(댓글) 2:후기
		//대상번호dec_targetNum 은 무조건 번호(pk)
		String targetSub = managerDao.checkCont2(dec_type,dec_targetNum); //두개로 해당 제목들 불러옴
		logger.info(targetSub);
		map.put("targetSub", targetSub);

		return map;
	}

	public HashMap<String, Object> upQue_state(int upQue_num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		
		
		int result = managerDao.que_stateUpdate(upQue_num);
		logger.info("문의 처리 업데이트 결과 : "+result);
		map.put("result", result);

		
		
		return map;
	}



	public HashMap<String, Object> managerMemListCall(int currPage, int pagePerCnt, String mem_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);	
		
		int totalCount = managerDao.memListAllCount(map);
		int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 ArrayList<MemberListDTO> memberlistDto = new ArrayList<MemberListDTO>();
		 memberlistDto = managerDao.managerMemListCall(pagePerCnt, offset, mem_id);
		 map.put("pages",range);
		 map.put("list", memberlistDto);
		return map;
	}



	public HashMap<String, Object> upMem_state(int upMem_state, String mem_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int result = managerDao.mem_stateUpdate(upMem_state, mem_id);
		logger.info("회원등급 업데이트 결과 : "+result);
		return map;
	}


	//회원 관리자 여부 체크하는 기능 ======================================
	public int chkAdmin(String mem_id) {
		logger.info("관리자여부 서비스 도착 : {}",mem_id);
		return managerDao.chkAdmin(mem_id);
	}




	

}
