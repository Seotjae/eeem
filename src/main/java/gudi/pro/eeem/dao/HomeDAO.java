package gudi.pro.eeem.dao;

import java.util.ArrayList;

import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MemberDTO;

public interface HomeDAO {

	ArrayList<MeetDTO> home();

	ArrayList<EtcDTO> notice();

	ArrayList<MemberDTO> mem_flg();
	
}
