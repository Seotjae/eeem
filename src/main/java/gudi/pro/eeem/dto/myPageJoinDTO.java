package gudi.pro.eeem.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias ("myPageJoin")
//meet_subject, meet_region, meet_totalPrs, app_state, meet_thum, meet_start, meet_end, meet_state, app_stateOne
public class myPageJoinDTO {
	private String meet_subject; //meet_subject
	private int meet_region; //meet_region
	private int meet_totalPrs; //meet_totalPrs
	private int app_state; // app_state0
	private String meet_thum; //meet_thum
	private Date meet_start; //시작일0
	private Date meet_end; //종료일0
	private int meet_state;//모임상태0
	private int app_stateOne;//모임신청 상태0
	private int app_confirm;
	
	public String getMeet_subject() {
		return meet_subject;
	}
	public void setMeet_subject(String meet_subject) {
		this.meet_subject = meet_subject;
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
	public int getApp_state() {
		return app_state;
	}
	public void setApp_state(int app_state) {
		this.app_state = app_state;
	}
	public String getMeet_thum() {
		return meet_thum;
	}
	public void setMeet_thum(String meet_thum) {
		this.meet_thum = meet_thum;
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
	public int getApp_stateOne() {
		return app_stateOne;
	}
	public void setApp_stateOne(int app_stateOne) {
		this.app_stateOne = app_stateOne;
	}
	public int getApp_confirm() {
		return app_confirm;
	}
	public void setApp_confirm(int app_confirm) {
		this.app_confirm = app_confirm;
	}
	
	
	
}
