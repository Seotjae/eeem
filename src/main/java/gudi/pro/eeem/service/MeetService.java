package gudi.pro.eeem.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class MeetService {

	public String meetRegist(MultipartFile thum_file, HashMap<String, String> params, MultipartFile[] photos) {
		//1.파라미터 dto로 옮기기
		//1-1썸네일 사진 이름 변환
		//1-2썸네일 사진 저장
		
		//2.모임등록하고 등록한 meet_num 가져오기
		
		//3.내용사진 저장
		
		//4.
		
		return null;
	}

}
