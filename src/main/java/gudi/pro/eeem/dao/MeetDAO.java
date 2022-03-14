package gudi.pro.eeem.dao;

import java.util.ArrayList;

import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.PageDTO;

public interface MeetDAO {

	ArrayList<MeetDTO> meetList(PageDTO pageDto);

	

	//int meetSerchCount(PageDTO pageDto);

	

	

}
