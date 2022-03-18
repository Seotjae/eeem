package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
import gudi.pro.eeem.dto.ManagerDTO;
import gudi.pro.eeem.dto.MeetDTO;

public interface ManagerDAO {

	

	int declarationAllCount();

	ArrayList<ManagerDTO> declarationListCall(int pagePerCnt, int offset);

	String checkCont(int dec_type, int dec_targetNum);

	int sct_regist(HashMap<String, String> params);

	void dec_update(String dec_num);

	int meetListAllCount(int meet_state, String meet_subject);

	ArrayList<MeetDTO> managerMeetListCall(int pagePerCnt, int offset, int meet_state, String meet_subject);

	int meetAddAllCount();

	ArrayList<ApplicantAndMeetDTO> meetAddList(int pagePerCnt, int offset);

	

	

	

}
