package com.java.aboutjeju.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.aboutjeju.dto.AboutjejuDto;
import com.java.aboutjeju.service.AboutjejuService;

@Controller
public class AboutjejuController {
	@Autowired
	private AboutjejuService aboutjejuService;

	/*
	 * @RequestMapping(value="/aboutjeju/write.do", method = RequestMethod.GET)
	 * public ModelAndView write(HttpServletRequest request,HttpServletResponse
	 * response) { return new ModelAndView("aboutjeju/write"); }
	 */
	@RequestMapping(value="/aboutjeju/writeOk.do", method = RequestMethod.POST)
	public ModelAndView writeOk(HttpServletRequest request,HttpServletResponse response,AboutjejuDto aboutjejuDto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		mav.addObject("aboutjejuDto", aboutjejuDto);

		aboutjejuService.writeOK(mav);
		
		return mav;
	}
	@RequestMapping(value="/aboutjeju/introduction.do", method = RequestMethod.GET)
	public ModelAndView aboutjejuIntroduction(HttpServletRequest request,HttpServletResponse response,AboutjejuDto aboutjejuDto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		mav.addObject("response",response);
		mav.addObject("aboutjejuDto", aboutjejuDto);

		//aboutjejuService.Iread(mav);
		
		//return mav;
		return new ModelAndView("aboutjeju/introduction");
	}
	
	@RequestMapping(value="/aboutjeju/location.do", method = RequestMethod.GET)
	public ModelAndView aboutjejuLocation(HttpServletRequest request,HttpServletResponse response,AboutjejuDto aboutjejuDto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		mav.addObject("response",response);
		mav.addObject("aboutjejuDto", aboutjejuDto);

		//aboutjejuService.Lread(mav);
		
		//return mav;
		return new ModelAndView("aboutjeju/location");
	}
	
	@RequestMapping(value="/aboutjeju/speciality.do", method = RequestMethod.GET)
	public ModelAndView aboutjejuSpeciality(HttpServletRequest request,HttpServletResponse response,AboutjejuDto aboutjejuDto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		mav.addObject("response",response);
		mav.addObject("aboutjejuDto", aboutjejuDto);

		//aboutjejuService.Sread(mav);
		
		//return mav;
		return new ModelAndView("aboutjeju/speciality");
	}
	
	@RequestMapping(value="/aboutjeju/activities.do", method = RequestMethod.GET)
	public ModelAndView aboutjejuactivities(HttpServletRequest request,HttpServletResponse response,AboutjejuDto aboutjejuDto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		mav.addObject("response",response);
		mav.addObject("aboutjejuDto", aboutjejuDto);

		//aboutjejuService.Aread(mav);
		
		//return mav;
		return new ModelAndView("aboutjeju/activities");
	}
}
