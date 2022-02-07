package com.java.restaurant.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.comments.dto.CommentsDto;
import com.java.img.dto.ImgDto;
import com.java.member.dto.MemberDto;
import com.java.restaurant.dto.RestaurnatDto;
import com.java.restaurant.service.RestaurantService;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService restaurantService;

	
	@RequestMapping(value="/restaurant/main.do", method = RequestMethod.GET)
	public ModelAndView restaurantMain(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mav=new ModelAndView();
        mav.addObject("request", request);
        
        restaurantService.restaurantList(mav);
        return mav;
	}
	
	@RequestMapping(value="/restaurant/write.do", method = RequestMethod.GET)
	public ModelAndView restaurantWrite(HttpServletRequest request,HttpServletResponse response) {
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("request", request);
		
		restaurantService.restaurnatWrite(mav);
		return mav;
		
	}
	
	@RequestMapping(value="/restaurant/writeOk.do", method=RequestMethod.POST)
	public ModelAndView restaurantboardWriteOk(HttpServletRequest request, HttpServletResponse response, RestaurnatDto restaurnatDto) {
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("request", request);
		mav.addObject("restaurnatDto", restaurnatDto);
		
		restaurantService.restaurnatWriteOk(mav);
		return mav;
	}
	
	@RequestMapping(value="/restaurant/update.do", method = RequestMethod.GET)
	public ModelAndView restaurantUdate(HttpServletRequest request,HttpServletResponse response) {
		return new ModelAndView("restaurant/Restaurant_Update.tiles");
	}
	
	@RequestMapping(value="/restaurant/introduction.do", method = RequestMethod.GET)
	public ModelAndView restaurantIntroduction(HttpServletRequest request,HttpServletResponse response, CommentsDto commentsDto) {
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("request", request);
		
		//String RTnumber = commentsDto.getRTnumber();
		
		restaurantService.restaurantRead(mav);
		//restaurantService.commentsViewList(mav, RTnumber);
		//commentsService.commentsWrite(mav);
		
		return mav;

		//return new ModelAndView("restaurant/Restaurant_Introduction");
		
	}
	
	@RequestMapping(value="/comments/writeOk.do", method=RequestMethod.POST)
	public ModelAndView commentsboardWriteOk(HttpServletRequest request, HttpServletResponse response, CommentsDto commentsDto) {
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("request", request);
		mav.addObject("commentsDto", commentsDto);
		//mav.addObject("restaurnatDto", restaurnatDto);
		
		System.out.println(commentsDto.toString());
		
		//commentsService.commentsWriteOk(mav);
		restaurantService.commentsWriteOk(mav);
		return mav;
		
	}
	
	
	@RequestMapping(value="/restaurant/Restaurant_Update.do", method = RequestMethod.GET)
	public ModelAndView restaurantUpdate(HttpServletRequest request,HttpServletResponse response) {
		return new ModelAndView("restaurant/Restaurant_Update.tiles");
	}
	
	@RequestMapping(value = "/restaurant/RestaurantupdateOk.do", method = RequestMethod.POST)
	public ModelAndView boardUpdateOk(HttpServletRequest request, HttpServletResponse response, RestaurnatDto restaurnatDto) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("request", request);
		mav.addObject("restaurnatDto", restaurnatDto);
		
		restaurantService.restaurantUpdateOk(mav);
		return mav;
	}
	
	@RequestMapping(value = "/restaurant/Restaurantdelete.do", method = RequestMethod.GET)
	public ModelAndView boardDelete(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("request", request);
		restaurantService.restaurantDelete(mav);
		return mav;
	}
	
	@RequestMapping(value = "/restaurant/RestaurantdeleteOk.do", method = RequestMethod.GET)
	public ModelAndView boardDeleteOk(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("request", request);
		restaurantService.restaurantDeleteOk(mav);
		return mav;
	}
	

}
