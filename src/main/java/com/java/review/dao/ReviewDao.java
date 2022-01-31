package com.java.review.dao;

import java.util.List;

import com.java.img.dto.ImgDto;
import com.java.review.dto.ReviewDto;

public interface ReviewDao {
	
	public int getCount();
	
	public List<ReviewDto> reviewList(int startRow, int endRow);
	
	public int reviewWriteOk(ReviewDto reviewDto);
	
	public int imgWriteOk(ImgDto imgDto);
	
	public int reviewWriteNumber(ReviewDto reviewDto, ImgDto imgDto);
}
