package com.java.review.dao;

import java.util.List;

import com.java.img.dto.ImgDto;
import com.java.review.dto.ReviewDto;

public interface ReviewDao {
	
	public int getCount();
	
	public List<ReviewDto> reviewList(int startRow, int endRow);
	
	public int reviewWriteOk(ReviewDto reviewDto);
	
	public ReviewDto read(String RVnumber);
	
	public int reviewWriteNumber(ReviewDto reviewDto);
	
	public int passCheck(String password);
	
	public int reviewDeleteCheck(String RVnumber);
}
