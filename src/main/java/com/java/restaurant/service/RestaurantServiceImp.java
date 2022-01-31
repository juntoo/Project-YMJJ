package com.java.restaurant.service;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.java.aop.LogAspect;
import com.java.img.dto.ImgDto;
import com.java.restaurant.dao.RestaurantDao;
import com.java.restaurant.dto.RestaurnatDto;

@Component
public class RestaurantServiceImp implements RestaurantService {
	
	private ImgDto imgDto;
	
	@Autowired
	private RestaurantDao restaurantDao;

	@Override
	public void restaurnatWrite(ModelAndView mav) {
							
		int Inumber = 0;
		String RTnumber="0"; // 글번호 : ROOT 항상 boardNumber 0, 답글인 경우 부모의 boardNumber							// 글레벨
		String Icategory = "0";
		
		Map<String, Object> map=mav.getModelMap();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		
		if(request.getParameter("RTnumber") !=null) {   
			RTnumber=(request.getParameter("RTnumber"));
		}
		
		if(request.getParameter("insert") !=null) {   
			Inumber=Integer.parseInt(request.getParameter("Inumber"));
			Icategory=request.getParameter("Icategory");
			
		}
		
		//Integer.parseInt
		mav.addObject("RTnumber", RTnumber);
		
		mav.addObject("Inumber", Inumber);
		mav.addObject("Icategory", Icategory);
		
		mav.setViewName("restaurant/Restaurant_Add");
	}
	
	@Override
	public void restaurnatWriteOk(ModelAndView mav) {
		
		Map<String, Object> map=mav.getModelMap();
		RestaurnatDto restaurnatDto=(RestaurnatDto) map.get("restaurnatDto");
		
		int check=restaurantDao.restaurantWriteOk(restaurnatDto);
		LogAspect.logger.info(LogAspect.LogMsg + check);
		mav.addObject("check", check);

		//Map<String, Object> map=mav.getModelMap();
		//writeNumber(restaurnatDto);
		ImgDto imgDto = (ImgDto) map.get("imgDto");
		MultipartHttpServletRequest request=(MultipartHttpServletRequest) map.get("request");
		
		MultipartFile upFile=request.getFile("file");
		LogAspect.logger.info(LogAspect.LogMsg + upFile);
		if(upFile.getSize() !=0) {
			String fileName=Long.toString(System.currentTimeMillis()) + "_" + upFile.getOriginalFilename();
			String Icategory = "0";
			long fileSize=upFile.getSize();
			LogAspect.logger.info(LogAspect.LogMsg + fileName + ","  + fileSize);
			
			File path=new File("C:\\pds\\");
			path.mkdir();
			
			if(path.exists() && path.isDirectory()) {
				File file=new File(path, fileName);
				
				//LogAspect.logger.info(LogAspect.LogMsg + imgDto.toString());
				try {
					upFile.transferTo(file);
					
					imgDto.setIpath(file.getAbsolutePath());
					imgDto.setIname(fileName);
					imgDto.setIsize(fileSize);
					imgDto.setIcategory(Icategory);
				}catch(Exception e) {
					e.printStackTrace();
				}
			}	
		}
		
		//LogAspect.logger.info(LogAspect.LogMsg + restaurnatDto.toString());
//		 DB
		
		LogAspect.logger.info(LogAspect.LogMsg + imgDto.toString());
		int check2=restaurantDao.imgWriteOk(imgDto);
		LogAspect.logger.info(LogAspect.LogMsg + check2);
		
		mav.addObject("check", check2);
	
		//imgWrite(mav);
		mav.setViewName("restaurant/writeOk");
	}
	
	
//	public void imgOk(ModelAndView mav) {
//		Map<String, Object> map=mav.getModelMap();
//		HttpServletRequest request=(HttpServletRequest) map.get("request");
//		
//		RestaurnatDto restaurnatDto=(RestaurnatDto) map.get("restaurnatDto");
//		String Icategory=restaurnatDto.getRTnumber();
//		
//		
//		if(request.getParameter("insert") !=null) {   
//			//Inumber=Integer.parseInt(request.getParameter("Inumber"));
//			Icategory=request.getParameter("Icategory");
//			
//		}
//		
//	}
	
	
}
