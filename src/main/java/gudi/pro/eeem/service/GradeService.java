package gudi.pro.eeem.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gudi.pro.eeem.dao.GradeDAO;
import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
@Service
public class GradeService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired GradeDAO grdDao;
	
	public HashMap<String, Object> GradeList(int meet_num) {
		ArrayList<ApplicantAndMeetDTO> dto = grdDao.GradeList(meet_num);
		logger.info("참여자 평가 요청 서비스 도착 꺼낸 내용 : {}",dto);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", dto);
		
		return map;
	}

	@Transactional
	public void rateEnd(String mem_id, HashMap<String, String> params) {
		logger.info("참여자 평가 서비스 도착");
		int result = 0;
		int meet_num = Integer.parseInt(params.get("meet_num")); //모임번호 추출
		logger.info("keySet : {}",params.keySet()); 
		Set<String> targetIdKey = params.keySet(); //params에서 key 만 꺼내서 set에 담음
		for (String targetId : targetIdKey) { //set 에 담긴걸 향상된 포문으로 key 값을 하나씩 꺼냄
			if (!targetId.equals("meet_num")) {
				logger.info(targetId);
				int grd_score =  Integer.parseInt(params.get(targetId)); //하나씩 꺼낸 key로 평가점수 추출
				String grd_targetId = targetId.substring(targetId.indexOf("_")+1); //하나씩 꺼낸 key 에서 targetId 잘라냄
				logger.info("아이디 / 점수 : {}/{}",grd_targetId,grd_score);
				result = grdDao.rateEnd(mem_id,grd_targetId,grd_score,meet_num); //추출한 평가대상자와 평가점수를 가지고 dao 호출 (평가한 사람 수만큼 호출)
				logger.info("실행 결과 : {}",result);
			}
		}
		if (result >0) {
			int pt_count = grdDao.ptCount(meet_num); //해당 모임의 모임비 가져오
			pt_count = pt_count * (targetIdKey.size()-1); //가져온 모임비에 인원수 (params에 들어있는 변수 수 -1, meet_num이 들어있기 때문 )
			logger.info("입금될 포인트 : {}",pt_count);
			if (pt_count>0) { 
				grdDao.pointRegist(mem_id,4,meet_num,pt_count);

			}
		}
		
		
	}


	
	
}
