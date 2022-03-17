package gudi.pro.eeem.dao;

import java.util.ArrayList;

import gudi.pro.eeem.dto.PointDTO;
import gudi.pro.eeem.dto.QuestionDTO;

public interface PointDAO {


	void pointRegist(String mem_id, int pt_type, int meet_num, int pt_count); //광고비등록

	ArrayList<PointDTO> listCall(String mem_id);

	int myPointChk(String mem_id);

	int pointAllCount(String mem_id);

	ArrayList<PointDTO> PointList(int pagePerCnt, int offset, String mem_id);




}
