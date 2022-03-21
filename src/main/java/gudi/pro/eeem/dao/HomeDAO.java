package gudi.pro.eeem.dao;

import java.util.ArrayList;

import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MemberDTO;

public interface HomeDAO {

	ArrayList<MeetDTO> home();

	ArrayList<EtcDTO> notice(String mem_id);

	ArrayList<MemberDTO> mem_flg();

	ArrayList<MeetDTO> mainmeet();

	ArrayList<MeetDTO> mainusermeet(String mem_id);
	
}
