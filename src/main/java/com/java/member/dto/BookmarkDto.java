package com.java.member.dto;

public class BookmarkDto {
	private int Bnumber;
	private String Mid;
	private String RTnumber;
	public int getBnumber() {
		return Bnumber;
	}
	public void setBnumber(int bnumber) {
		Bnumber = bnumber;
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
	@Override
	public String toString() {
		return "BookmarkDto [Bnumber=" + Bnumber + ", Mid=" + Mid + ", RTnumber=" + RTnumber + "]";
	}
	
	
}
