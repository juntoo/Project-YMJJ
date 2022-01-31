package com.java.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.img.dto.ImgDto;
import com.java.review.dto.ReviewDto;
import com.java.review.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/community/ReviewList.do", method = RequestMethod.GET)
	public ModelAndView reviewList(HttpServletRequest request,HttpServletResponse response) {
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("request",request);
		
		reviewService.reviewList(mav);
		
		return mav;
	}
	
	@RequestMapping(value="/community/ReviewRead.do", method = RequestMethod.GET)
	public ModelAndView reviewRead(HttpServletRequest request,HttpServletResponse response) {
		return new ModelAndView("community/ReviewRead");
	}
	
	@RequestMapping(value="/community/ReviewUpdate.do", method = RequestMethod.GET)
	public ModelAndView reviewUpdate(HttpServletRequest request,HttpServletResponse response) {
		return new ModelAndView("community/ReviewUpdate");
	}
	
	@RequestMapping(value="/community/ReviewWrite.do", method = RequestMethod.GET)
	public ModelAndView reviewWrite(HttpServletRequest request,HttpServletResponse response) {
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("request",request);
		
		reviewService.reviewWrite(mav);
		
		return mav;
	}
	
	@RequestMapping(value="/community/ReviewWriteOk.do", method = RequestMethod.POST)
	public ModelAndView reviewWriteOk(HttpServletRequest request,HttpServletResponse response, ReviewDto reviewDto, ImgDto imgDto) {
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("request",request);
		mav.addObject("reviewDto",reviewDto);
		mav.addObject("imgDto", imgDto);
		
		reviewService.reviewWriteOk(mav);
		
		return mav;
	}
	
	//@RequestMapping(value="/community/ReviewImgCheckOk.do", method = RequestMethod.POST)
	
}
