package com.java.review.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.aop.LogAspect;
import com.java.img.dto.ImgDto;
import com.java.review.dto.ReviewDto;

@Component
public class ReviewDaoImp implements ReviewDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<ReviewDto> reviewList(int startRow, int endRow) {
		HashMap<String, Integer> hMap=new HashMap<String, Integer>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);

		return sqlSessionTemplate.selectList("reviewList", hMap);
	}
	
	@Override
	public int getCount() {
		return sqlSessionTemplate.selectOne("reviewCount");
	}
	
	@Override
	public int reviewWriteOk(ReviewDto reviewDto) {
		
		return sqlSessionTemplate.insert("reviewInsert", reviewDto);
	}
	
	@Override
	public ReviewDto read(String RVnumber) {
		ReviewDto reviewDto=null;
		
		int check=sqlSessionTemplate.update("reviewReadCount", RVnumber);
		LogAspect.logger.info(LogAspect.LogMsg+check);
		
		reviewDto=sqlSessionTemplate.selectOne("reviewRead",RVnumber);
		
		return reviewDto;
	}
	
	@Override
	public int reviewWriteNumber(ReviewDto reviewDto) {
		int check=sqlSessionTemplate.insert("reviewInsert", reviewDto);
		
		return check;
	}
	
	@Override
	public int passCheck(String password) {
		int check=sqlSessionTemplate.selectOne("passCheck", password);
		
		return check;
	}
	
	@Override
	public int reviewDeleteCheck(String RVnumber) {
		int check=sqlSessionTemplate.delete("reviewDelete", RVnumber);
		
		return check;
	}
}
