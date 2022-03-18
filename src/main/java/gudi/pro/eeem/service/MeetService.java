package gudi.pro.eeem.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import gudi.pro.eeem.dao.MeetDAO;
import gudi.pro.eeem.dao.PointDAO;
import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MeetWriterDTO;
import gudi.pro.eeem.dto.PageDTO;

import gudi.pro.eeem.dto.PhotoDTO;


@Service
public class MeetService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MeetDAO meetDao;
	@Autowired ServletContext servletContext;
	@Autowired PointDAO ptDao;

	public ArrayList<MeetDTO> meetList(String keyword, String meet_subject, String meet_point, ArrayList<Integer> meet_region, ArrayList<Integer> meet_interest) {
		
		 PageDTO pageDto = new PageDTO();
		 pageDto.setKeyword(keyword);
		 pageDto.setMeet_subject(meet_subject);
		 pageDto.setMeet_point(Integer.parseInt(meet_point));
			 pageDto.setMeet_region(meet_region);
			 pageDto.setMeet_interest(meet_interest);
			 logger.info("s : {}{}",pageDto.getMeet_region().size(), pageDto.getMeet_interest());
		return meetDao.meetList(pageDto);
	}
	
	
	//모임등록
	@Transactional
	public String meetRegist(MultipartFile thum_file, HashMap<String, String> params, MultipartFile[] photos, HttpSession session) {
		logger.info("모임등록 서비스 도착");
		//1.파라미터 dto로 옮기기
		String meet_thum = null;
		try {
			//1-1썸네일 사진 이름 변환
			String oriFileName = thum_file.getOriginalFilename();
			String ext = oriFileName.substring(oriFileName.lastIndexOf("."));
			meet_thum = System.currentTimeMillis()+ext;
			logger.info(oriFileName +" => "+meet_thum);
			
			//1-2썸네일 사진 저장
			//metadate 경로
			String realPath = servletContext.getRealPath("/resources/meetPhoto");
			logger.info(realPath);
			
			//project 저장되어있는 경로
			int target = realPath.indexOf(".metadata");
			logger.info("경로 : "+realPath.substring(0,target)+"/EEEm/src/main/webapp/resources/meetPhoto");
			String projectPath = realPath.substring(0,target)+"/EEEm/src/main/webapp/resources/meetPhoto/";
			Thread.sleep(1);
			
			byte[] bytes = meet_thum.getBytes();
			Path path = Paths.get(projectPath+meet_thum);
			Files.write(path, bytes);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		session.setAttribute("loginId", "csj1017"); //임시로 세션에 로그인 처리 나중에 지울것
		
		//1-3파라미터 변환
		String mem_id = (String) session.getAttribute("loginId");
		int meet_region = Integer.parseInt(params.get("meet_region"));
		int meet_interest = Integer.parseInt(params.get("meet_interest"));
		String meet_subject = params.get("meet_subject");
		String meet_phone = params.get("meet_phone");
		int meet_totalPrs = Integer.parseInt(params.get("meet_totalPrs"));
		String meet_gatherStart = params.get("meet_gatherStart");
		String meet_gatherEnd = params.get("meet_gatherEnd");
		String meet_start = params.get("meet_start");
		String meet_end = params.get("meet_end");
		int meet_point = 0;
		if (!params.get("meet_point").isEmpty()) {	
			meet_point = Integer.parseInt(params.get("meet_point"));
		}
		logger.info("모임비 : "+meet_point);
		
		int meet_adState = Integer.parseInt(params.get("meet_adState"));
		String meet_content = params.get("meet_content");
		logger.info(mem_id+"/"+meet_region+"/"+meet_interest+"/"+meet_subject+"/"+meet_phone+"/"+meet_totalPrs+"/"+meet_gatherStart+"/"+meet_gatherEnd
				+"/"+meet_start+"/"+meet_end+"/"+meet_point+"/"+meet_adState+"/"+meet_content);

		//1-4파라미터 등록
		MeetDTO dto = new MeetDTO();
		dto.setMem_id(mem_id);
		dto.setMeet_thum(meet_thum);
		dto.setMeet_interest(meet_interest);
		dto.setMeet_region(meet_region);
		dto.setMeet_subject(meet_subject);
		dto.setMeet_phone(meet_phone);
		dto.setMeet_totalPrs(meet_totalPrs);
		dto.setMeet_gatherStart(meet_gatherStart);
		dto.setMeet_gatherEnd(meet_gatherEnd);
		dto.setMeet_start(meet_start);
		dto.setMeet_end(meet_end);
		dto.setMeet_point(meet_point);	
		dto.setMeet_adState(meet_adState);
		dto.setMeet_content(meet_content);
		
		logger.info("dto 상태 : {}",dto);
		
		//2.모임등록하고 등록한 meet_num 가져오기
		meetDao.meetRegist(dto);
		int meet_num = dto.getMeet_num(); //방금 등록한 meet_num
		logger.info("등록한 모임 번호 : " + meet_num);
		if(meet_num>0) {
			//2-1 광고여부가 1이면 광고 등록
			if (meet_adState == 1) {
				meetDao.adRegist(meet_num,meet_region);//광고등록
				ptDao.pointRegist(mem_id,5,meet_num,-100000);//포인트(10만포인트 차감) 등록
				meetDao.ntsRegist(mem_id,meet_num,6);//알림등록
			}
			
			//3.내용사진 저장
			registPhoto(meet_num,photos);
			
			//4.오늘 날짜별처리 -> 다른 작업으로 대체
			

		}
		return null;//모임상세보기로 이동 처리
		
	}
	
		
	//사진저장
	private void registPhoto(int meet_num, MultipartFile[] photos) {
		for (MultipartFile photo : photos) {
			
			try {
				String photo_oriName = photo.getOriginalFilename();
				int index = photo_oriName.lastIndexOf(".");
				logger.info("index : {}",index);
				
				//방어코드 : 예외 발생이 예상되는 지점을 피해가도록 처리
				if (index>0) {
					String ext = photo_oriName.substring(index);
					String photo_newName = System.currentTimeMillis()+ext; 
					logger.info(photo_oriName+" => "+photo_newName );
					
					//metadate 경로
					String realPath = servletContext.getRealPath("/resources/meetPhoto");
					logger.info(realPath);
					
					//project 저장되어있는 경로
					int target = realPath.indexOf(".metadata");
					logger.info("경로 : "+realPath.substring(0,target)+"/EEEm/src/main/webapp/resources/meetPhoto");
					String projectPath = realPath.substring(0,target)+"/EEEm/src/main/webapp/resources/meetPhoto/";
					
					
					byte[] bytes = photo.getBytes();
					Path path = Paths.get(projectPath+photo_newName);
					Files.write(path, bytes);
					logger.info(photo_oriName+"Save Ok");
					meetDao.registPhoto(meet_num,photo_oriName,photo_newName);					
				}				
				Thread.sleep(1);
			} catch (Exception e) {
				System.out.println(e.toString());
				e.printStackTrace();
			}
		}
		
	}
	
	//@Scheduled(fixedDelay = 5000) //ms 단위 5초 후 실행 -> 이전 작업이 끝나면 5초 후
	//@Scheduled(fixedRate = 5000) //ms 단위 5초 마다 실행 -> 이전 작업 실행 시작부터 5초 후
	//crontab: 리눅스에서 쓰는 스케쥴러 (사용법 차용)
	//초 분 시 일 월 요일 년도(생략 가능)
	//@Scheduled(cron="10 * * * * *")
	public void loop() {
		LocalDateTime now = LocalDateTime.now();
		logger.info("모임상태 체크 시작 현재 시간 : {}",now);
		ArrayList<Integer>numList = new ArrayList<Integer>();
		//4-1==모집시작일 : 모임상태가 폐쇄2 가 아닐경우 1로
		numList =  meetDao.chkGthrSt(now);
		if (numList.size() > 0) {
			for (Integer meet_num : numList) {
				meetDao.updateMeetState(meet_num,1);
				logger.info("1로 업데이트 : "+meet_num);
			}
		}
		//4-2==모집종료일 : 모임상태가 폐쇄2 가 아닐경우 3으로
		numList =  meetDao.chkGthrEd(now);
		if (numList.size() > 0) {
			for (Integer meet_num : numList) {
				meetDao.updateMeetState(meet_num,3);
				logger.info("3으로 업데이트 : "+meet_num);
			}
		}
		//4-3==모임종료일 + 3일 : 모임상태를 4로 
		numList =  meetDao.chkEd(now);
		if (numList.size() > 0) {
			for (Integer meet_num : numList) {
				meetDao.updateMeetState(meet_num,4);
				logger.info("4로 업데이트 : "+meet_num);
			}
		}
		logger.info("모임상태 체크 종료 현재 시간 : {}",now);
	}

	/*
	public int meetSerchCount(String meet_subject, ArrayList<Integer> meet_region, ArrayList<Integer> meet_interest,
			String meet_point, String keyword) {
		
		PageDTO pageDto = new PageDTO();
		//pageDto.setMeet_subject(meet_subject);
		//pageDto.setMeet_region(meet_region);
		//pageDto.setMeet_interest(meet_interest);
		pageDto.setMeet_point(Integer.parseInt(meet_point));
		pageDto.setKeyword(keyword);
		
		
		return meetDao.meetSerchCount(pageDto);
	}
	
	

	*/


	//유현진 - 모임 상세보기

	public MeetDTO meetDetail(String meet_num, String string) {
		
		return meetDao.meetDetail(meet_num);
	}
		//유현진 - 문의 상세보기 썸네일 관련
	public ArrayList<PhotoDTO> thumList(String meet_num) {
		
		return meetDao.thumList(meet_num);
	}

		//유현진 -개설자의 정보
	public MeetWriterDTO MeetWriter(String meet_num) {
		logger.info("개설자의 정보! 서비스");

		return meetDao.MeetWriter(meet_num);
	}
	//유현진 -승인 인원수를 불러오는 기능
	public int approvechk(String mem_id) {
		logger.info("승인인원수 서비스");
		return meetDao.approvechk(mem_id);
	}

		//유현진 - 신청자 포인트 확인
	public int mpointchk(String mem_id) {
		
		logger.info("내 포인트 확인 서비스");
		
		return meetDao.mpointchk(mem_id);
	}



	public HashMap<String, Object> MakeList(int currPage, int pagePerCnt, String mem_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		//어디서 부터 보여줘야 하는가?
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);		
				
		 int totalCount = meetDao.makeAllCount(mem_id); // 해당 테이블의 모든 글의 갯수
		//만들수 있는 총 페이지의 수(전체 갯수/보여줄 수)
		 int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 ArrayList<ApplicantAndMeetDTO> dto = new ArrayList<ApplicantAndMeetDTO>();
		 dto = meetDao.MakeList(pagePerCnt, offset,mem_id);
		 map.put("pages",range);
		 map.put("list", dto);
		 
		return map;
	}

	//유현진 - 모임신청시 신청자 테이블 등록
public int meetAppInsert(HashMap<String, Object> map) {
		
		logger.info("신청자 테이블 등록 확인 서비스");
			
		return meetDao.meetAppInsert(map);
		
		
	}

//유현진 - 모임신청시 알림 테이블 등록
	public int meetNoticeInsert(HashMap<String, Object> map) {
		
		logger.info("신청자 알림 등록 확인 서비스");

		return meetDao.meetNoticeInsert(map);
		
	}

	
	
	/*
	public int meetSerchCount(String keyword) {
		
		PageDTO pageDto = new PageDTO();
		pageDto.setKeyword(keyword);
		//pageDto.setMeet_subject(meet_subject);
		
		return meetDao.meetSerchCount(pageDto);
	}
	*/
	

}
