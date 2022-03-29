package gudi.pro.eeem.service;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.HomeDAO;
import gudi.pro.eeem.dao.MeetDAO;
import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.dto.MeetDTO;

@Service
public class HomeService {
	@Autowired HomeDAO homedao;
	@Autowired MeetDAO meetDao;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	//@Scheduled(fixedDelay = 5000) //ms 단위 5초 후 실행 -> 이전 작업이 끝나면 5초 후
	//@Scheduled(fixedRate = 5000) //ms 단위 5초 마다 실행 -> 이전 작업 실행 시작부터 5초 후
	//crontab: 리눅스에서 쓰는 스케쥴러 (사용법 차용)
	//초 분 시 일 월 요일 년도(생략 가능)
	@Scheduled(cron="0 * * * * *")
	public void loop() {
		LocalDateTime now = LocalDateTime.now();
		String today = now.toString();
		logger.info(now+"////"+today);
		logger.info("============모임상태 체크 시작 현재 시간 : {}==============",now);
		ArrayList<Integer>numList = new ArrayList<Integer>();
		//4-1==모집시작일 : 모임상태가 폐쇄2 가 아닐경우 1로
		numList =  meetDao.chkGthrSt(today);
		if (numList.size() > 0) {
			for (int meet_num : numList) {
				meetDao.updateMeetState(meet_num,1);
				logger.info("1로 업데이트 : "+meet_num);
			}
		}
		//4-2==모집종료일 : 모임상태가 폐쇄2 가 아닐경우 3으로
		numList =  meetDao.chkGthrEd(today);
		int result = 0;
		if (numList.size() > 0) {
			for (int meet_num : numList) {
				meetDao.updateMeetState(meet_num,3);
				logger.info("3으로 업데이트 : "+meet_num);
				result = meetDao.delAdv(meet_num); //모집 종료가 끝나면 광고 삭제
				logger.info("{}번 모임 광고 삭제 갯수 : {} ",meet_num,result);
			}
		}
		//4-3==모임종료일 + 3일 : 모임상태를 4로 
		numList =  meetDao.chkEd(today);
		if (numList.size() > 0) {
			for (int meet_num : numList) {
				meetDao.updateMeetState(meet_num,4);
				logger.info("4로 업데이트 : "+meet_num);
			}
		}
		logger.info("==============모임상태 체크 종료 현재 시간 : {}===============",now);
	}
	
	public ArrayList<MeetDTO> home(String mem_id) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("mem_id", mem_id);
		return homedao.home(map);
		
	}

	public ArrayList<EtcDTO> notice(String mem_id) {
		
		return homedao.notice(mem_id);
	}
	
	public ArrayList<MeetDTO> mainmeet() {
		
		return homedao.mainmeet();
	}

	public ArrayList<MeetDTO> mainusermeet(String mem_id) {
		// TODO Auto-generated method stub
		return homedao.mainusermeet(mem_id);
	}



}
