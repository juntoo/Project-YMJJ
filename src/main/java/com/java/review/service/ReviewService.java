package com.java.review.service;

import org.springframework.web.servlet.ModelAndView;

public interface ReviewService {
	public void reviewList(ModelAndView mav);

	public void reviewWrite(ModelAndView mav);

	public void reviewWriteOk(ModelAndView mav);

}
