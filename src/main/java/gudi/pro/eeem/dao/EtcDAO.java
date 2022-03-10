package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.EtcDTO;


public interface EtcDAO {

	// 모임 리스트
	ArrayList<EtcDTO> list();

	// 모임 작성하기
	int write(HashMap<String, String> params);

	// 모임 상세보기
	EtcDTO detail(String que_num);

	



}
