package gudi.pro.eeem.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias(value="point")
public class PointDTO {
	private int pt_num;
	private String mem_id;
	private int pt_type;
	private int pt_targetNum;
	private int pt_count;
	private int pt_prev;
	private int pt_next;
	private Date pt_date;
	
	
	public int getPt_num() {
		return pt_num;
	}
	public void setPt_num(int pt_num) {
		this.pt_num = pt_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getPt_type() {
		return pt_type;
	}
	public void setPt_type(int pt_type) {
		this.pt_type = pt_type;
	}
	public int getPt_targetNum() {
		return pt_targetNum;
	}
	public void setPt_targetNum(int pt_targetNum) {
		this.pt_targetNum = pt_targetNum;
	}
	public int getPt_count() {
		return pt_count;
	}
	public void setPt_count(int pt_count) {
		this.pt_count = pt_count;
	}
	public int getPt_prev() {
		return pt_prev;
	}
	public void setPt_prev(int pt_prev) {
		this.pt_prev = pt_prev;
	}
	public int getPt_next() {
		return pt_next;
	}
	public void setPt_next(int pt_next) {
		this.pt_next = pt_next;
	}
	public Date getPt_date() {
		return pt_date;
	}
	public void setPt_date(Date pt_date) {
		this.pt_date = pt_date;
	}
	

	
	
}
