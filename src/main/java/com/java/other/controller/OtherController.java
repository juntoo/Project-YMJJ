package com.java.other.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.member.service.MemberService;
import com.java.other.service.OtherService;
@Controller
public class OtherController {
	@Autowired
	private OtherService otherService;
	
	@RequestMapping(value = "/other/map.do", method = RequestMethod.GET)
	public ModelAndView OtherMap(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("roadFullAddr", "경기도 시흥시 경기과기대로 269");
		
		otherService.getKakaoApiFromAddress(mav);
		return mav;
	}
	@RequestMapping(value = "/other/menu.do", method = RequestMethod.GET)
	public ModelAndView OtherMenu(HttpServletRequest request, HttpServletResponse response) {	
		return new ModelAndView("other/menu");
	}
	
}
