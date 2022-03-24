package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.PointDTO;

public interface PointDAO {


	int pointRegist(String mem_id, int pt_type, int meet_num, int pt_count); //광고비등록

	ArrayList<PointDTO> listCall(String mem_id);

	//유현진 - 모임신청시 신청자 포인트 확인
	String myPointChk(String mem_id);

	int pointAllCount(String mem_id);

	ArrayList<PointDTO> PointList(int pagePerCnt, int offset, String mem_id);

	//유현진 모임신청시 신청자 포인트 차감
	int pointToss(HashMap<String, Object> map);




}
