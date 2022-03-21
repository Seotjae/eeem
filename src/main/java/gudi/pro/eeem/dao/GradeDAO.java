package gudi.pro.eeem.dao;

import java.util.ArrayList;

import gudi.pro.eeem.dto.ApplicantAndMeetDTO;

public interface GradeDAO {

	ArrayList<ApplicantAndMeetDTO> GradeList(int meet_num);

	int rateEnd(String mem_id, String grd_targetId, int grd_score, int meet_num);

	int ptCount(int meet_num);

	void pointRegist(String mem_id, int pt_type, int meet_num, int pt_count);


}
