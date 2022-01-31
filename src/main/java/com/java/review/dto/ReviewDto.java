package com.java.review.dto;

import java.util.Date;

public class ReviewDto {
	private String RVnumber;	//글번호
	private String Mid;		//회원아이디
	private String RTnumber;	//레스토랑 고유번호
	
	private String RVtitle;	//글제목
	private String RVcontent;	//글내용
	private int RVcount;	//조회수
	private Date RVdate;	//작성일
	public String getRVnumber() {
		return RVnumber;
	}
	public void setRVnumber(String rVnumber) {
		RVnumber = rVnumber;
	}
	public String getMid() {
		return Mid;
	}
	public void setMid(String mid) {
		Mid = mid;
	}
	public String getRTnumber() {
		return RTnumber;
	}
	public void setRTnumber(String rTnumber) {
		RTnumber = rTnumber;
	}
	public String getRVtitle() {
		return RVtitle;
	}
	public void setRVtitle(String rVtitle) {
		RVtitle = rVtitle;
	}
	public String getRVcontent() {
		return RVcontent;
	}
	public void setRVcontent(String rVcontent) {
		RVcontent = rVcontent;
	}
	public int getRVcount() {
		return RVcount;
	}
	public void setRVcount(int rVcount) {
		RVcount = rVcount;
	}
	public Date getRVdate() {
		return RVdate;
	}
	public void setRVdate(Date rVdate) {
		RVdate = rVdate;
	}
	
	@Override
	public String toString() {
		return "ReviewDto [RVnumber=" + RVnumber + ", Mid=" + Mid + ", RTnumber=" + RTnumber + ", RVtitle=" + RVtitle
				+ ", RVcontent=" + RVcontent + ", RVcount=" + RVcount + ", RVdate=" + RVdate + "]";
	}
}
