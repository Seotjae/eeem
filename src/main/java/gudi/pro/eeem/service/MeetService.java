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
import org.springframework.web.servlet.ModelAndView;

import gudi.pro.eeem.dao.EtcDAO;
import gudi.pro.eeem.dao.MeetDAO;
import gudi.pro.eeem.dao.PointDAO;
import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
import gudi.pro.eeem.dto.CommentDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MeetWriterDTO;
import gudi.pro.eeem.dto.MymeetAndApplicant;
import gudi.pro.eeem.dto.PageDTO;
import gudi.pro.eeem.dto.PhotoDTO;
import gudi.pro.eeem.dto.ReviewDTO;
import gudi.pro.eeem.dto.myPageJoinDTO;


@Service
public class MeetService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MeetDAO meetDao;
	@Autowired ServletContext servletContext;
	@Autowired PointDAO ptDao;
	@Autowired EtcDAO etcDao;


	public ArrayList<MeetDTO> meetList(String keyword, String meet_subject, String meet_point, ArrayList<Integer> meet_region, ArrayList<Integer> meet_interest, String mem_id) {
		
		 PageDTO pageDto = new PageDTO();
		 
		 pageDto.setKeyword(keyword);
		 pageDto.setMeet_subject(meet_subject);
		 pageDto.setMeet_point(Integer.parseInt(meet_point));
			 pageDto.setMeet_region(meet_region);
			 pageDto.setMeet_interest(meet_interest);
			 pageDto.setMem_id(mem_id);
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
			realPath += "/";
			logger.info(realPath);
			
			//project 저장되어있는 경로
			int target = realPath.indexOf(".metadata");
			if (target>0) {				
				logger.info("경로 : "+realPath.substring(0,target)+"/EEEm/src/main/webapp/resources/meetPhoto");
				realPath = realPath.substring(0,target)+"/EEEm/src/main/webapp/resources/meetPhoto/";
			}
			Thread.sleep(1);
			
			byte[] bytes = thum_file.getBytes();
			Path path = Paths.get(realPath+meet_thum);
			Files.write(path, bytes);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
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
				etcDao.ntsRegist(mem_id,meet_num,6);//알림등록
			}
			
			//3.내용사진 저장
			registPhoto(meet_num,photos);
			
			//4.오늘 날짜별처리 -> 다른 작업으로 대체
			

		}
		return "redirect:/meetDetail?meet_num="+meet_num;//모임상세보기로 이동 처리
		
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
					realPath += "/";
					logger.info(realPath);
					
					//project 저장되어있는 경로
					int target = realPath.indexOf(".metadata");
					if (target>0) {
						logger.info("경로 : "+realPath.substring(0,target)+"/EEEm/src/main/webapp/resources/meetPhoto");
						realPath = realPath.substring(0,target)+"/EEEm/src/main/webapp/resources/meetPhoto/";
					}
					
					
					byte[] bytes = photo.getBytes();
					Path path = Paths.get(realPath+photo_newName);
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
	public int approvechk(String meet_num) {
		logger.info("승인인원수 서비스");
		return meetDao.approvechk(meet_num);
	}

		//유현진 - 신청자 포인트 확인
	public int mpointchk(String mem_id) {
		String hangle = meetDao.mpointchk(mem_id);
		logger.info("내 포인트 확인 서비스");
		int row = 0;
		if (hangle != null) {
		row = Integer.parseInt(hangle) ;
		}
		return row;
		
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


	public String grdAvg(String mem_id) {
		logger.info("평점 요청 서비스 도착");
		return meetDao.grdAvg(mem_id);
	}

	
	@Transactional
	public void makeDel(String meet_num) {
		int row = meetDao.makeDel(meet_num);
		logger.info("폐쇄 성공여부 : {}",row);
		
		if (row >0) { //폐쇄 성공했을 경우만 실행
			
			int tMeet_num = Integer.parseInt(meet_num);
			//모임번호로 해당 모임 신청자 중 신청 상태가 승인인 사람들 불러오기
			ArrayList<String> mem_ids = meetDao.ptReturnId(meet_num);
			logger.info("꺼내온 아이디 : {}",mem_ids);
			
			//반환해야 할 포인트
			int pt_count = meetDao.ptReturnCount(meet_num);
			logger.info("반환해야 할 포인트 : {}",pt_count);
			if (pt_count>0) { //모임비가 무료가 아닐 경우 반환
				//불러온 사람들 수 만큼 반복문으로 포인트 insert 요청
				if (!mem_ids.isEmpty()) {
					for (String mem_id : mem_ids) {
						ptDao.pointRegist(mem_id,2,tMeet_num,pt_count);
					}
				}				
			}
			
			
		}

	}



	public HashMap<String, Object> appList(int currPage, int pagePerCnt, String mem_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);
				
		 int totalCount = meetDao.appAllCount(mem_id); // 해당 테이블의 모든 글의 갯수
		//만들수 있는 총 페이지의 수(전체 갯수/보여줄 수)
		 int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 LocalDateTime todaytime = LocalDateTime.now();
		 
		 ArrayList<myPageJoinDTO> dto = new ArrayList<myPageJoinDTO>();
		 
		 dto = meetDao.appList(pagePerCnt, offset,mem_id);
		 map.put("todaysDate", todaytime);
		 map.put("pages",range);
		 map.put("list", dto);
		 
		return map;
	}

	//유현진 - 모임신청시 신청자 테이블 등록
	public int meetAppInsert(HashMap<String, Object> map) {
		
		logger.info("신청자 테이블 등록 확인 서비스");
		String result = meetDao.chkAppState(map);
		logger.info("신청한적이 있나? " + result);
		int appResult = 0;
		if (result != null) {
			appResult= meetDao.updAppState(result);
			logger.info("모임 신청 서비스에서 신청상태 수정됐나? " + appResult);
		}else {
			appResult = meetDao.meetAppInsert(map);
			logger.info("모임 신청 서비스에서 신청 등록됐나? " + appResult);
		}
		return appResult;
		
		
	}

//유현진 - 모임신청시 알림 테이블 등록
	public int meetNoticeInsert(HashMap<String, Object> map) {
		
		logger.info("신청자 알림 등록 확인 서비스");

		return meetDao.meetNoticeInsert(map);
		

	}

	
	
	
	//모임 신청자 목록 요청 작성자 최성재
	public HashMap<String, Object> meetAppsCall(int currPage, int pagePerCnt, int meet_num, int app_state) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		//어디서 부터 보여줘야 하는가?
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);		
				
		 int totalCount = meetDao.meetAppAllCount(meet_num, app_state); // 해당 테이블의 모든 글의 갯수
		//만들수 있는 총 페이지의 수(전체 갯수/보여줄 수)
		 int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 //리스트호출
		 ArrayList<MymeetAndApplicant> dto = new ArrayList<MymeetAndApplicant>();
		 dto = meetDao.meetAppsCall(pagePerCnt, offset,meet_num,app_state);
		 map.put("pages",range);
		 map.put("list", dto);
		 
		//신청자수 호출
		 int[] counts = meetDao.prsCount(meet_num);
		 logger.info("신청자 수 확인 {}",counts);
		 map.put("counts", counts);
		 
		return map;
	}

	//신청자 승인 요청, 작성자 : 최성재
	@Transactional
	public HashMap<String, Object> updAppSt(int app_num, int meet_num, String mem_id) {
		logger.info("신청자 승인 요청 서비스 도착");
		HashMap<String, Object> map = new HashMap<String, Object>();
		int result = meetDao.updAppSt(app_num);
		logger.info("승인 요청 결과 : {}",result);
		if (result>0) {
			etcDao.ntsRegist(mem_id,meet_num,1);//알림등록
		}
		map.put("result", result);
		return map;
	}

	//2022-03-21 유현진 모임 상세보기  안에있는 글 사진 꺼내오기. + 내용도 가져오기
	public MeetDTO meetDetailBoard(String meet_num) {
		
		return meetDao.meetDetailBoard(meet_num);
	}

	//모임 상세보기 본문 사진불러오기
	public ArrayList<PhotoDTO> photoList(String meet_num) {
		
		return meetDao.photoList(meet_num);
	}


	public String getId(int meet_num) {
		
		return meetDao.getId(meet_num);
	}


	public String getNum(int meet_num) {
		
		return meetDao.getNum(meet_num);
	}


	public String getSubject(int meet_num) {
		
		return meetDao.getSubject(meet_num);
	}

	
	//모임 상세보기 - 신고하기
	public void meetSct_regist(HashMap<String, String> params) {
		
		int row = meetDao.meetSct_regist(params);
		logger.info("신고 글쓰기 건수 : {}", row);
	}


	//회원 모임완료
	public int completion(String meet_num, String mem_id) {
		
		return meetDao.completion(meet_num,mem_id);
		
	}

	//모임 총원 구해오기
	public int meetcompletion(String meet_num) {
			
		return meetDao.meetcompletion(meet_num);
	}

	//모임 완료인원구하기
	public int meetcompletionTow(String meet_num) {

		return meetDao.meetcompletionTow(meet_num);
		
	}

	//모임상태를 모임완료로 변경하기
	public int meetsuccess(String meet_num) {
		return meetDao.meetsuccess(meet_num);
	
	}

	//모임 취소요청(신청한 회원)
	public int meetStop(String meet_num, String mem_id) {
		logger.info("모임취소요청 신청한 회원",meet_num,mem_id);
				
		return meetDao.meetStop(meet_num,mem_id);
	}
	
	//모임 취소요청(신청한 회원 포인트반환)
	public int pointreturn(String meet_num, String mem_id) {
		logger.info("모임취소요청 포인트 반환",meet_num,mem_id);
		meetDao.pointReturnNotice(meet_num,mem_id);//포인트반환 알림
		return meetDao.pointreturn(meet_num,mem_id);
	}

	public MeetDTO MakeScorePage(String meet_num,String mem_id) {
		
		return meetDao.MakeScorePage(meet_num,mem_id);
	}

	//모임 후기 리스트 요청 작성자 : 최성재
	public HashMap<String, Object> meetReviewCall(int currPage, int pagePerCnt, int meet_num) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		//어디서 부터 보여줘야 하는가?
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);		
				
		 int totalCount = meetDao.meetReviewCallCount(meet_num); // 해당 테이블의 모든 글의 갯수
		//만들수 있는 총 페이지의 수(전체 갯수/보여줄 수)
		 int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("모임 후기 총 갯수 : {}",totalCount);
		 logger.info("모임 후기 만들 수 있는 총 페이지 : {}",range);
		 
		 //리스트호출
		 ArrayList<ReviewDTO> dto = new ArrayList<ReviewDTO>();
		 dto = meetDao.meetReviewCall(pagePerCnt, offset,meet_num);
		 map.put("pages",range);
		 map.put("list", dto);
		 
		return map;
	}

	
	//리뷰 작성 요청
	public ModelAndView meetReviewRegist(String meet_num, String mem_id, String rev_subject, String rev_content) {

		ModelAndView mav = new ModelAndView();
		//모임 등록 요청
		meetDao.meetReviewRegist(meet_num,mem_id,rev_subject,rev_content);	
		mav.setViewName("redirect:/meetDetail?meet_num="+meet_num);				
		return mav;
		
	}


	public int chkAppYN(String meet_num, String loginId) {
		return meetDao.chkAppYN(meet_num,loginId);
	}



	//2022-03-21 유현진 모임상세보기 모임 문의 글쓰기 
	public void meetCommentWrite(HashMap<String, String> params) {
		
		//params에서 파라미터 추출
		int meet_num= Integer.parseInt(params.get("meet_num"));
		String mem_id = params.get("mem_id");
		String cmt_content = params.get("cmt_content");
		
		//뽑은 파라미터를 dto에서 담음
		CommentDTO dto = new CommentDTO();
		dto.setMeet_num(meet_num);
		dto.setMem_id(mem_id);
		dto.setCmt_content(cmt_content);
		
		
		
		int row = meetDao.meetCommentWrite(dto);
		int cmt_num = dto.getCmt_num();
		logger.info("작성 결과 : {}, 작성된 번호 : {}",row,cmt_num);
		logger.info("meetCommentWrite 입력된 건수 : {}",row);
		
		//받아온 댓글번호 다시 업데이트
		meetDao.meetCommentWriteUpdate(cmt_num);
		
	}

	//페이징
	public HashMap<String, Object> meetCommentCall(int currPage, int pagePerCnt, int meet_num) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		//어디서 부터 보여줘야 하는가?
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);		
				
		 int totalCount = meetDao.meetCommentCallCount(meet_num); // 해당 테이블의 모든 글의 갯수
		//만들수 있는 총 페이지의 수(전체 갯수/보여줄 수)
		 int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("모임 후기 총 갯수 : {}",totalCount);
		 logger.info("모임 후기 만들 수 있는 총 페이지 : {}",range);
		 
		 //리스트호출
		 ArrayList<CommentDTO> dto = new ArrayList<CommentDTO>();
		 dto = meetDao.meetCommentCall(pagePerCnt, offset,meet_num);
		 map.put("pages",range);
		 map.put("list", dto);
		 
		return map;
	}


	public void reCommentWrite(HashMap<String, String> params) {
		int result= meetDao.reCommentWrite(params);
		logger.info("대댓글 서비스 도착 작성 결과 : {}",result);
		
	}


	public void commentDelete(String meet_num, String cmt_num) {
		
		
		meetDao.commentDelete(meet_num,cmt_num);
		
		
	}
	
	
	





	public int chkReviewYN(String meet_num, String loginId) {
		return meetDao.chkReviewYN(meet_num,loginId);
	}


	public ModelAndView meetRevDel(int rev_num, int meet_num) {
		logger.info("모임 리뷰 삭제 요청 서비스 도착");
		meetDao.meetRevDel(rev_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/meetDetail?meet_num="+meet_num);
		return mav;
	}


	public int makeEvaluation(String targetId, String meet_num, String score, String mem_id) {
		
		return meetDao.makeEvaluation(targetId,meet_num,score,mem_id);
	}


	public HashMap<String, Object> adCount(int ad_meetArea) {
		logger.info("광고 수 확인 서비스 도착");
		HashMap<String, Object> map = new HashMap<String, Object>();
		int adCount = meetDao.adCount(ad_meetArea);
		map.put("adCount", adCount);
		return map;
	}


	public int chkMeetBmkCount(String mem_id, String meet_num) {
		return meetDao.chkMeetBmkCount(mem_id,meet_num);
	}


	public int chkAppCount(String meet_num, String mem_id) {
		return meetDao.chkAppCount(meet_num,mem_id);
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
