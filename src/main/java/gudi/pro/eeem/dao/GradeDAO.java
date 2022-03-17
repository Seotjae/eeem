package gudi.pro.eeem.dao;

import java.util.ArrayList;

import gudi.pro.eeem.dto.ApplicantAndMeetDTO;

public interface GradeDAO {

	int grdAllCount(String mem_id);

	ArrayList<ApplicantAndMeetDTO> GradeList(int pagePerCnt, int offset, String mem_id);

}
