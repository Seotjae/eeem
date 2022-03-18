package gudi.pro.eeem.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("myMeetApp")
public class MymeetAndApplicant {
	//모임 신청자 목록 불러오는 DTO
	private int app_num;
	private String app_id;
	private String app_name;
	private String app_phone;
	private Date app_birth;
	private String grd_avg;
	private int app_state;
	
	public int getApp_num() {
		return app_num;
	}
	public void setApp_num(int app_num) {
		this.app_num = app_num;
	}
	public String getApp_id() {
		return app_id;
	}
	public void setApp_id(String app_id) {
		this.app_id = app_id;
	}
	public String getApp_name() {
		return app_name;
	}
	public void setApp_name(String app_name) {
		this.app_name = app_name;
	}
	public String getApp_phone() {
		return app_phone;
	}
	public void setApp_phone(String app_phone) {
		this.app_phone = app_phone;
	}
	public Date getApp_birth() {
		return app_birth;
	}
	public void setApp_birth(Date app_birth) {
		this.app_birth = app_birth;
	}
	public int getApp_state() {
		return app_state;
	}
	public void setApp_state(int app_state) {
		this.app_state = app_state;
	}
	public String getGrd_avg() {
		return grd_avg;
	}
	public void setGrd_avg(String grd_avg) {
		this.grd_avg = grd_avg;
	}
	
	
	
	
	
}
