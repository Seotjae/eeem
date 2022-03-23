package gudi.pro.eeem.dto;

import org.apache.ibatis.type.Alias;

@Alias("notice")
public class NoticeDTO {

	private int nts_num; //알림번호
	private String mem_id; //알림받는 대상
	private int nts_targetNum; //대상번호(모임번호:1,대상없음:0)
	private String nts_content; //내용
	private int nts_confirm;//확인여부
	private String nts_date;//등록날짜
	
	public int getNts_num() {
		return nts_num;
	}
	public void setNts_num(int nts_num) {
		this.nts_num = nts_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getNts_targetNum() {
		return nts_targetNum;
	}
	public void setNts_targetNum(int nts_targetNum) {
		this.nts_targetNum = nts_targetNum;
	}
	public String getNts_content() {
		return nts_content;
	}
	public void setNts_content(String nts_content) {
		this.nts_content = nts_content;
	}
	public int getNts_confirm() {
		return nts_confirm;
	}
	public void setNts_confirm(int nts_confirm) {
		this.nts_confirm = nts_confirm;
	}
	public String getNts_date() {
		return nts_date;
	}
	public void setNts_date(String nts_date) {
		this.nts_date = nts_date;
	}
	
}
