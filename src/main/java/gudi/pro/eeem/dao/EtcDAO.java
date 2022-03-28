package gudi.pro.eeem.dao;

import java.util.HashMap;

import gudi.pro.eeem.dto.EtcDTO;


public interface EtcDAO {

	int queWrite(HashMap<String, String> params);

	EtcDTO queDetail(String que_num);

	int login(String mem_id, String mem_pw);

	//삭제
	int delete(String que_num);
	
	int bookmarkselect(int meet_num, String mem_id);
	
	int bookmarkdelete(int meet_num, String mem_id);
	
	int bookmarkinsert(int meet_num, String mem_id);

	String getEmail(String mem_id);

	String getName(String mem_id);
	
	//알림등록
	int ntsRegist(String mem_id, int meet_num, int nts_content);

	int likecountchk(String mem_id);

	int chkTotalBmkCount(String mem_id);





}
