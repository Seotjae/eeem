package gudi.pro.eeem.dto;



import java.util.Date;

import org.apache.ibatis.type.Alias;
//모임 + 신청자 + 평가
@Alias("appNmeet")
public class ApplicantAndMeetDTO {
	
	private int meet_num; //모임번호
	private String mem_id; //개설자id
	private String meet_subject; //모임제목
	private String meet_phone; //개설자 전화번호
	private String meet_content; //모임상세내용
	private int meet_interest; //모임분야
	private int meet_region; //모임지역
	private Date meet_gatherStart; //모집시작일
	private Date meet_gatherEnd;  //모집종료일
	private Date meet_start; //모임시작일
	private Date meet_end; //모임종료일
	private int meet_totalPrs; //모집인원
	private int meet_point; //모임비
	private String meet_thum; //썸네일사진명
	private int meet_adState; //광고여부
	private int meet_state; //모임상태 모집대기(default):0 모집중:1 폐쇄:2 모임중:3 모임완료:4
	private Date meet_date; //등록날자
	private String mem_name;
	private String mem_phone;
	private int app_num;
	private int app_state;
	private int app_confirm;
	private int app_prs;
	private int app_chkprs;
	private int grd_chk;
	private int ad_state;
	private int ad_meetArea;
	
	
	
	
	public int getAd_state() {
		return ad_state;
	}
	public void setAd_state(int ad_state) {
		this.ad_state = ad_state;
	}
	public int getAd_meetArea() {
		return ad_meetArea;
	}
	public void setAd_meetArea(int ad_meetArea) {
		this.ad_meetArea = ad_meetArea;
	}
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
	public String getMeet_subject() {
		return meet_subject;
	}
	public void setMeet_subject(String meet_subject) {
		this.meet_subject = meet_subject;
	}
	public String getMeet_phone() {
		return meet_phone;
	}
	public void setMeet_phone(String meet_phone) {
		this.meet_phone = meet_phone;
	}
	public String getMeet_content() {
		return meet_content;
	}
	public void setMeet_content(String meet_content) {
		this.meet_content = meet_content;
	}
	public int getMeet_interest() {
		return meet_interest;
	}
	public void setMeet_interest(int meet_interest) {
		this.meet_interest = meet_interest;
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
	public int getMeet_point() {
		return meet_point;
	}
	public void setMeet_point(int meet_point) {
		this.meet_point = meet_point;
	}
	public String getMeet_thum() {
		return meet_thum;
	}
	public void setMeet_thum(String meet_thum) {
		this.meet_thum = meet_thum;
	}
	public int getMeet_adState() {
		return meet_adState;
	}
	public void setMeet_adState(int meet_adState) {
		this.meet_adState = meet_adState;
	}
	public int getMeet_state() {
		return meet_state;
	}
	public void setMeet_state(int meet_state) {
		this.meet_state = meet_state;
	}
	public Date getMeet_date() {
		return meet_date;
	}
	public void setMeet_date(Date meet_date) {
		this.meet_date = meet_date;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public int getApp_num() {
		return app_num;
	}
	public void setApp_num(int app_num) {
		this.app_num = app_num;
	}
	public int getApp_state() {
		return app_state;
	}
	public void setApp_state(int app_state) {
		this.app_state = app_state;
	}
	public int getApp_confirm() {
		return app_confirm;
	}
	public void setApp_confirm(int app_confirm) {
		this.app_confirm = app_confirm;
	}
	public int getApp_prs() {
		return app_prs;
	}
	public void setApp_prs(int app_prs) {
		this.app_prs = app_prs;
	}
	public int getApp_chkprs() {
		return app_chkprs;
	}
	public void setApp_chkprs(int app_chkprs) {
		this.app_chkprs = app_chkprs;
	}
	public int getGrd_chk() {
		return grd_chk;
	}
	public void setGrd_chk(int grd_chk) {
		this.grd_chk = grd_chk;
	}
	public Date getMeet_gatherStart() {
		return meet_gatherStart;
	}
	public void setMeet_gatherStart(Date meet_gatherStart) {
		this.meet_gatherStart = meet_gatherStart;
	}
	public Date getMeet_gatherEnd() {
		return meet_gatherEnd;
	}
	public void setMeet_gatherEnd(Date meet_gatherEnd) {
		this.meet_gatherEnd = meet_gatherEnd;
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
	
	
	
	
	
	
	
}
