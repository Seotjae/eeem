package gudi.pro.eeem.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("bmkNmeet")
public class BookmarkAndMeetDTO {
	
	private int meet_num; //즐겨찾기한 모임
	private String mem_id; //해당모임 개설자
	private String meet_thum; //모임 썸네일
	private String meet_subject; //모임 제목
	private Date meet_start; //모임시작
	private Date meet_end; //모임 종료
	private int meet_state; //모임상태
	private int meet_region; //모임 지역
	private int meet_totalPrs; //모임 총원
	private String bmk_loginId; //즐겨찾기한 아이디
	private int app_prs; //모임 승인된 인원
	
	public int getMeet_num() {
		return meet_num;
	}
	public void setMeet_num(int meet_num) {
		this.meet_num = meet_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMeet_thum() {
		return meet_thum;
	}
	public void setMeet_thum(String meet_thum) {
		this.meet_thum = meet_thum;
	}
	public String getMeet_subject() {
		return meet_subject;
	}
	public void setMeet_subject(String meet_subject) {
		this.meet_subject = meet_subject;
	}
	public Date getMeet_start() {
		return meet_start;
	}
	public void setMeet_start(Date meet_start) {
		this.meet_start = meet_start;
	}
	public Date getMeet_end() {
		return meet_end;
	}
	public void setMeet_end(Date meet_end) {
		this.meet_end = meet_end;
	}
	public int getMeet_state() {
		return meet_state;
	}
	public void setMeet_state(int meet_state) {
		this.meet_state = meet_state;
	}
	public int getMeet_region() {
		return meet_region;
	}
	public void setMeet_region(int meet_region) {
		this.meet_region = meet_region;
	}
	public int getMeet_totalPrs() {
		return meet_totalPrs;
	}
	public void setMeet_totalPrs(int meet_totalPrs) {
		this.meet_totalPrs = meet_totalPrs;
	}
	public String getBmk_loginId() {
		return bmk_loginId;
	}
	public void setBmk_loginId(String bmk_loginId) {
		this.bmk_loginId = bmk_loginId;
	}
	public int getApp_prs() {
		return app_prs;
	}
	public void setApp_prs(int app_prs) {
		this.app_prs = app_prs;
	}
	
	
	
	
	
	

}
