package com.java.restaurant.service;

import org.springframework.web.servlet.ModelAndView;

public interface RestaurantService {
	
	public void restaurnatWrite(ModelAndView mav);
	
	public void restaurnatWriteOk(ModelAndView mav);
	
	public void restaurantList(ModelAndView mav);
	
	//public void ImgWrite(ModelAndView mav);

}
