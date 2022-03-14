package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.EtcDTO;


public interface EtcDAO {

	ArrayList<EtcDTO> queList();
	
	int queWrite(HashMap<String, String> params);

	EtcDTO queDetail(String que_num);

	int login(String mem_id, String mem_pw);

	//삭제
	int delete(String que_num);

	int bookmarkinsert(int meet_num, String mem_id);




}
