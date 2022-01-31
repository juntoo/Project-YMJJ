package com.java.review.service;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.taglibs.standard.extra.spath.AbsolutePath;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.java.aop.LogAspect;
import com.java.img.dto.ImgDto;
import com.java.restaurant.dto.RestaurnatDto;
import com.java.review.dao.ReviewDao;
import com.java.review.dto.ReviewDto;

@Component
public class ReviewServiceImp implements ReviewService {
	@Autowired
	private ReviewDao reviewDao;
	
	@Override
	public void reviewList(ModelAndView mav) {
		Map<String, Object> map=mav.getModel();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		
		String pageNumber=request.getParameter("pageNumber");
		if(pageNumber == null) pageNumber="1";
		
		int currentPage=Integer.parseInt(pageNumber);
		LogAspect.logger.info(LogAspect.LogMsg+"currentPage:"+currentPage);
		
		int boardSize=4;
		int startRow=(currentPage-1)*boardSize+1;
		int endRow=currentPage*boardSize;
		
		int count=reviewDao.getCount();
		LogAspect.logger.info(LogAspect.LogMsg+"count:"+count);
		
		List<ReviewDto> reviewList=null;
		if(count > 0) {
			reviewList=reviewDao.reviewList(startRow, endRow);
			LogAspect.logger.info(LogAspect.LogMsg+reviewList.size());	
		}
		
		mav.addObject("boardSize", boardSize);
		mav.addObject("currentPage",currentPage);
		mav.addObject("ReviewList", reviewList);
		mav.addObject("count", count);
		
		mav.setViewName("community/ReviewList");
	}
	
//	@Override
//	public void reviewWrite(ModelAndView mav) {
//		Map<String, Object> map=mav.getModelMap();
//		HttpServletRequest request=(HttpServletRequest) map.get("request");
//		
//		mav.addObject("request", request);
//		
//		mav.setViewName("community/ReviewWrite");
//	}
	
	@Override
	public void reviewWrite(ModelAndView mav) {
		
		int Inumber=0;
		String RVnumber="0";
		String Icategory="0";
		
		Map<String, Object> map=mav.getModelMap();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		
		if(request.getParameter("RVnumber") !=null) {
			RVnumber=(request.getParameter("RVnumber"));
			
		}
		
		if(request.getParameter("insert") !=null) {
			Inumber=Integer.parseInt(request.getParameter("Inumber"));
			Icategory=request.getParameter("Icategory");
		}
		
		mav.addObject("RVnumber", RVnumber);
		
		mav.addObject("Inumber", Inumber);
		mav.addObject("Icategory", Icategory);
		
		mav.setViewName("community/ReviewWrite");
		
	}
	
	@Override
	public void reviewWriteOk(ModelAndView mav) {
		Map<String, Object> map=mav.getModelMap();
		ReviewDto reviewDto=(ReviewDto) map.get("reviewDto");
		
		int check=reviewDao.reviewWriteOk(reviewDto);
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
			
			File path=new File("F:\\pds\\");
			path.mkdir();
			LogAspect.logger.info(LogAspect.LogMsg + path);
			LogAspect.logger.info(LogAspect.LogMsg + fileName);
			
			if(path.exists() && path.isDirectory()) {
				File file=new File(path, fileName);
				
				LogAspect.logger.info(LogAspect.LogMsg + imgDto.toString());
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
		int check2=reviewDao.imgWriteOk(imgDto);
		LogAspect.logger.info(LogAspect.LogMsg + check2);
		
		mav.addObject("check", check2);
	
		//imgWrite(mav);
		mav.setViewName("community/ReviewWriteOk");
		
	}
	
//	@Override
//	public void reviewWriteOk(ModelAndView mav) {
//		Map<String, Object> map=mav.getModelMap();
//		ReviewDto reviewDto=(ReviewDto) map.get("reviewDto");
//		ImgDto imgDto=(ImgDto) map.get("imgDto");
//		LogAspect.logger.info(LogAspect.LogMsg+reviewDto.toString());
//		MultipartHttpServletRequest request=(MultipartHttpServletRequest) map.get("request");
//		
//		MultipartFile upFile=request.getFile("file");
//		LogAspect.logger.info(LogAspect.LogMsg+upFile.getName());
//		if(upFile.getSize() !=0) {
//			String Iname=upFile.getOriginalFilename();
//			long Isize=upFile.getSize();
//			LogAspect.logger.info(LogAspect.LogMsg+Iname+","+Isize);
//			
//			File path=new File("${root}/resources/img");
//			path.mkdir();
//			
//			if(path.exists() && path.isDirectory()) {
//				File file=new File(path, Iname);
//				
//				try {
//					upFile.transferTo(file);
//					
//					imgDto.setIname(Iname);
//					imgDto.setIsize(Isize);
//					imgDto.setIpath(file.getAbsolutePath());
//					
//				}catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//		}
//		
//		int check=reviewDao.reviewWriteOk(reviewDto, imgDto);
//		LogAspect.logger.info(LogAspect.LogMsg+reviewDto.toString()+","+imgDto.toString());
//		//int check=reviewDao.reviewWriteNumber(reviewDto, imgDto);
//		LogAspect.logger.info(LogAspect.LogMsg+check);
//		
//		mav.addObject("check",check);
//		mav.addObject("request",request);
//		mav.setViewName("community/ReviewWriteOk");
//		
//	}
	
	
	public void reviewWriterNumber(ReviewDto reviewDto) {
		String RVnumber=reviewDto.getRVnumber();
		
	}
}
