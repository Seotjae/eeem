package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
import gudi.pro.eeem.dto.ManagerDTO;
import gudi.pro.eeem.dto.ManagerSanctionsDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MemberListDTO;
import gudi.pro.eeem.dto.QuestionDTO;

public interface ManagerDAO {

	

	int declarationAllCount();

	ArrayList<ManagerDTO> declarationListCall(int pagePerCnt, int offset);

	String checkCont(int dec_type, int dec_targetNum);

	int sct_regist(HashMap<String, String> params);

	void dec_update(String dec_num);

	int meetListAllCount(int meet_state, String meet_subject);

	ArrayList<MeetDTO> managerMeetListCall(int pagePerCnt, int offset, int meet_state, String meet_subject);

	int meetAddAllCount(HashMap<String, Object> map);

	ArrayList<ApplicantAndMeetDTO> meetAddList(int pagePerCnt, int offset, int ad_state);

	int QnAListAllCount();

	ArrayList<QuestionDTO> QnAListCall(int pagePerCnt, int offset);

	int que_stateUpdate(int upQue_num);

	int memListAllCount(HashMap<String, Object> mem_id);

	

	ArrayList<ManagerSanctionsDTO> SanctionsListCall(int pagePerCnt, int offset);

	int SanctionsAllCount();

	String checkCont2(int dec_type, int dec_targetNum);



	String chkAdmin(String mem_id);

	int mem_stateUpdate(int upMem_state, String mem_id);

	ArrayList<MemberListDTO> managerMemListCall(int pagePerCnt, int offset, String mem_id);

	int managerDeclaration(String mem_id);


	

	

	

}
